-- This Happy file was machine-generated by the BNF converter
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParPascal where
import AbsPascal
import LexPascal
import ErrM

}

%name pProgram Program
%name pBlock Block
%name pParts Parts
%name pConsts Consts
%name pConst Const
%name pLiteral Literal
%name pVars Vars
%name pVar Var
%name pTypes Types
%name pType Type
%name pCustomType CustomType
%name pRangeType RangeType
%name pListArrType ListArrType
%name pArrType ArrType
%name pListFields ListFields
%name pFields Fields
%name pListProcsYFuncs ListProcsYFuncs
%name pProcsYFuncs ProcsYFuncs
%name pListDecParm ListDecParm
%name pDecParm DecParm
%name pBlockProcFun BlockProcFun
%name pBody Body
%name pListInstruction ListInstruction
%name pInstruction Instruction
%name pSimpleInstruction SimpleInstruction
%name pStructuredInstruction StructuredInstruction
%name pConditionalInstruction ConditionalInstruction
%name pCompositeInstruction CompositeInstruction
%name pListRamas ListRamas
%name pRamas Ramas
%name pListConstCase ListConstCase
%name pConstCase ConstCase
%name pCallFunProc CallFunProc
%name pCallProc CallProc
%name pExpC ExpC
%name pListExpC ListExpC
%name pListExp ListExp
%name pExp Exp
%name pExp1 Exp1
%name pExp2 Exp2
%name pExp3 Exp3
%name pExp4 Exp4
%name pListAccId ListAccId
%name pAccId AccId
%name pArrayAccess ArrayAccess
%name pListTypeAccess ListTypeAccess
%name pTypeAccess TypeAccess
%name pListPointer ListPointer
%name pPointer Pointer
%name pListConst ListConst
%name pListVar ListVar
%name pListType ListType
%name pListId ListId
-- no lexer declaration
%monad { Err } { thenM } { returnM }
%tokentype {Token}
%token
  '(' { PT _ (TS _ 1) }
  ')' { PT _ (TS _ 2) }
  '*' { PT _ (TS _ 3) }
  '+' { PT _ (TS _ 4) }
  ',' { PT _ (TS _ 5) }
  '-' { PT _ (TS _ 6) }
  '.' { PT _ (TS _ 7) }
  '..' { PT _ (TS _ 8) }
  '/' { PT _ (TS _ 9) }
  ':' { PT _ (TS _ 10) }
  ':=' { PT _ (TS _ 11) }
  ';' { PT _ (TS _ 12) }
  '<' { PT _ (TS _ 13) }
  '<=' { PT _ (TS _ 14) }
  '<>' { PT _ (TS _ 15) }
  '=' { PT _ (TS _ 16) }
  '>' { PT _ (TS _ 17) }
  '>=' { PT _ (TS _ 18) }
  '[' { PT _ (TS _ 19) }
  ']' { PT _ (TS _ 20) }
  '^' { PT _ (TS _ 21) }
  'and' { PT _ (TS _ 22) }
  'array' { PT _ (TS _ 23) }
  'begin' { PT _ (TS _ 24) }
  'case' { PT _ (TS _ 25) }
  'const' { PT _ (TS _ 26) }
  'div' { PT _ (TS _ 27) }
  'do' { PT _ (TS _ 28) }
  'downto' { PT _ (TS _ 29) }
  'else' { PT _ (TS _ 30) }
  'end' { PT _ (TS _ 31) }
  'for' { PT _ (TS _ 32) }
  'function' { PT _ (TS _ 33) }
  'if' { PT _ (TS _ 34) }
  'mod' { PT _ (TS _ 35) }
  'not' { PT _ (TS _ 36) }
  'of' { PT _ (TS _ 37) }
  'or' { PT _ (TS _ 38) }
  'procedure' { PT _ (TS _ 39) }
  'program' { PT _ (TS _ 40) }
  'record' { PT _ (TS _ 41) }
  'repeat' { PT _ (TS _ 42) }
  'then' { PT _ (TS _ 43) }
  'to' { PT _ (TS _ 44) }
  'type' { PT _ (TS _ 45) }
  'until' { PT _ (TS _ 46) }
  'var' { PT _ (TS _ 47) }
  'while' { PT _ (TS _ 48) }

