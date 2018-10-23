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
                                         checkAddSignature signatures d;
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
                                                                (Just a) -> fail ("ERROR: Parámetro " ++ show(i) ++ " ya delacarado en la firma de " ++ show(name));
                                                                 Nothing -> addParamToListSignParameters is (((i,(False,t)):signParams)) name t
                                                            }

-- Chequea si un metodo ya fue declarado anteriormente
checkAddSignature :: Signatures -> Def -> Err ()
checkAddSignature signatures (DProc name parms varPart stms) = case Map.lookup name signatures of
                                                                   (Just a) -> fail ("ERROR: El procedimiento: " ++ show(name) ++ " ya fue declarado");
                                                                    Nothing -> return()
checkAddSignature signatures (DFun name parms funType varPart stms) = case Map.lookup name signatures of
                                                                          (Just a) -> fail ("ERROR: La función: " ++ show(name) ++ " ya fue declarada");
                                                                           Nothing -> return()

-- Realiza la carga de una signature Procedure en la tabla de signatures
addSignatureProc :: Signatures -> Ident -> [SignParameter] -> Signatures
addSignatureProc signatures name listSignParams = Map.insert name (listSignParams,Nothing) signatures

-- Realiza la carga de una signature Function en la tabla de signatures
addSignatureFun :: Signatures -> Ident -> Type -> [SignParameter] -> Signatures
addSignatureFun signatures name t listSignParams = Map.insert name (listSignParams,Just(t)) signatures

-- Realiza la carga del Contexto
buildContext :: VarPart -> Context -> Err (Context)
buildContext VPartEmpty context = return (context)
buildContext (VPart []) context = return (context)
buildContext (VPart (i:is)) context = do {
                                           resultContext <- chkAddContext i context;
                                           buildContext (VPart is) resultContext;
                                         }

-- Chequea si la variable ya no existe en el contexto, si no existe la agrega
chkAddContext :: VarDecl -> Context -> Err (Context)
chkAddContext (VDecl [] t) context = return (context)
chkAddContext (VDecl (i:is) t) context = case Map.lookup i context of
                                              (Just a) -> fail ("ERROR: Variable " ++ show(i) ++ " ya definida en el contexto");
                                               Nothing -> chkAddContext (VDecl is t) (Map.insert i t context);

-- Realiza el chequeo de las statement del body de las Function y/o Procedures y del body del program
chekBodyAndFunctions :: [Def] -> [Stm] -> Env -> Err ()
chekBodyAndFunctions procFuns stms env = do {
                                              checkStmsProcFunc env procFuns;
                                              checkStms env stms
                                            }
-- Chequea las statements de los procedimientos y funciones
checkStmsProcFunc :: Env -> [Def] -> Err()
checkStmsProcFunc env [] = return ()
checkStmsProcFunc env (d:ds) = do {
                                    checkStatementsProcFun env d;
									                  checkStmsProcFunc env ds
                                  }

-- Chequea las statements de un procedimiento o funcion
-- PARA AMBOS CASOS SE TIENE QUE GENERAR UN CONTEXT AUXILIAR EN EL CUAL SE DEBEN CARGAR LAS VARIABLES QUE ESTEN EN VAR DEL METODO
-- LUEGO JUNTO CON EL CONTEXT GENERAL, EL CONTEXT AUXILIAR Y LA LISTA DE PARAMETROS ARMAR UN NUEVO CONTEXT CON TODO PARA CHEQUEAR LAS STMS
-- LA DUDA VIENE DADA SOBRE QUE PASA CUANDO ME DEFINEN UNA VARIABLE LOCAL AL METODO QUE YA ES UNA VARIABLE GLOBAL
-- PORQUE SI ARMO UN NUEVO CONTEXT CON TODO, ME QUEDARÍAN DOS VARIABLES CON EL MISMO IDENT Y DISTINTO TIPO, ENTONCES AL HACER EL LOOKUP PUEDE QUE ME TRAIGA EL TIPO DE LA QUE NO ES
checkStatementsProcFun :: Env -> Def -> Err ()
checkStatementsProcFun env (DProc name parms varPart stms) = return ()
checkStatementsProcFun env (DFun name parms funType varPart stms) = return ()

-- Realiza el chequeo de una lista de statements
checkStms :: Env -> [Stm] -> Err ()
checkStms env [] = return ()
checkStms env (stm:stms) = do {
                                checkStatement env stm;
                                checkStms env stms
                              }

