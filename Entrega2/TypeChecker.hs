module TypeChecker where

import AbsPascal
import PrintPascal
import ErrM
import Data.Maybe
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad

-- ESTRUCTURAS DE DATOS

type Context = Map Ident Type

type Signatures = Map Ident ValSig
type ValSig =  ([(Bool,Type)],Type)

type Env = (Context,Signatures)



-- MAIN
typeCheck :: Program -> Err ()
typeCheck program = checkProgram program

-- CHECK Program
checkProgram :: Program -> Err ()
checkProgram (PBlock name varPart procFuns stms) = return ()

loadContext :: VarPart -> Context -> Err ()
loadContext VPartEmpty context = return ()
loadContext (VPart []) context = return ()
loadContext (VPart (i:is)) context = do {
                                          resultContext <- (checkAddContext i context);
                                          resultLoad <- loadContext (VPart is) resultContext;
                                          return resultLoad
                                        }

checkAddContext :: VarDecl -> Context -> Err (Context)
checkAddContext (VDecl [] t) context = return context
checkAddContext (VDecl (i:is) t) context = case Map.lookup i context of
                                              (Just a) -> fail "Variable ya existente";
                                               Nothing -> do {
                                                               newContext <- checkAddContext (VDecl is t) (Map.insert i t context);
                                                               return newContext
                                                             }


--checkStms ::
--checkStament ::
--checkDef ::