L_integ  { PT _ (TI $$) }
L_doubl  { PT _ (TD $$) }
L_quoted { PT _ (TL $$) }
L_charac { PT _ (TC $$) }
L_Id { PT _ (T_Id $$) }


%%

Integer :: { Integer } : L_integ  { (read ( $1)) :: Integer }
Double  :: { Double }  : L_doubl  { (read ( $1)) :: Double }
String  :: { String }  : L_quoted {  $1 }
Char    :: { Char }    : L_charac { (read ( $1)) :: Char }
Id    :: { Id} : L_Id { Id ($1)}

Program :: { Program }
Program : 'program' Id ';' Block { AbsPascal.PProgram $2 $4 }
Block :: { Block }
Block : Parts Body '.' { AbsPascal.PBlock $1 $2 }
Parts :: { Parts }
Parts : Consts Types Vars ListProcsYFuncs { AbsPascal.PPart $1 $2 $3 (reverse $4) }
Consts :: { Consts }
Consts : {- empty -} { AbsPascal.PPartConstsEmpty }
       | 'const' ListConst { AbsPascal.PPartConst $2 }
Const :: { Const }
Const : Id '=' Literal { AbsPascal.PConst $1 $3 }
Literal :: { Literal }
Literal : Integer { AbsPascal.PValInteger $1 }
        | Double { AbsPascal.PValDouble $1 }
        | String { AbsPascal.PValString $1 }
        | Char { AbsPascal.PValChar $1 }
Vars :: { Vars }
Vars : {- empty -} { AbsPascal.PPartVarsEmpty }
     | 'var' ListVar { AbsPascal.PPartVars $2 }
Var :: { Var }
Var : ListId ':' CustomType { AbsPascal.PVar $1 $3 }
Types :: { Types }
Types : {- empty -} { AbsPascal.PPartTypesEmpty }
      | 'type' ListType { AbsPascal.PPartTypes $2 }
Type :: { Type }
Type : Id '=' CustomType { AbsPascal.PType $1 $3 }
CustomType :: { CustomType }
CustomType : '(' ListId ')' { AbsPascal.PCustomTypeEnum $2 }
           | RangeType '..' RangeType { AbsPascal.PCustomTypeSubRange $1 $3 }
           | '^' Id { AbsPascal.PCustomTypePointer $2 }
           | 'array' '[' ListArrType ']' 'of' CustomType { AbsPascal.PTypeArray $3 $6 }
           | 'record' ListFields 'end' { AbsPascal.PTypeRecord $2 }
           | Id { AbsPascal.PCustomTypeId $1 }
RangeType :: { RangeType }
RangeType : Id { AbsPascal.PRangeTypeId $1 }
          | Literal { AbsPascal.PRangeTypeLiteral $1 }
ListArrType :: { [ArrType] }
ListArrType : {- empty -} { [] }
            | ArrType { (:[]) $1 }
            | ArrType ',' ListArrType { (:) $1 $3 }
ArrType :: { ArrType }
ArrType : Id { AbsPascal.PTypeArrayId $1 }
        | Literal { AbsPascal.PTypeArrayLiteral $1 }
        | RangeType '..' RangeType { AbsPascal.PTypeArrayRange $1 $3 }
ListFields :: { [Fields] }
ListFields : {- empty -} { [] }
           | Fields { (:[]) $1 }
           | Fields ';' ListFields { (:) $1 $3 }
Fields :: { Fields }
Fields : ListId ':' CustomType { AbsPascal.PRecordFields $1 $3 }
ListProcsYFuncs :: { [ProcsYFuncs] }
ListProcsYFuncs : {- empty -} { [] }
                | ListProcsYFuncs ProcsYFuncs { flip (:) $1 $2 }
ProcsYFuncs :: { ProcsYFuncs }
ProcsYFuncs : 'procedure' Id '(' ListDecParm ')' ';' BlockProcFun ';' { AbsPascal.PIdProcedure $2 $4 $7 }
            | 'function' Id '(' ListDecParm ')' ':' Id ';' BlockProcFun ';' { AbsPascal.PIdFunction $2 $4 $7 $9 }