-- Realiza el chequeo de tipos de una statement
checkStatement :: Env -> Stm -> Err ()
checkStatement env (SAss id exp) = do {
                                        t <- searchIdentInContext env id;
                                        checkExp env exp t
                                      }
checkStatement env (SRepeat stm exp) = do {
                                            checkExp env exp Type_bool;
                                            checkStatement env stm
                                          }
checkStatement env (SWhile exp stm) = do {
                                           checkExp env exp Type_bool;
                                           checkStatement env stm
                                         }
checkStatement env (SBlock []) = return ()
checkStatement env (SBlock stms) = checkStms env stms
checkStatement env (SFor id exp1 exp2 stm) = do {
                                                   t <- searchIdentInContext env id;
                                                   checkExp env exp1 Type_integer;
                                                   checkExp env exp2 Type_integer;
                                                   checkStatement env stm
                                                }
checkStatement env (SIf exp stm1 stm2) = do {
                                              t <- inferExp env exp;
                                              checkExp env exp Type_bool;
											                        checkStatement env stm1;
											                        checkStatement env stm2
                                            }
checkStatement env (SEmpty) = return ()

--TODO
checkStatement env (SCall id []) = return ()
checkStatement env (SCall id (e:es)) = return ()
checkStatement env (SCallEmpty id) = return ()

-- Chequea el tipo de una variable en el context si existe
searchIdentInContext :: Env -> Ident -> Err (Type)
searchIdentInContext (context,signatures) id = case Map.lookup id context of
                                                  (Just t) -> return (t);
                                                   Nothing -> fail ("ERROR: Variable " ++ show(id) ++ " no definida en el contexto")

-- Chequea una expresion contra un tipo
checkExp :: Env -> Exp -> Type -> Err ()
checkExp env exp t1 = do {
                           t2 <- inferExp env exp;
                           --checkTypesError
                           if (t1 < t2)  then
                             fail ("ERROR: El tipo de la expresión: " ++ show(exp) ++ " no coincide con el tipo: " ++ show(t1));
                           else
                             return ();
                         }

checkTypesError :: Type -> Type -> Err ()
checkTypesError Type_char Type_char = return ()
checkTypesError Type_char _ = fail ("ERROR: Se esperaba tipo: " ++ show(Type_char))
checkTypesError Type_bool Type_bool = return ()
checkTypesError Type_bool _ = fail ("ERROR: Se esperaba tipo: " ++ show(Type_bool))
checkTypesError Type_string Type_string = return ()
checkTypesError Type_string _ = fail ("ERROR: Se esperaba tipo: " ++ show(Type_string))



-- Obtiene el tipo de una expresion o un error
inferExp :: Env -> Exp -> Err (Type)
inferExp env (ETrue) = return (Type_bool)
inferExp env (EFalse) = return (Type_bool)
inferExp env (EChar c) = return (Type_char)
inferExp env (EReal r) = return (Type_real)
inferExp env (EInt i) = return (Type_integer)
inferExp env (EStr s) = return (Type_string)
inferExp env (EIdent id) = searchIdentInContext env id
inferExp env (EEq exp1 exp2) = do {
                                    t1 <- inferExp env exp1;
                                    t2 <- inferExp env exp2;
                                    if ((t1 == Type_integer) || (t1 == Type_real)) then
                                      if ((t2 == Type_integer) || (t2 == Type_real)) then
                                        return (Type_bool);
                                      else
                                        fail ("ERROR: Se esperaba tipo: " ++ show(Type_integer) ++ " o " ++ show(Type_real) ++ " en la expresión: " ++ show(exp2));
                                    else
                                      if ((t2 == Type_char) || (t2 == Type_bool) || (t2 == Type_string)) then
                                        return (Type_bool);
                                      else
                                        fail ("ERROR: Se esperaba tipo: " ++ show(Type_bool) ++ ", " ++ show(Type_char) ++ " o " ++ show(Type_string) ++ " en la expresión: " ++ show(exp2));
                                  }
