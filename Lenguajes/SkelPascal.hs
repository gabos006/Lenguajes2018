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
  PBlock parts instructions -> failure x
transParts :: Parts -> Result
transParts x = case x of
  PPart constants types vars funcsprocs -> failure x
transConstants :: Constants -> Result
transConstants x = case x of
  PPartConstEmpty -> failure x
  PPartConst consts -> failure x
transConst :: Const -> Result
transConst x = case x of
  PListConst id val -> failure x
transVal :: Val -> Result
transVal x = case x of
  PValInteger integer -> failure x
  PValDouble double -> failure x
  PValString string -> failure x
  PValChar char -> failure x
transTypes :: Types -> Result
transTypes x = case x of
  PPartTypesEmpty -> failure x
  PPartTypes listtypess -> failure x
transListTypes :: ListTypes -> Result
transListTypes x = case x of
  PListTypes id type_ -> failure x
transType :: Type -> Result
transType x = case x of
  PTypeEnum listids -> failure x
  PTypeSubRange rangetype1 rangetype2 -> failure x
  PTypePointer id -> failure x
  PTypeArray ltypes id -> failure x
  PTypeRecord fieldss -> failure x
  PTypeIdentifier id -> failure x
transListId :: ListId -> Result
transListId x = case x of
  PListId id -> failure x
transRangeType :: RangeType -> Result
transRangeType x = case x of
  PRangeTypeId id -> failure x
  PRangeTypeChar char -> failure x
  PRangeTypeInteger integer -> failure x
transLType :: LType -> Result
transLType x = case x of
  PTypeArrayLType type_ -> failure x
transFields :: Fields -> Result
transFields x = case x of
  PRecordFields listids type_ -> failure x
transAccessRecord :: AccessRecord -> Result
transAccessRecord x = case x of
  PAccessRecord id1 id2 -> failure x
transVars :: Vars -> Result
transVars x = case x of
  PPartVarsEmpty -> failure x
  PPartVars listvarss -> failure x
transListVars :: ListVars -> Result
transListVars x = case x of
  PListVars listids id -> failure x
transFuncsProcs :: FuncsProcs -> Result
transFuncsProcs x = case x of
  PPartFuncsProcs -> failure x
transInstruction :: Instruction -> Result
transInstruction x = case x of
  PListInstructionEmpty -> failure x
  PListSimpleInstruction simpleinstruction -> failure x
  PListCompositeInstruction compositeinstruction -> failure x
transSimpleInstruction :: SimpleInstruction -> Result
transSimpleInstruction x = case x of
  PSimpleInstructionEmpty -> failure x
  PSimpleInstructionAssignment id exps -> failure x
  PSimpleInstructionAssignmentAccRecord accessrecord exps -> failure x
  PSimpleInstructionProcFunc id parms -> failure x
transParms :: Parms -> Result
transParms x = case x of
  PParmsEmpty -> failure x
  PParms expss -> failure x
transExps :: Exps -> Result
transExps x = case x of
  PExpsEmpty -> failure x
  PExpsFactor factor -> failure x
  PExpsTerms terms -> failure x
  PExpsSimple simpleexp -> failure x
  PExpGeneral generalexp -> failure x
transFactor :: Factor -> Result
transFactor x = case x of
  PFactorString string -> failure x
  PFactorId id -> failure x
  PFactorInteger integer -> failure x
  PFactorAccRecord accessrecord -> failure x
transTerms :: Terms -> Result
transTerms x = case x of
  PTerms -> failure x
transSimpleExp :: SimpleExp -> Result
transSimpleExp x = case x of
  PSimpleExpAdd add -> failure x
  PSimpleExpEquals equals -> failure x
  PSimpleExpMinus minus -> failure x
transAdd :: Add -> Result
transAdd x = case x of
  PAdd factor1 factor2 -> failure x
transEquals :: Equals -> Result
transEquals x = case x of
  PEquals factor1 factor2 -> failure x
transMinus :: Minus -> Result
transMinus x = case x of
  PMinus factor1 factor2 -> failure x
transGeneralExp :: GeneralExp -> Result
transGeneralExp x = case x of
  PGeneralExp -> failure x
transCompositeInstruction :: CompositeInstruction -> Result
transCompositeInstruction x = case x of
  PCompositeInstructionRepeat listinstrss exps -> failure x
  PCompositeInstructionForTo id exps1 exps2 instruction -> failure x
  PCompositeInstructionForDownTo id exps1 exps2 instruction -> failure x
transListInstrs :: ListInstrs -> Result
transListInstrs x = case x of
  PRepeatListInstrs instruction -> failure x