ListDecParm :: { [DecParm] }
ListDecParm : {- empty -} { [] }
            | DecParm { (:[]) $1 }
            | DecParm ';' ListDecParm { (:) $1 $3 }
DecParm :: { DecParm }
DecParm : 'var' ListId ':' Id { AbsPascal.PDecParamVar $2 $4 }
        | ListId ':' Id { AbsPascal.PDecParam $1 $3 }
BlockProcFun :: { BlockProcFun }
BlockProcFun : Parts Body { AbsPascal.PBlockProcFun $1 $2 }
Body :: { Body }
Body : 'begin' ListInstruction 'end' { AbsPascal.PBody $2 }
ListInstruction :: { [Instruction] }
ListInstruction : Instruction { (:[]) $1 }
                | Instruction ';' ListInstruction { (:) $1 $3 }
Instruction :: { Instruction }
Instruction : {- empty -} { AbsPascal.PInstruction }
            | SimpleInstruction { AbsPascal.PListSimpleInstruction $1 }
            | StructuredInstruction { AbsPascal.PListCompositeInstruction $1 }
SimpleInstruction :: { SimpleInstruction }
SimpleInstruction : ListAccId ':=' Exp { AbsPascal.PSimpleInstructionAssignment $1 $3 }
                  | CallProc { AbsPascal.PSimpleInstructionProc $1 }
StructuredInstruction :: { StructuredInstruction }
StructuredInstruction : 'begin' ListInstruction 'end' { AbsPascal.PStructuredInstructionBegEnd $2 }
                      | ConditionalInstruction { AbsPascal.PStructuredInstructionCond $1 }
                      | CompositeInstruction { AbsPascal.PStructuredInstructionComp $1 }
ConditionalInstruction :: { ConditionalInstruction }
ConditionalInstruction : 'if' Exp 'then' Instruction { AbsPascal.PCompositeInstructionIf $2 $4 }
                       | 'if' Exp 'then' Instruction 'else' Instruction { AbsPascal.PCompositeInstructionIfElse $2 $4 $6 }
                       | 'case' Exp 'of' ListRamas 'end' { AbsPascal.PCompositeInstructionCase $2 $4 }
CompositeInstruction :: { CompositeInstruction }
CompositeInstruction : 'repeat' ListInstruction 'until' Exp { AbsPascal.PCompositeInstructionRepeat $2 $4 }
                     | 'for' Id ':=' Exp 'to' Exp 'do' Instruction { AbsPascal.PCompositeInstructionForTo $2 $4 $6 $8 }
                     | 'for' Id ':=' Exp 'downto' Exp 'do' Instruction { AbsPascal.PCompositeInstructionForDownTo $2 $4 $6 $8 }
                     | 'while' Exp 'do' Body { AbsPascal.PCompositeInstructionWhile $2 $4 }
ListRamas :: { [Ramas] }
ListRamas : Ramas { (:[]) $1 } | Ramas ';' ListRamas { (:) $1 $3 }
Ramas :: { Ramas }
Ramas : ListConstCase ':' Instruction { AbsPascal.PCaseRamCase $1 $3 }
ListConstCase :: { [ConstCase] }
ListConstCase : {- empty -} { [] }
              | ConstCase { (:[]) $1 }
              | ConstCase ',' ListConstCase { (:) $1 $3 }
ConstCase :: { ConstCase }
ConstCase : Literal { AbsPascal.PConstCaseLiteral $1 }
          | Id { AbsPascal.PConsCaseId $1 }
CallFunProc :: { CallFunProc }
CallFunProc : Id '(' ListExp ')' { AbsPascal.PCallFuncProc $1 $3 }
CallProc :: { CallProc }
CallProc : Id '(' ListExpC ExpC ')' { AbsPascal.PCallProc $1 (reverse $3) $4 }
         | Id { AbsPascal.PCallProcEmpty $1 }
ExpC :: { ExpC }
ExpC : Exp { AbsPascal.PExpC $1 }
ListExpC :: { [ExpC] }
ListExpC : {- empty -} { [] }
         | ListExpC ExpC ',' { flip (:) $1 $2 }
ListExp :: { [Exp] }
ListExp : {- empty -} { [] }
        | Exp { (:[]) $1 }
        | Exp ',' ListExp { (:) $1 $3 }
