module Compiler where

import AbsPascal
import LexPascal
import ParPascal
import ErrM
import Data.List
import Data.Maybe
import Data.Map (Map)
import qualified Data.Map as Map
import System.FilePath.Posix
import Control.Monad
import Control.Monad.Trans.State.Lazy
--import Control.Monad.State

import TypeChecker

-- Environment
data Env = Env {
    code       :: [String]
  , varsMemPos :: Map Ident Int
  , funs       :: Map Ident FunType
  , nextMemPos :: Int
  , label      :: Int
  , maxStack   :: Int   -- para calcular el stack
  }

initialEnv :: Env
initialEnv = Env {
    code       = []
  , varsMemPos = Map.empty
  , funs       = Map.empty
  , nextMemPos = 1       -- posicion 0 es reservada para el argumento del main
  , label      = 0
  , maxStack   = 0
  }

newLabel :: State Env String
newLabel = do
  s <- get
  put $ s { label = label s + 1 }
  return $ "label" ++ show (label s)

emit :: String -> State Env ()
emit c = modify $ \ s -> s { code = c : code s } -- code es generado de forma reversa por eficiencia

extendBuiltinDefs :: State Env ()
extendBuiltinDefs = mapM_ ( \ (f,(argTys,rty)) -> extendFunEnv f $ funJVM f "Runtime" argTys rty) buildInFunctions

extendFunEnv :: Ident -> FunType -> State Env ()
extendFunEnv i ft = modify $ \ s -> s { funs = Map.insert i ft (funs s) }

lookupFun :: Ident -> State Env FunType
lookupFun f = gets (\ s -> fromJust $ Map.lookup f (funs s))

lookupVar :: Ident -> State Env String
lookupVar x = gets (\ s -> show $ fromJust $ Map.lookup x (varsMemPos s))

size :: Type -> Int
size Type_real = 2
size _         = 1

makeCtxVarM :: VarPart -> State Env String
makeCtxVarM VPartEmpty = gets (\ s -> show $ nextMemPos s)
makeCtxVarM (VPart ds) = do {
  mapM_ (\ (VDecl ids t) ->
            mapM (\ id -> modify $ \ s -> s { varsMemPos = Map.insert id (nextMemPos s) (varsMemPos s),
                                              nextMemPos = nextMemPos s + size t   })
            ids)
         ds;
  gets (\ s -> show $ nextMemPos s)
  }

compile :: Program -> [String]
compile p = reverse $ code $ execState (compileProg p) initialEnv

compileProg :: Program -> State Env ()
compileProg (PBlock (Ident name) varPart stms) = do
  emit $ ".class public " ++ name
  emit $ ".super java/lang/Object"
  emit $ ""
  emit $ ".method public static main([Ljava/lang/String;)V"
  extendBuiltinDefs
  varMem <- makeCtxVarM varPart
  emit $ ".limit locals " ++ varMem
  emit $ ".limit stack  1000"  -- aca se puede ser mas preciso
  mapM_ compileStm stms
  emit $ "return"
  emit $ ".end method"
  emit ""

compileStm :: Stm -> State Env ()
compileStm (SAss id (ETyped exp t)) = do {
                                            dirMem <- lookupVar id;
                                            compileExp (ETyped exp t);
                                            case t of {
                                               Type_real -> emit $ "dstore " ++ dirMem;
                                               Type_bool -> emit $ "istore " ++ dirMem;
                                               Type_string -> emit $ "astore " ++ dirMem;
                                               Type_integer -> emit $ "istore " ++ dirMem;
                                            }
                                          }
compileStm (SCall id lexp) = do {
                                  funT <- lookupFun id;
                                  compileListExp lexp;
                                  emit funT
                                }
compileStm (SCallEmpty id) = do {
                                  funT <- lookupFun id;
                                  emit funT
                                 }
compileStm (SRepeat stm exp) = error $ "ERROR SRepeat"
compileStm (SWhile exp stm) = do {
                                    lTest <- newLabel;
                                    lEnd <- newLabel;
                                    emit $ lTest ++ ":";
                                    compileExp exp;
                                    emit $ "ifeq " ++ lEnd;
                                    compileStm stm;
                                    emit $ "goto " ++ lTest;
                                    emit $ lEnd ++ ":"
                                  }
compileStm (SBlock lstm) = compileListStm lstm
compileStm (SFor id exp2 exp1 stm) = error $ "ERROR SFor"
compileStm (SIf exp stm1 stm2) = error $ "ERROR SIf"
compileStm (SEmpty) = return()

compileListStm :: [Stm] -> State Env ()
compileListStm [] = return();
compileListStm (s:xs) = do {
                             compileStm s;
                             compileListStm xs
                           }


data Cmp = CEq | CDiff | CLe | CLeq | CGeq | CGt

-- Ranta en la pagin 121 explica la compilacion de comparaciones
showCmpInt :: Cmp -> String
showCmpInt CEq     = "if_icmpeq "
showCmpInt CDiff   = "if_icmpne "
showCmpInt CLe     = "if_icmplt "
showCmpInt CLeq    = "if_icmple "
showCmpInt CGeq    = "if_icmpge "
showCmpInt CGt     = "if_icmpgt "

showCmpReal :: Cmp -> String
showCmpReal CEq     = "ifeq "
showCmpReal CDiff   = "ifne "
showCmpReal CLe     = "iflt "
showCmpReal CLeq    = "ifle "
showCmpReal CGeq    = "ifge "
showCmpReal CGt     = "ifgt "

data OpBin = Plus | Subst | Mul | Div | Div2 | Mod

