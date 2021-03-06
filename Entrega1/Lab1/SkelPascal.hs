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
  PPart consts types vars procsyfuncss -> failure x
transConsts :: Consts -> Result
transConsts x = case x of
  PPartConstsEmpty -> failure x
  PPartConst consts -> failure x
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
  PPartVars vars -> failure x
transVar :: Var -> Result
transVar x = case x of
  PVar ids customtype -> failure x
transTypes :: Types -> Result
transTypes x = case x of
  PPartTypesEmpty -> failure x
  PPartTypes types -> failure x
transType :: Type -> Result
transType x = case x of
  PType id customtype -> failure x
transCustomType :: CustomType -> Result
transCustomType x = case x of
  PCustomTypeEnum ids -> failure x
  PCustomTypeSubRange rangetype1 rangetype2 -> failure x
  PCustomTypePointer id -> failure x
  PTypeArray arrtypes customtype -> failure x
  PTypeRecord fieldss -> failure x
  PCustomTypeId id -> failure x
transRangeType :: RangeType -> Result
transRangeType x = case x of
  PRangeTypeId id -> failure x
  PRangeTypeLiteral literal -> failure x
transArrType :: ArrType -> Result
transArrType x = case x of
  PTypeArrayId id -> failure x
  PTypeArrayLiteral literal -> failure x
  PTypeArrayRange rangetype1 rangetype2 -> failure x
transFields :: Fields -> Result
transFields x = case x of
  PRecordFields ids customtype -> failure x
transProcsYFuncs :: ProcsYFuncs -> Result
transProcsYFuncs x = case x of
  PIdProcedure id decparms blockprocfun -> failure x
  PIdFunction id1 decparms id2 blockprocfun -> failure x
transDecParm :: DecParm -> Result
transDecParm x = case x of
  PDecParamVar ids id -> failure x
  PDecParam ids id -> failure x
transBlockProcFun :: BlockProcFun -> Result
transBlockProcFun x = case x of
  PBlockProcFun parts body -> failure x
transBody :: Body -> Result
transBody x = case x of
  PBody instructions -> failure x
transInstruction :: Instruction -> Result
transInstruction x = case x of
  PInstruction -> failure x
  PListSimpleInstruction simpleinstruction -> failure x
  PListCompositeInstruction structuredinstruction -> failure x
transSimpleInstruction :: SimpleInstruction -> Result
transSimpleInstruction x = case x of
  PSimpleInstructionAssignment accids exp -> failure x
  PSimpleInstructionProc callproc -> failure x
transStructuredInstruction :: StructuredInstruction -> Result
transStructuredInstruction x = case x of
  PStructuredInstructionBegEnd instructions -> failure x
  PStructuredInstructionCond conditionalinstruction -> failure x
  PStructuredInstructionComp compositeinstruction -> failure x
transConditionalInstruction :: ConditionalInstruction -> Result
transConditionalInstruction x = case x of
  PCompositeInstructionIf exp instruction -> failure x
  PCompositeInstructionIfElse exp instruction1 instruction2 -> failure x
  PCompositeInstructionCase exp ramass -> failure x
transCompositeInstruction :: CompositeInstruction -> Result
transCompositeInstruction x = case x of
  PCompositeInstructionRepeat instructions exp -> failure x
  PCompositeInstructionForTo id exp1 exp2 instruction -> failure x
  PCompositeInstructionForDownTo id exp1 exp2 instruction -> failure x
  PCompositeInstructionWhile exp body -> failure x
transRamas :: Ramas -> Result
transRamas x = case x of
  PCaseRamCase constcases instruction -> failure x
transConstCase :: ConstCase -> Result
transConstCase x = case x of
  PConstCaseLiteral literal -> failure x
  PConsCaseId id -> failure x
transCallFunProc :: CallFunProc -> Result
transCallFunProc x = case x of
  PCallFuncProc id exps -> failure x
transCallProc :: CallProc -> Result
transCallProc x = case x of
  PCallProc id expcs expc -> failure x
  PCallProcEmpty id -> failure x
transExpC :: ExpC -> Result
transExpC x = case x of
  PExpC exp -> failure x
transExp :: Exp -> Result
transExp x = case x of
  PNotExp exp -> failure x
  PGeneralExpMayor exp1 exp2 -> failure x
  PGeneralExpMinor exp1 exp2 -> failure x
  PGeneralExpEqual exp1 exp2 -> failure x
  PGeneralExpMyorEqual exp1 exp2 -> failure x
  PGeneralExpMinorEqual exp1 exp2 -> failure x
  PGeneralExpDistinct exp1 exp2 -> failure x
  PSimpleExpInvSign exp -> failure x
  PSimpleExpPreSum exp -> failure x
  PSimpleExpPlus exp1 exp2 -> failure x
  PSimpleExpOr exp1 exp2 -> failure x
  PSimpleExpMinus exp1 exp2 -> failure x
  PTermExpMul exp1 exp2 -> failure x
  PTermExpDiv exp1 exp2 -> failure x
  PTermExpDiv2 exp1 exp2 -> failure x
  PTermExpMod exp1 exp2 -> failure x
  PTermExpAnd exp1 exp2 -> failure x
  PFactorLit literal -> failure x
  PFactorId accid -> failure x
  PFactorAccId accid accids -> failure x
  PFactorCall callfunproc -> failure x
transAccId :: AccId -> Result
transAccId x = case x of
  PAccId id -> failure x
  PAccIdPointer id pointers -> failure x
  PtrArrayAccess arrayaccess -> failure x
  PtrArrayAccessPointer arrayaccess pointers -> failure x
transArrayAccess :: ArrayAccess -> Result
transArrayAccess x = case x of
  PArrayAccess id typeaccesss -> failure x
transTypeAccess :: TypeAccess -> Result
transTypeAccess x = case x of
  PTypeAccessLiteral exp -> failure x
transPointer :: Pointer -> Result
transPointer x = case x of
  PPointer2 -> failure x