Exp :: { Exp }
Exp : 'not' Exp1 { AbsPascal.PNotExp $2 } | Exp1 { $1 }
Exp1 :: { Exp }
Exp1 : Exp1 '>' Exp2 { AbsPascal.PGeneralExpMayor $1 $3 }
     | Exp1 '<' Exp2 { AbsPascal.PGeneralExpMinor $1 $3 }
     | Exp1 '=' Exp2 { AbsPascal.PGeneralExpEqual $1 $3 }
     | Exp1 '>=' Exp2 { AbsPascal.PGeneralExpMyorEqual $1 $3 }
     | Exp1 '<=' Exp2 { AbsPascal.PGeneralExpMinorEqual $1 $3 }
     | Exp1 '<>' Exp2 { AbsPascal.PGeneralExpDistinct $1 $3 }
     | Exp2 { $1 }
Exp2 :: { Exp }
Exp2 : '-' Exp3 { AbsPascal.PSimpleExpInvSign $2 }
     | '+' Exp3 { AbsPascal.PSimpleExpPreSum $2 }
     | Exp2 '+' Exp3 { AbsPascal.PSimpleExpPlus $1 $3 }
     | Exp2 'or' Exp3 { AbsPascal.PSimpleExpOr $1 $3 }
     | Exp2 '-' Exp3 { AbsPascal.PSimpleExpMinus $1 $3 }
     | Exp3 { $1 }
Exp3 :: { Exp }
Exp3 : Exp3 '*' Exp4 { AbsPascal.PTermExpMul $1 $3 }
     | Exp3 '/' Exp4 { AbsPascal.PTermExpDiv $1 $3 }
     | Exp3 'div' Exp4 { AbsPascal.PTermExpDiv2 $1 $3 }
     | Exp3 'mod' Exp4 { AbsPascal.PTermExpMod $1 $3 }
     | Exp3 'and' Exp4 { AbsPascal.PTermExpAnd $1 $3 }
     | Exp4 { $1 }
Exp4 :: { Exp }
Exp4 : Literal { AbsPascal.PFactorLit $1 }
     | AccId { AbsPascal.PFactorId $1 }
     | AccId '.' ListAccId { AbsPascal.PFactorAccId $1 $3 }
     | CallFunProc { AbsPascal.PFactorCall $1 }
     | '(' Exp ')' { $2 }
ListAccId :: { [AccId] }
ListAccId : AccId { (:[]) $1 } | AccId '.' ListAccId { (:) $1 $3 }
AccId :: { AccId }
AccId : Id { AbsPascal.PAccId $1 }
      | Id ListPointer { AbsPascal.PAccIdPointer $1 $2 }
      | ArrayAccess { AbsPascal.PtrArrayAccess $1 }
      | ArrayAccess ListPointer { AbsPascal.PtrArrayAccessPointer $1 $2 }
ArrayAccess :: { ArrayAccess }
ArrayAccess : Id '[' ListTypeAccess ']' { AbsPascal.PArrayAccess $1 $3 }
ListTypeAccess :: { [TypeAccess] }
ListTypeAccess : TypeAccess { (:[]) $1 }
               | TypeAccess ',' ListTypeAccess { (:) $1 $3 }
TypeAccess :: { TypeAccess }
TypeAccess : Exp { AbsPascal.PTypeAccessLiteral $1 }
ListPointer :: { [Pointer] }
ListPointer : Pointer { (:[]) $1 }
            | Pointer ListPointer { (:) $1 $2 }
Pointer :: { Pointer }
Pointer : '^' { AbsPascal.PPointer2 }
ListConst :: { [Const] }
ListConst : Const ';' { (:[]) $1 }
          | Const ';' ListConst { (:) $1 $3 }
ListVar :: { [Var] }
ListVar : Var ';' { (:[]) $1 } | Var ';' ListVar { (:) $1 $3 }
ListType :: { [Type] }
ListType : Type ';' { (:[]) $1 } | Type ';' ListType { (:) $1 $3 }
ListId :: { [Id] }
ListId : {- empty -} { [] }
       | Id { (:[]) $1 }
       | Id ',' ListId { (:) $1 $3 }
{

returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
}

