

module AbsPascal where

-- Haskell module generated by the BNF converter




newtype Id = Id String deriving (Eq, Ord, Show, Read)
data Program = PProgram Id Block
  deriving (Eq, Ord, Show, Read)

data Block = PBlock Parts Body
  deriving (Eq, Ord, Show, Read)

data Parts = PPart Consts Types Vars [ProcsYFuncs]
  deriving (Eq, Ord, Show, Read)

data Consts = PPartConstsEmpty | PPartConst [Const]
  deriving (Eq, Ord, Show, Read)

data Const = PConst Id Literal
  deriving (Eq, Ord, Show, Read)

data Literal
    = PValInteger Integer
    | PValDouble Double
    | PValString String
    | PValChar Char
  deriving (Eq, Ord, Show, Read)

data Vars = PPartVarsEmpty | PPartVars [Var]
  deriving (Eq, Ord, Show, Read)

data Var = PVar [Id] CustomType
  deriving (Eq, Ord, Show, Read)

data Types = PPartTypesEmpty | PPartTypes [Type]
  deriving (Eq, Ord, Show, Read)

data Type = PType Id CustomType
  deriving (Eq, Ord, Show, Read)

data CustomType
    = PCustomTypeEnum [Id]
    | PCustomTypeSubRange RangeType RangeType
    | PCustomTypePointer Id
    | PTypeArray [ArrType] CustomType
    | PTypeRecord [Fields]
    | PCustomTypeId Id
  deriving (Eq, Ord, Show, Read)

data RangeType = PRangeTypeId Id | PRangeTypeLiteral Literal
  deriving (Eq, Ord, Show, Read)

data ArrType
    = PTypeArrayId Id
    | PTypeArrayLiteral Literal
    | PTypeArrayRange RangeType RangeType
  deriving (Eq, Ord, Show, Read)

data Fields = PRecordFields [Id] CustomType
  deriving (Eq, Ord, Show, Read)

data ProcsYFuncs
    = PIdProcedure Id [DecParm] BlockProcFun
    | PIdFunction Id [DecParm] Id BlockProcFun
  deriving (Eq, Ord, Show, Read)

data DecParm = PDecParamVar [Id] Id | PDecParam [Id] Id
  deriving (Eq, Ord, Show, Read)

data BlockProcFun = PBlockProcFun Parts Body
  deriving (Eq, Ord, Show, Read)

data Body = PBody [Instruction]
  deriving (Eq, Ord, Show, Read)

data Instruction
    = PInstruction
    | PListSimpleInstruction SimpleInstruction
    | PListCompositeInstruction StructuredInstruction
  deriving (Eq, Ord, Show, Read)

data SimpleInstruction
    = PSimpleInstructionAssignment [AccId] Exp
    | PSimpleInstructionProc CallProc
  deriving (Eq, Ord, Show, Read)

data StructuredInstruction
    = PStructuredInstructionBegEnd [Instruction]
    | PStructuredInstructionCond ConditionalInstruction
    | PStructuredInstructionComp CompositeInstruction
  deriving (Eq, Ord, Show, Read)

data ConditionalInstruction
    = PCompositeInstructionIf Exp Instruction
    | PCompositeInstructionIfElse Exp Instruction Instruction
    | PCompositeInstructionCase Exp [Ramas]
  deriving (Eq, Ord, Show, Read)

data CompositeInstruction
    = PCompositeInstructionRepeat [Instruction] Exp
    | PCompositeInstructionForTo Id Exp Exp Instruction
    | PCompositeInstructionForDownTo Id Exp Exp Instruction
    | PCompositeInstructionWhile Exp Body
  deriving (Eq, Ord, Show, Read)

data Ramas = PCaseRamCase [ConstCase] Instruction
  deriving (Eq, Ord, Show, Read)

data ConstCase = PConstCaseLiteral Literal | PConsCaseId Id
  deriving (Eq, Ord, Show, Read)

data CallFunProc = PCallFuncProc Id [Exp]
  deriving (Eq, Ord, Show, Read)

data CallProc = PCallProc Id [ExpC] ExpC | PCallProcEmpty Id
  deriving (Eq, Ord, Show, Read)

data ExpC = PExpC Exp
  deriving (Eq, Ord, Show, Read)

data Exp
    = PNotExp Exp
    | PGeneralExpMayor Exp Exp
    | PGeneralExpMinor Exp Exp
    | PGeneralExpEqual Exp Exp
    | PGeneralExpMyorEqual Exp Exp
    | PGeneralExpMinorEqual Exp Exp
    | PGeneralExpDistinct Exp Exp
    | PSimpleExpInvSign Exp
    | PSimpleExpPreSum Exp
    | PSimpleExpPlus Exp Exp
    | PSimpleExpOr Exp Exp
    | PSimpleExpMinus Exp Exp
    | PTermExpMul Exp Exp
    | PTermExpDiv Exp Exp
    | PTermExpDiv2 Exp Exp
    | PTermExpMod Exp Exp
    | PTermExpAnd Exp Exp
    | PFactorLit Literal
    | PFactorId AccId
    | PFactorAccId AccId [AccId]
    | PFactorCall CallFunProc
  deriving (Eq, Ord, Show, Read)

data AccId
    = PAccId Id
    | PAccIdPointer Id [Pointer]
    | PtrArrayAccess ArrayAccess
    | PtrArrayAccessPointer ArrayAccess [Pointer]
  deriving (Eq, Ord, Show, Read)

data ArrayAccess = PArrayAccess Id [TypeAccess]
  deriving (Eq, Ord, Show, Read)

data TypeAccess = PTypeAccessLiteral Exp
  deriving (Eq, Ord, Show, Read)

data Pointer = PPointer2
  deriving (Eq, Ord, Show, Read)

