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
compileStm (SAss id exp) = error $ "Caso de instruccion sin implementar = " ++ show stm
compileStm (SCall id lexp) = error $ "Caso de instruccion sin implementar = " ++ show stm
compileStm (SCallEmpty id) = error $ "Caso de instruccion sin implementar = " ++ show stm
compileStm (SRepeat stm exp) = error $ "Caso de instruccion sin implementar = " ++ show stm
compileStm (SWhile exp stm) = error $ "Caso de instruccion sin implementar = " ++ show stm
compileStm (SBlock lstm) = error $ "Caso de instruccion sin implementar = " ++ show stm
compileStm (SFor id exp2 exp1 stm) = error $ "Caso de instruccion sin implementar = " ++ show stm
compileStm (SIf exp stm1 stm2) = error $ "Caso de instruccion sin implementar = " ++ show stm
compileStm (SEmpty) = error $ "Caso de instruccion sin implementar = " ++ show stm


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
compileExp (ETyped exp t) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EConv exp) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EEq exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EDiff exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (ELe exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (ELeq exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EGeq exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EGe exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EPlus exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (ESubst exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EOr exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EMul exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EDiv exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EAnd exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EMod exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EDiv2 exp1 exp2) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (ECall id lexp) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (ECallEmpty id) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (ENot exp) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (ENegNum exp) = error $ "Caso de expresion sin implementar = " ++ show e
compileExp (EPlusNum exp) = do{
                                compileExp exp;
                                emit("iadd")
                              }
compileExp (EIdent id) = emit(show(id))
compileExp (EStr s) = emit("ldc " ++ )
compileExp (EInt i) = emit("ldc " ++ show(i))
compileExp (EReal d) = emit("ldc2 " ++ show(d))
compileExp (EFalse) = emit("ldc 0")
compileExp (ETrue) = emit("ldc 1")
