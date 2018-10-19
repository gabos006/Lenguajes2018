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
type SignParameter = (Ident,(Bool,Type))


-- MAIN
typeCheck :: Program -> Err ()
typeCheck program = checkProgram program

-- CHECK Program
checkProgram :: Program -> Err ()
checkProgram (PBlock name varPart procFuns stms) = do {
                                                        env <- buildEnv varPart procFuns;
                                                        chekBodyAndFunctions procFuns stms env
                                                      }

-- Realiza la carga del Env primero cargando el context y luego las signatures
buildEnv :: VarPart -> [Def] -> Err ((Context,Signatures))
buildEnv varPart procFuns = do {
                                 resultContext <- buildContext varPart Map.empty;
                                 resultSignatures <- buildSignatures procFuns Map.empty;
                                 return (resultContext,resultSignatures)
                               }

-- Realiza la carga de las signatures y es llamada en forma recursiva.
-- Por cada Function o Procedure carga su firma
buildSignatures :: [Def] -> Signatures -> Err (Signatures)
buildSignatures [] signatures = return (signatures)
buildSignatures (d:ds) signatures = do {
                                         resultSignatures <- buildSignature signatures d;
                                         buildSignatures ds resultSignatures
                                       }

-- Realiza la carga de una signature individual
-- Se distingue sobre si es Function o Procedure
buildSignature :: Signatures -> Def -> Err (Signatures)
buildSignature signatures (DProc name parms varPart stms) = do {
                                                                 listSignParams <- checkListParams [] name parms;
                                                                 return (addSignatureProc signatures name listSignParams)
                                                               }
buildSignature signatures (DFun name parms funType varPart stms) = do {
                                                                        listSignParams <- checkListParams [] name parms;
                                                                        return (addSignatureFun signatures name funType listSignParams)
                                                                      }

-- Realiza la carga de los parametros de una signature
checkListParams :: [SignParameter] -> Ident -> [Param] -> Err ([SignParameter])
checkListParams sigParams name [] = return (sigParams);
checkListParams sigParams name (p:ps) = do {
                                             resultSigParms <- checkParams p sigParams name;
                                             checkListParams  resultSigParms name ps
                                           }

-- Se distingue segun el tipo de parametro si es por referencia o no
checkParams :: Param -> [SignParameter] -> Ident -> Err ([SignParameter])
checkParams (ParamSingle [] t) signParams name = return (signParams)
checkParams (ParamSingle (i:is) t) signParams name = addParamToListSignParameters (i:is) signParams name t
checkParams (ParamRef [] t) signParams name = return (signParams)
checkParams (ParamRef (i:is) t) signParams name = addParamToListSignParameters (i:is) signParams name t

-- Realiza la carga de un parametro en la lista de parametros de la signature
addParamToListSignParameters :: [Ident] -> [SignParameter] -> Ident -> Type -> Err ([SignParameter])
addParamToListSignParameters [] signParams name t = return (signParams)
addParamToListSignParameters (i:is) signParams name t = case lookup i signParams of {
                                                                (Just a) -> fail ("Variable " ++ show(i) ++ " ya se encuentra delacarada en la firma de " ++ show(name));
                                                                 Nothing -> addParamToListSignParameters is (((i,(False,t)):signParams)) name t
                                                            }

-- Realiza la carga de una signature Procedure en la tabla de signatures
addSignatureProc :: Signatures -> Ident -> [SignParameter] -> Signatures
addSignatureProc signatures name listSignParams = Map.insert name (listSignParams,Nothing) signatures

-- Realiza la carga de una signature Function en la tabla de signatures
addSignatureFun :: Signatures -> Ident -> Type -> [SignParameter] -> Signatures
addSignatureFun signatures name t listSignParams = Map.insert name (listSignParams,Just(t)) signatures

-- Realiza la carga del Contexto
buildContext :: VarPart -> Context -> Err (Context)
buildContext VPartEmpty context = return (Map.empty)
buildContext (VPart []) context = return (Map.empty)
buildContext (VPart (i:is)) context = do {
                                           resultContext <- chkAddContext i context;
                                           buildContext (VPart is) resultContext;
                                         }

-- Chequea si la variable ya no existe en el contexto, si no existe la agrega
chkAddContext :: VarDecl -> Context -> Err (Context)
chkAddContext (VDecl [] t) context = return context
chkAddContext (VDecl (i:is) t) context = case Map.lookup i context of
                                              (Just a) -> fail ("Variable " ++ show(i) ++ " ya definida en el contexto");
                                               Nothing -> do {
                                                               chkAddContext (VDecl is t) (Map.insert i t context);
                                                             }

-- Realiza el chequeo de las statement del body de las Function y/o Procedures y del body del program
chekBodyAndFunctions :: [Def] -> [Stm] -> Env -> Err ()
chekBodyAndFunctions procFuns stms env = checkStms env stms

-- Realiza el chequeo de una lista de statements
checkStms :: Env -> [Stm] -> Err ()
checkStms env [] = return ()
checkStms env (stm:stms) = do {
                                checkStatement env stm;
                                checkStms env stms
                              }

checkStatement :: Env -> Stm -> Err ()
checkStatement env (SAss id exp) = return ()
checkStatement env (SCall id []) = return ()
checkStatement env (SCall id (e:es)) = return ()
checkStatement (context,signatures) (SCallEmpty id) = return ()
checkStatement env (SRepeat stm exp) = return ()
checkStatement env (SWhile exp stm) = return ()
checkStatement env (SBlock []) = return ()
checkStatement env (SBlock (stm:stms)) = return ()
checkStatement env (SFor id exp1 exp2 stm) = return ()
checkStatement env (SIf exp stm1 stm2) = return ()
checkStatement env (SEmpty) = return ()


--checkExp :: Env -> Exp -> Type -> Err ()
--inferExp :: Env -> Exp -> Err (Type)
