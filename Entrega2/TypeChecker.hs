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
checkParams (ParamSingle (i:is) t) signParams name = addParamToListSignParameters (i:is) signParams name t False
checkParams (ParamRef [] t) signParams name = return (signParams)
checkParams (ParamRef (i:is) t) signParams name = addParamToListSignParameters (i:is) signParams name t True

-- Realiza la carga de un parametro en la lista de parametros de la signature
addParamToListSignParameters :: [Ident] -> [SignParameter] -> Ident -> Type -> Bool -> Err ([SignParameter])
addParamToListSignParameters [] signParams name t ref = return (signParams)
addParamToListSignParameters (i:is) signParams name t ref = case lookup i signParams of {
                                                                (Just a) -> fail ("ERROR: Parámetro " ++ show(i) ++ " ya delacarado en la firma de " ++ show(name));
                                                                 Nothing -> addParamToListSignParameters is (((i,(ref,t)):signParams)) name t ref
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
                                              (Just a) -> fail ("ERROR: Variable " ++ show(i) ++ " ya definida");
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
                                    checkStatementProcFun env d;
									checkStmsProcFunc env ds
                                  }

-- Chequea las statements de un procedimiento o funcion
checkStatementProcFun :: Env -> Def -> Err ()
checkStatementProcFun env (DProc name parms varPart stms) = do {
                                                                 metContext <- getMethodContext env name varPart;
                                                                 checkStms (unionContexts env metContext) stms
                                                               }

checkStatementProcFun env (DFun name parms funType varPart stms) = do {
                                                                        metContext <- getMethodContext env name varPart;
                                                                        newContext <- chkAddIdentMethodInContext name funType metContext;
																		checkStms (unionContexts env newContext) stms
                                                                      }

-- Obtiene el context de un metodo particular
getMethodContext :: Env -> Ident -> VarPart -> Err (Context)
getMethodContext (context,signatures) name varPart = do {
                                                           -- obtengo el contexto auxiliar con las var del procedimiento
                                                           auxContext <- buildContext varPart Map.empty;
                                                           -- obtengo la lista de parametros con sus tipos
                                                           (parms,maybet) <- checkIdentInSignatures (context,signatures) name;
                                                           -- agrego los parametros al contexto auxiliar y devuelvo el nuevo contexto
                                                           addParmsIntoContext auxContext parms name
                                                        }

-- Agrega los parametros y sus tipos a un contexto, verificando si ya no pertenecen
addParmsIntoContext :: Context -> [SignParameter] -> Ident -> Err (Context)
addParmsIntoContext context [] name = return (context)
addParmsIntoContext context ((id,(ref,t)):ps) name = case Map.lookup id context of
                                                       (Just a) -> fail ("ERROR: Existen variables ya definidas como parametros en: " ++ show(name));
                                                        Nothing -> addParmsIntoContext (Map.insert id t context) ps name;

-- Chequea si el identificador de una funcion esta como parametro o variable de ella, sino lo agrega al contexto
chkAddIdentMethodInContext :: Ident -> Type -> Context -> Err (Context)
chkAddIdentMethodInContext name t context = case Map.lookup name context of
                                              (Just a) -> fail ("ERROR: El identificador de la función no puede ser variable o parametro en: " ++ show(name));
                                               Nothing -> return (Map.insert name t context)
 
-- Realiza la union de dos contextos
unionContexts :: Env -> Context -> Env
unionContexts (context,signatures) auxContext = ((Map.union auxContext context),signatures)


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
checkStatement env (SCall id []) = do {
                                        (parms,maybet) <- checkIdentInSignatures env id;
										chkSizes [] parms id;
                                      }
checkStatement env (SCall id exps) = do {
                                          (parms,maybet) <- checkIdentInSignatures env id;
                                          chkSizes exps parms id;
                                          chkArgumentsTypes env exps parms;
                                          chkRefArguments env exps parms;
                                          return ()
                                        }
checkStatement env (SCallEmpty id) = do {
                                          (parms,maybet) <- checkIdentInSignatures env id;
                                          return ()
										}

-- Chequea el tipo de una variable en el context si existe
searchIdentInContext :: Env -> Ident -> Err (Type)
searchIdentInContext (context,signatures) id = case Map.lookup id context of
                                                  (Just t) -> return (t);
                                                   Nothing -> fail ("ERROR: Variable " ++ show(id) ++ " no definida en el contexto")

-- Chequea una expresion contra un tipo
checkExp :: Env -> Exp -> Type -> Err ()
checkExp env exp t1 = do {
                           t2 <- inferExp env exp;
                           checkTypesError t1 t2
                         }

