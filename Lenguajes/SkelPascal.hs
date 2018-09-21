module SkelPascal where

-- Haskell module generated by the BNF converter

import AbsPascal
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transId :: Id -> Result
transId x = case x of
  Id string -> failure x
transProgram :: Program -> Result
transProgram x = case x of
  PProgram id block -> failure x
transBlock :: Block -> Result
transBlock x = case x of
  PBlock parts body -> failure x
transParts :: Parts -> Result
transParts x = case x of
  PPart consts types vars procsyfuncs -> failure x
transConsts :: Consts -> Result
transConsts x = case x of
  PPartConstEmpty -> failure x
  PPartConst consts const -> failure x
transConst :: Const -> Result
transConst x = case x of
  PConst id literal -> failure x
transLiteral :: Literal -> Result
transLiteral x = case x of
  PValInteger integer -> failure x
  PValDouble double -> failure x
  PValString string -> failure x
  PValChar char -> failure x
transVars :: Vars -> Result
transVars x = case x of
  PPartVarsEmpty -> failure x
  PPartVars vars var -> failure x
transVar :: Var -> Result
transVar x = case x of
  PVar ids id -> failure x
transTypes :: Types -> Result
transTypes x = case x of
  PPartTypesEmpty -> failure x
  PPartTypes types type_ -> failure x
transType :: Type -> Result
transType x = case x of
  PType id customtype -> failure x
transCustomType :: CustomType -> Result
transCustomType x = case x of
  PCustomTypeEnum ids -> failure x
  PCustomTypeSubRange rangetype1 rangetype2 -> failure x
  PCustomTypePointer id -> failure x
  PTypeArray arrtype id -> failure x
  PTypeRecord fieldss -> failure x
  PCustomTypeId id -> failure x
transRangeType :: RangeType -> Result
transRangeType x = case x of
  PRangeTypeId id -> failure x
  PRangeTypeChar char -> failure x
  PRangeTypeInteger integer -> failure x
transArrType :: ArrType -> Result
transArrType x = case x of
  PTypeArrayLType rangetype1 rangetype2 -> failure x
transFields :: Fields -> Result
transFields x = case x of
  PRecordFields id customtype -> failure x
transProcsYFuncs :: ProcsYFuncs -> Result
transProcsYFuncs x = case x of
  PProcsYFuncsEmpty -> failure x
  PIdProcedure id decparms blockprocfun -> failure x
  PIdFunction id1 decparms id2 blockprocfun -> failure x
transDecParm :: DecParm -> Result
transDecParm x = case x of
  PPrueba ids id -> failure x
transBlockProcFun :: BlockProcFun -> Result
transBlockProcFun x = case x of
  PBlockProcFun partsprocfun body -> failure x
transPartsProcFun :: PartsProcFun -> Result
transPartsProcFun x = case x of
  PPartProcFun consts types vars -> failure x
transBody :: Body -> Result
transBody x = case x of
  PBody instructions -> failure x
transInstruction :: Instruction -> Result
transInstruction x = case x of
  PListSimpleInstruction simpleinstruction -> failure x
  PListCompositeInstruction compositeinstruction -> failure x
transSimpleInstruction :: SimpleInstruction -> Result
transSimpleInstruction x = case x of
  PSimpleInstructionAssignment accids exp -> failure x
  PSimpleInstructionProcFunc id parms -> failure x
transCompositeInstruction :: CompositeInstruction -> Result
transCompositeInstruction x = case x of
  PCompositeInstructionIf exp instruction -> failure x
  PCompositeInstructionIfElse exp instruction1 instruction2 -> failure x
  PCompositeInstructionRepeat instructions exp -> failure x
  PCompositeInstructionForTo id exp1 exp2 instruction -> failure x
  PCompositeInstructionForDownTo id exp1 exp2 instruction -> failure x
transParms :: Parms -> Result
transParms x = case x of
  PParamsEmpty -> failure x
  PParms exps -> failure x
transExp :: Exp -> Result
transExp x = case x of
  PExp exp -> failure x
  PNotExp exp -> failure x
  PGeneralExpSimple exp -> failure x
  PGeneralExp exp1 gencom exp2 -> failure x
  PSimpleExpTerm exp -> failure x
  PSimpleExp exp1 addcom exp2 -> failure x
  PSimpleExpInvSign exp -> failure x
  PTermFactor exp -> failure x
  PTermExp exp1 mulcom exp2 -> failure x
  PFactorLit literal -> failure x
  PFactorId id -> failure x
  PFactorAccId id accids -> failure x
transGenCom :: GenCom -> Result
transGenCom x = case x of
  PGeneralExpMayor -> failure x
  PGeneralExpMinor -> failure x
  PGeneralExpEqual -> failure x
  PGeneralExpMayorEqual -> failure x
  PGeneralExpMinorEqual -> failure x
  PGeneralExpDistinct -> failure x
transAddCom :: AddCom -> Result
transAddCom x = case x of
  PSimpleExpAdd -> failure x
  PSimpleExpEquals -> failure x
  PSimpleExpMinus -> failure x
transMulCom :: MulCom -> Result
transMulCom x = case x of
  PTermExpMul -> failure x
  PTermExpDiv1 -> failure x
  PTermExpDiv2 -> failure x
  PTermExpMod -> failure x
  PTermExpAnd -> failure x
transAccId :: AccId -> Result
transAccId x = case x of
  PAccId id -> failure x