showOpBinInt :: OpBin -> String
showOpBinInt Plus  = "iadd"
showOpBinInt Subst = "isub"
showOpBinInt Mul   = "imul"
showOpBinInt Div   = error "Caso imposible"
showOpBinInt Div2  = "idiv"
showOpBinInt Mod   = "imod"

showOpBinReal :: OpBin -> String
showOpBinReal Plus  = "dadd"
showOpBinReal Subst = "dsub"
showOpBinReal Mul   = "dmul"
showOpBinReal Div   = "ddiv"
showOpBinReal Div2  = error "Caso imposible"
showOpBinReal Mod   = error "Caso imposible"

data OpBinBool = And | Or
  deriving Eq

showOpBinBool :: OpBinBool -> String
showOpBinBool And = "ifne "
showOpBinBool Or  = "ifeq "

compileExp :: Exp -> State Env ()
compileExp (ETyped (EConv exp) t) = error $ "ERROR EConv"
compileExp (ETyped (EEq exp1 exp2) t) = error $ "ERROR EEq"
compileExp (ETyped (EDiff exp1 exp2) t) = error $ "ERROR EDiff"
compileExp (ETyped (ELe exp1 exp2) t) = error $ "ERROR ELe"
compileExp (ETyped (ELeq exp1 exp2) t) = error $ "ERROR ELeq"
compileExp (ETyped (EGeq exp1 exp2) t) = error $ "ERROR EGeq"
compileExp (ETyped (EGe exp1 exp2) t) = error $ "ERROR EGe"
compileExp (ETyped (EOr exp1 exp2) t) = error $ "ERROR EOr"
compileExp (ETyped (EAnd exp1 exp2) t) = error $ "ERROR EAnd"
compileExp (ETyped (EPlus exp1 exp2) t) = do {
                                               compileExp exp1;
                                               compileExp exp2;
                                               case t of {
                                                           Type_real -> emit(showOpBinReal Plus);
                                                           Type_integer -> emit(showOpBinInt Plus)
                                                         }
                                             }
compileExp (ETyped (ESubst exp1 exp2) t) = do {
                                               compileExp exp1;
                                               compileExp exp2;
                                               case t of {
                                                           Type_real -> emit(showOpBinReal Subst);
                                                           Type_integer -> emit(showOpBinInt Subst)
                                                         }
                                            }
compileExp (ETyped (EMul exp1 exp2) t) = do {
                                               compileExp exp1;
                                               compileExp exp2;
                                               case t of {
                                                           Type_real -> emit(showOpBinReal Mul);
                                                           Type_integer -> emit(showOpBinInt Mul)
                                                         }
                                            }
compileExp (ETyped (EDiv exp1 exp2) t) = do {
                                               compileExp exp1;
                                               compileExp exp2;
                                               case t of {
                                                           Type_real -> emit(showOpBinReal Div);
                                                           Type_integer -> emit(showOpBinInt Div)
                                                         }
                                            }
compileExp (ETyped (EMod exp1 exp2) t) = do {
                                               compileExp exp1;
                                               compileExp exp2;
                                               case t of {
                                                           Type_real -> emit(showOpBinReal Mod);
                                                           Type_integer -> emit(showOpBinInt Mod)
                                                         }
                                            }
compileExp (ETyped (EDiv2 exp1 exp2) t) = do {
                                               compileExp exp1;
                                               compileExp exp2;
                                               case t of {
                                                           Type_real -> emit(showOpBinReal Div2);
                                                           Type_integer -> emit(showOpBinInt Div2)
                                                         }
                                             }
compileExp (ETyped (ECall id lexp) t) = do {
                                             funT <- lookupFun id;
                                             compileListExp lexp;
                                             emit funT
                                           }
compileExp (ETyped (ECallEmpty id) t) = do {
                                             funT <- lookupFun id;
                                             emit funT
                                           }
compileExp (ETyped (ENot exp) t) = do {
                                        lFalse <- newLabel;
                                        lEnd <- newLabel;
                                        compileExp exp;
                                        emit $ "ifeq " ++ lFalse;
                                        emit $ "ldc 0";
                                        emit $ "goto " ++ lEnd;
                                        emit $ lFalse ++ ":";
                                        emit $ "ldc 1";
                                        emit $ lEnd ++ ":"
                                      }
compileExp (ETyped (ENegNum exp) t) = do {
                                           compileExp exp;
                                           case t of {
                                                       Type_real -> emit "dneg ";
                                                       Type_integer -> emit "ineg "
                                                     }
                                         }
compileExp (ETyped (EPlusNum exp) t) = do {
                                            compileExp exp;
                                          }
compileExp (ETyped (EIdent id) t) = do {
                                         dirMem <- lookupVar id;
                                         case t of {
                                            Type_real -> emit $ "dload " ++ dirMem;
                                            Type_bool -> emit $ "iload " ++ dirMem;
                                            Type_string -> emit $ "aload " ++ dirMem;
                                            Type_integer -> emit $ "iload " ++ dirMem;
                                          }
                                        }
compileExp (ETyped (EStr s) t) = emit("ldc " ++ show(s))
compileExp (ETyped (EInt i) t) = emit("ldc " ++ show(i))
compileExp (ETyped (EReal d) t) = emit("ldc2_w " ++ show(d))
compileExp (ETyped (EFalse) t) = emit("ldc 0")
compileExp (ETyped (ETrue) t) = emit("ldc 1")

compileListExp :: [Exp] -> State Env ()
compileListExp [] = return()
compileListExp (e:es) = do {
                             compileExp e;
                             compileListExp es
                           }

--compileExpCmp :: Exp -> Exp -> Cmp -> State Env ()
--compileExpCmp (ETyped e1 t1) e2 cmp =
--do {
--     compileExp (ETyped e1 t1);
--     compileExp e2;
--     if (t1 == Type_integer) then do
--
--     else do
--
--}