-- Chequea tipos de error
checkTypesError :: Type -> Type -> Err ()
checkTypesError Type_char Type_char = return ()
checkTypesError Type_char _ = fail ("ERROR: Se esperaba tipo: " ++ show(Type_char))
checkTypesError Type_bool Type_bool = return ()
checkTypesError Type_bool _ = fail ("ERROR: Se esperaba tipo: " ++ show(Type_bool))
checkTypesError Type_string Type_string = return ()
checkTypesError Type_string _ = fail ("ERROR: Se esperaba tipo: " ++ show(Type_string))
checkTypesError Type_integer Type_integer = return ()
checkTypesError Type_integer Type_real = return ()
checkTypesError Type_integer _ = fail ("ERROR: Se esperaba tipo: " ++ show(Type_integer) ++ " o " ++ show(Type_real))
checkTypesError Type_real Type_real = return ()
checkTypesError Type_real Type_integer = return ()
checkTypesError Type_real _ = fail ("ERROR: Se esperaba tipo: " ++ show(Type_real) ++ " o " ++ show(Type_integer))

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
                                    checkExp env exp2 t1;
                                    return (Type_bool)
                                  }
inferExp env (EDiff exp1 exp2) = inferExp env (EEq exp1 exp2)
inferExp env (ELe exp1 exp2) = inferExp env (EEq exp1 exp2)
inferExp env (ELeq exp1 exp2) = inferExp env (EEq exp1 exp2)
inferExp env (EGeq exp1 exp2) = inferExp env (EEq exp1 exp2)
inferExp env (EGe exp1 exp2) = inferExp env (EEq exp1 exp2)
inferExp env (EPlus exp1 exp2) = do {
                                      t1 <- inferExp env exp1;
                                      t2 <- inferExp env exp2;
                                      checkExp env exp2 t1;
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
                                      checkExp env exp2 t1;
                                      return (Type_integer)
                                    }
inferExp env (EMod exp1 exp2) = inferExp env (EDiv2 exp1 exp2)
inferExp env (EOr exp1 exp2) = do {
                                    t1 <- inferExp env exp1;
                                    checkExp env exp2 t1;
                                    return (Type_bool)
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
inferExp env (ECallEmpty id) = do {
                                    (parms,maybet) <- checkIdentInSignatures env id;
                                    case maybet of
                                    (Just t) -> return (t);
                                     Nothing -> fail ("ERROR: El identificador: " ++ show(id) ++ " corresponde a un procedimiento y debería tener que ser una función")
                                  }
inferExp env (ECall id exps) = do {
                                    (parms,maybet) <- checkIdentInSignatures env id;
                                    chkSizes exps parms id;
                                    chkArgumentsTypes env exps parms;
                                    chkRefArguments env exps parms;
                                    case maybet of
                                      (Just t) -> return (t)
                                  }

-- Chequea que los parametros que son por referencia sean variables y pertenezcan al contexto
chkRefArguments :: Env -> [Exp] -> [SignParameter] -> Err ()
chkRefArguments env [] [] = return ()
chkRefArguments env (e:es) ((id,(ref,t2)):ps) = do {
                                                     case ref of
                                                       True -> do {
                                                                    t <- chkExpIsVariable env e;
                                                                    chkRefArguments env es ps
                                                                  };
                                                       False -> chkRefArguments env es ps
                                                   }

-- Chequea si una expresion es una variable y si pertenece al contexto
chkExpIsVariable :: Env -> Exp -> Err (Type)
chkExpIsVariable env (EIdent id) = searchIdentInContext env id
chkExpIsVariable env _ = fail ("ERROR: Los parametros por referencia deben ser una variable")

-- Chequea que el tipo de cada expresion sea igual al tipo del parametro que corresponde
chkArgumentsTypes :: Env -> [Exp] -> [SignParameter] -> Err ()
chkArgumentsTypes env [] [] = return ()
chkArgumentsTypes env (e:es) ((id,(ref,t2)):ps) = do {
                                                       t1 <- inferExp env e;
                                                       checkTypesError t2 t1;
                                                       chkArgumentsTypes env es ps
                                                     }
-- Chequea el largo de la lista de expresiones de una llamada a una funcion y el largo de la lista de parametros que esta recibe
chkSizes :: [Exp] -> [SignParameter] -> Ident -> Err ()
chkSizes exps parms name = if (length(exps) == length(parms)) then
                             return ()
                           else
                             fail ("ERROR: Llamada a: " ++ show(name) ++ " con cantidad de parametros incorrecta")

-- Chequea si una firma pertenece al conjunto de firmas
checkIdentInSignatures :: Env -> Ident -> Err (ValSig)
checkIdentInSignatures (context,signatures) id = case Map.lookup id signatures of
                                                      (Just a) -> return (a);
                                                       Nothing -> fail ("ERROR: Función o Procedimiento: " ++ show(id) ++ " no declarado")