inferExp env (EDiff exp1 exp2) = inferExp env (EEq exp1 exp2)
inferExp env (ELe exp1 exp2) = inferExp env (EEq exp1 exp2)
inferExp env (ELeq exp1 exp2) = inferExp env (EEq exp1 exp2)
inferExp env (EGeq exp1 exp2) = inferExp env (EEq exp1 exp2)
inferExp env (EGe exp1 exp2) = inferExp env (EEq exp1 exp2)
inferExp env (EPlus exp1 exp2) = do {
                                      t1 <- inferExp env exp1;
                                      t2 <- inferExp env exp2;
                                      if not((t1 == Type_integer) || (t1 == Type_real)) then
                                        fail ("ERROR: Se esperaba tipo: " ++ show(Type_integer) ++ " o " ++ show(Type_real)  ++ " en la expresión: " ++ show(exp1));
                                      else
                                        if not((t2 == Type_integer) || (t2 == Type_real)) then
                                          fail ("ERROR: Se esperaba tipo: " ++ show(Type_integer) ++ " o " ++ show(Type_real)  ++ " en la expresión: " ++ show(exp2));
                                        else
                                          if (t1 == Type_real) || (t2 == Type_real) then
                                            return (Type_real);
                                          else
                                            return (Type_integer);
                                    }
inferExp env (ESubst exp1 exp2) = inferExp env (EPlus exp1 exp2)
inferExp env (EMul exp1 exp2) = inferExp env (EPlus exp1 exp2)
inferExp env (EDiv exp1 exp2) = inferExp env (EPlus exp1 exp2)
inferExp env (EDiv2 exp1 exp2) = do {
                                      t1 <- inferExp env exp1;
                                      t2 <- inferExp env exp2;
                                      if not(t1 == Type_integer) then
                                        fail ("ERROR: Se esperaba tipo: " ++ show(Type_integer) ++ " en la expresión: " ++ show(exp1));
                                      else
                                        if not(t2 == Type_integer) then
                                          fail ("ERROR: Se esperaba tipo: " ++ show(Type_integer) ++  " en la expresión: " ++ show(exp2));
                                        else
                                          return (Type_integer);
                                    }
inferExp env (EMod exp1 exp2) = inferExp env (EDiv2 exp1 exp2)
inferExp env (EOr exp1 exp2) = do {
                                    t1 <- inferExp env exp1;
                                    t2 <- inferExp env exp2;
                                    if not(t1 == Type_bool) then
                                      fail ("ERROR: Se esperaba tipo: " ++ show(Type_bool) ++ " en la expresión: " ++ show(exp1));
                                    else
                                      if not(t2 == Type_bool) then
                                        fail ("ERROR: Se esperaba tipo: " ++ show(Type_bool) ++ " en la expresión: " ++ show(exp2));
                                      else
                                        return (Type_bool);
                                  }
inferExp env (EAnd exp1 exp2) = inferExp env (EOr exp1 exp2)
inferExp env (ENot exp) = do {
                               t <- inferExp env exp;
                               if not(t == Type_bool) then
                                 fail ("ERROR: Se esperaba tipo: " ++ show(Type_bool) ++ " en la expresión: " ++ show(exp));
                               else
                                 return (Type_bool);
                             }
inferExp env (ENegNum exp) = do {
                                  t <- inferExp env exp;
                                  if not((t == Type_real) || (t == Type_integer)) then
                                    fail ("ERROR: Se esperaba tipo: " ++ show(Type_real) ++ " o " ++ show(Type_integer));
                                  else
                                    return (Type_bool);
                                }
inferExp env (EPlusNum exp) = inferExp env (ENegNum exp)
inferExp (context,signatures) (ECallEmpty id) = getFunctionTypeSignature signatures id
--inferExp env (ECall id exps) =

-- Chequea si una firma pertenece al conjunto de firmas
checkIdentInSignatures :: Env -> Ident -> Err ()
checkIdentInSignatures (context,signatures) id = case Map.lookup id signatures of
                                                      (Just a) -> return ();
                                                       Nothing -> fail ("ERROR: Función o procedimiento no declarado")

getFunctionTypeSignature :: Signatures -> Ident -> Err (Type)
getFunctionTypeSignature sigs name = case Map.lookup name sigs of
                                          (Just (parms,maybet)) -> case maybet of
                                                                       (Just t) -> return (t);
                                                                        Nothing -> fail ("ERROR: Los procedimientos no tienen tipo de retorno")
                                           -- Nothing -> fail ("ERROR: La función " ++ show(name) ++ " no se encuentra definida")
