

module AbsPascal where

-- Haskell module generated by the BNF converter




newtype Id = Id String deriving (Eq, Ord, Show, Read)
data Program = PProgram Id Block
  deriving (Eq, Ord, Show, Read)

data Block = PBlock Parts Body
  deriving (Eq, Ord, Show, Read)

data Parts = PPart Consts Types Vars ProcsYFuncs
  deriving (Eq, Ord, Show, Read)

data Consts = PPartConstEmpty | PPartConst [Const] Const
  deriving (Eq, Ord, Show, Read)

data Const = PConst Id Literal
  deriving (Eq, Ord, Show, Read)

data Literal
    = PValInteger Integer
    | PValDouble Double
    | PValString String
    | PValChar Char
  deriving (Eq, Ord, Show, Read)

data Vars = PPartVarsEmpty | PPartVars [Var] Var
  deriving (Eq, Ord, Show, Read)

data Var = PVar [Id] Id
  deriving (Eq, Ord, Show, Read)

data Types = PPartTypesEmpty | PPartTypes [Type] Type
  deriving (Eq, Ord, Show, Read)

data Type = PType Id CustomType
  deriving (Eq, Ord, Show, Read)

data CustomType
    = PCustomTypeEnum [Id]
    | PCustomTypeSubRange RangeType RangeType
    | PCustomTypePointer Id
    | PTypeArray ArrType Id
    | PTypeRecord [Fields]
    | PCustomTypeId Id
  deriving (Eq, Ord, Show, Read)

data RangeType
    = PRangeTypeId Id | PRangeTypeChar Char | PRangeTypeInteger Integer
  deriving (Eq, Ord, Show, Read)

data ArrType = PTypeArrayLType RangeType RangeType
  deriving (Eq, Ord, Show, Read)

data Fields = PRecordFields Id CustomType
  deriving (Eq, Ord, Show, Read)

data ProcsYFuncs
    = PProcsYFuncsEmpty
    | PIdProcedure Id [DecParm] BlockProcFun
    | PIdFunction Id [DecParm] Id BlockProcFun
  deriving (Eq, Ord, Show, Read)

data DecParm = PDecParam [Id] Id
  deriving (Eq, Ord, Show, Read)

data BlockProcFun = PBlockProcFun PartsProcFun Body
  deriving (Eq, Ord, Show, Read)

data PartsProcFun = PPartProcFun Consts Types Vars
  deriving (Eq, Ord, Show, Read)

data Body = PBody [Instruction]
  deriving (Eq, Ord, Show, Read)

data Instruction
    = PListSimpleInstruction SimpleInstruction
    | PListCompositeInstruction CompositeInstruction
  deriving (Eq, Ord, Show, Read)

data SimpleInstruction
    = PSimpleInstructionAssignment [AccId] Exp
    | PSimpleInstructionProcFunc Id Parms
  deriving (Eq, Ord, Show, Read)

data CompositeInstruction
    = PCompositeInstructionIf Exp Instruction
    | PCompositeInstructionIfElse Exp Instruction Instruction
    | PCompositeInstructionRepeat [Instruction] Exp
    | PCompositeInstructionForTo Id Exp Exp Instruction
    | PCompositeInstructionForDownTo Id Exp Exp Instruction
  deriving (Eq, Ord, Show, Read)

data Parms = PParamsEmpty | PParms [Exp]
  deriving (Eq, Ord, Show, Read)

data Exp
    = PExp Exp
    | PNotExp Exp
    | PGeneralExpSimple Exp
    | PGeneralExp Exp GenCom Exp
    | PSimpleExpTerm Exp
    | PSimpleExp Exp AddCom Exp
    | PSimpleExpInvSign Exp
    | PTermFactor Exp
    | PTermExp Exp MulCom Exp
    | PFactorLit Literal
    | PFactorId Id
    | PFactorAccId Id [AccId]
    | PFactorCall Id Parms
  deriving (Eq, Ord, Show, Read)

data GenCom
    = PGeneralExpMayor
    | PGeneralExpMinor
    | PGeneralExpEqual
    | PGeneralExpMayorEqual
    | PGeneralExpMinorEqual
    | PGeneralExpDistinct
  deriving (Eq, Ord, Show, Read)

data AddCom = PSimpleExpAdd | PSimpleExpEquals | PSimpleExpMinus
  deriving (Eq, Ord, Show, Read)

data MulCom
    = PTermExpMul
    | PTermExpDiv1
    | PTermExpDiv2
    | PTermExpMod
    | PTermExpAnd
  deriving (Eq, Ord, Show, Read)

data AccId = PAccId Id
  deriving (Eq, Ord, Show, Read)

