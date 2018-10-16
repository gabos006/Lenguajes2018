module TypeChecker where

import AbsPascal
import PrintPascal
import ErrM
import Data.Maybe
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad

-- ESTRUCTURAS DE DATOS
type Env = (Context,Signatures)

type Context = Map Ident Type

type Signatures = Map Ident ValSig
type ValSig =  ([(Bool,Type)],Maybe Type)


-- MAIN
typeCheck :: Program -> Err ()
typeCheck program = checkProgram program

-- CHECK Program
checkProgram :: Program -> Err ()
checkProgram (PBlock name varPart procFuns stms) = do {
                                                        context <- buildContext varPart Map.empty;
                                                        signatures <- buildSignatures context Map.empty procFuns;
                                                        checkStms ((context,signatures)) stms
                                                      }

buildSignatures :: Context -> Signatures -> [Def] -> Err (Signatures)
buildSignatures context signatures (d:ds) = do {
                                     resultSignatures <- chkAddSignature context signatures d;
                                     buildSignatures context resultSignatures ds
                                   }


-- SE DEBE HACER DOS RECORRIDAS SUPUESTAMENTE, EN LA PRIMERA SE CARGA EL CONTEXT Y EL SIGNATURES Y
-- LUEGO CON EL ENV RESULTADO DE LA PRIMERA RECORRIDA SE COMIENZA A HACER LAS STMS


chkAddSignature :: Context -> Signatures -> Def -> Err (Signatures)
chkAddSignature context signatures (DProc name parms varPart stms) = return (Map.empty)
chkAddSignature context signatures (DFun name parms funType varPart stms) = return (Map.empty)


--checkParms :: Signatures -> Ident -> [Param] -> Err (Signatures)
--checkParms sigs name [] = return sigs;
--checkParms sigs name (p:ps) = case elem p ps of
--                    {
--                      True -> fail "La variable " ++ show(p) ++ "se redefine en " ++ show(name);
--                      False -> return checkParms (addSignature sigs p) name ps;
--                    }

--addSignature :: Signatures -> Param -> Signatures
--addSignature sigs (ParamSingle [Ident] t) =
--addSignature sigs (ParamRef [Ident] t) =


buildContext :: VarPart -> Context -> Err (Context)
buildContext VPartEmpty context = return (Map.empty)
buildContext (VPart []) context = return (Map.empty)
buildContext (VPart (i:is)) context = do {
                                          resultContext <- chkAddContext i context;
                                          buildContext (VPart is) resultContext;
                                        }

chkAddContext :: VarDecl -> Context -> Err (Context)
chkAddContext (VDecl [] t) context = return context
chkAddContext (VDecl (i:is) t) context = case Map.lookup i context of
                                              (Just a) -> fail ("Variable " ++ show(i) ++ " ya existente");
                                               Nothing -> do {
                                                               chkAddContext (VDecl is t) (Map.insert i t context);
                                                             }

checkStms :: Env -> [Stm] -> Err ()
checkStms env stms = return ()

--checkStament :: Env -> Stm -> Err ()
--checkExp :: Env -> Exp -> Type -> Err ()
--inferExp :: Env -> Exp -> Err (Type)
