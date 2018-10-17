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
type ValSig =  ([SignParameter],Maybe Type)
type SignParameter = (Ident,Type)


-- MAIN
typeCheck :: Program -> Err ()
typeCheck program = checkProgram program


-- SE DEBE HACER DOS RECORRIDAS SUPUESTAMENTE, EN LA PRIMERA SE CARGA EL CONTEXT Y EL SIGNATURES Y
-- LUEGO CON EL ENV RESULTADO DE LA PRIMERA RECORRIDA SE COMIENZA A HACER LAS STMS


-- CHECK Program
checkProgram :: Program -> Err ()
checkProgram (PBlock name varPart procFuns stms) = do {
                                                        env <- buildEnv varPart procFuns;
                                                        chekBodyAndFunctions procFuns stms env
                                                      }

buildEnv :: VarPart -> [Def] -> Err ((Context,Signatures))
buildEnv varPart procFuns = do {
                                 resultContext <- buildContext varPart Map.empty;
                                 resultSignatures <- buildSignatures procFuns Map.empty;
                                 return (resultContext,resultSignatures)
                               }

buildSignatures :: [Def] -> Signatures -> Err (Signatures)
buildSignatures (d:ds) signatures = do {
                                         resultSignatures <- buildSignature signatures d;
                                         buildSignatures  ds resultSignatures
                                       }

buildSignature :: Signatures -> Def -> Err (Signatures)
buildSignature signatures (DProc name parms varPart stms) = return (Map.empty)
buildSignature signatures (DFun name parms funType varPart stms) = return (Map.empty)


checkListParams :: [SignParameter] -> Ident -> [Param] -> Err ([SignParameter])
checkListParams sigParams name [] = return (sigParams);
checkListParams sigParams name (p:ps) = do {
                                             resultSigParms <- checkParams p sigParams name;
                                             checkListParams  resultSigParms name ps 
                                           }

checkParams :: Param -> [SignParameter] -> Ident -> Err ([SignParameter])
checkParams (ParamSingle [] t) sigParams name = return (sigParams)
checkParams (ParamSingle (i:is) t) sigParams name = case lookup i sigParams of {
                                                      (Just a) -> fail ("Variable " ++ show(i) ++ " ya se encuentra delacarada en la firma de " ++ show(name));
                                                       Nothing -> return ((i,t):sigParams) -- SE AGREGAR A LA LISTA sigParams 
                                                    }
checkParams (ParamRef [] t) sigParams name = return (sigParams)
checkParams (ParamRef (i:is) t) sigParams name = case lookup i sigParams of {
                                                      (Just a) -> fail ("Variable " ++ show(i) ++ " ya se encuentra delacarada en la firma de " ++ show(name));
                                                       Nothing -> return ((i,t):sigParams) -- SE AGREGAR A LA LISTA sigParams 
                                                    }


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


chekBodyAndFunctions :: [Def] -> [Stm] -> Env -> Err ()
chekBodyAndFunctions procFuns stms env = return () -- ACA SE DEBERIA TENER QUE EMPEZAR A LLAMAR AL checkStms

checkStms :: Env -> [Stm] -> Err ()
checkStms env stms = return ()

--checkStament :: Env -> Stm -> Err ()
--checkExp :: Env -> Exp -> Type -> Err ()
--inferExp :: Env -> Exp -> Err (Type)
