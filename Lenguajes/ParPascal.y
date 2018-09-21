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
%name pArrType ArrType
%name pListFields ListFields
%name pFields Fields
%name pProcsYFuncs ProcsYFuncs
%name pListDecParm ListDecParm
%name pDecParm DecParm
%name pBlockProcFun BlockProcFun
%name pPartsProcFun PartsProcFun
%name pBody Body
%name pListInstruction ListInstruction
%name pInstruction Instruction
%name pSimpleInstruction SimpleInstruction
%name pCompositeInstruction CompositeInstruction
%name pParms Parms
%name pListExp ListExp
%name pExp Exp
%name pGenCom GenCom
%name pExp2 Exp2
%name pExp1 Exp1
%name pAddCom AddCom
%name pExp3 Exp3
%name pMulCom MulCom
%name pExp4 Exp4
%name pListAccId ListAccId
%name pAccId AccId
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
  'const' { PT _ (TS _ 25) }
  'div' { PT _ (TS _ 26) }
  'do' { PT _ (TS _ 27) }
  'downto' { PT _ (TS _ 28) }
  'else' { PT _ (TS _ 29) }
  'end' { PT _ (TS _ 30) }
  'for' { PT _ (TS _ 31) }
  'function' { PT _ (TS _ 32) }
  'if' { PT _ (TS _ 33) }
  'mod' { PT _ (TS _ 34) }
  'not' { PT _ (TS _ 35) }
  'of' { PT _ (TS _ 36) }
  'or' { PT _ (TS _ 37) }
  'procedure' { PT _ (TS _ 38) }
  'program' { PT _ (TS _ 39) }
  'record' { PT _ (TS _ 40) }
  'repeat' { PT _ (TS _ 41) }
  'then' { PT _ (TS _ 42) }
  'to' { PT _ (TS _ 43) }
  'type' { PT _ (TS _ 44) }
  'until' { PT _ (TS _ 45) }
  'var' { PT _ (TS _ 46) }

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
Parts : Consts Types Vars ProcsYFuncs { AbsPascal.PPart $1 $2 $3 $4 }
Consts :: { Consts }
Consts : {- empty -} { AbsPascal.PPartConstEmpty }
       | 'const' ListConst Const ';' { AbsPascal.PPartConst (reverse $2) $3 }
Const :: { Const }
Const : Id '=' Literal { AbsPascal.PConst $1 $3 }
Literal :: { Literal }
Literal : Integer { AbsPascal.PValInteger $1 }
        | Double { AbsPascal.PValDouble $1 }
        | String { AbsPascal.PValString $1 }
        | Char { AbsPascal.PValChar $1 }
Vars :: { Vars }
Vars : {- empty -} { AbsPascal.PPartVarsEmpty }
     | 'var' ListVar Var ';' { AbsPascal.PPartVars (reverse $2) $3 }
Var :: { Var }
Var : ListId ':' Id { AbsPascal.PVar $1 $3 }
Types :: { Types }
Types : {- empty -} { AbsPascal.PPartTypesEmpty }
      | 'type' ListType Type ';' { AbsPascal.PPartTypes (reverse $2) $3 }
Type :: { Type }
Type : Id '=' CustomType { AbsPascal.PType $1 $3 }
CustomType :: { CustomType }
CustomType : '(' ListId ')' { AbsPascal.PCustomTypeEnum $2 }
           | RangeType '..' RangeType { AbsPascal.PCustomTypeSubRange $1 $3 }
           | '^' Id { AbsPascal.PCustomTypePointer $2 }
           | 'array' '[' ArrType ']' 'of' Id { AbsPascal.PTypeArray $3 $6 }
           | 'record' ListFields 'end' { AbsPascal.PTypeRecord $2 }
           | Id { AbsPascal.PCustomTypeId $1 }
RangeType :: { RangeType }
RangeType : Id { AbsPascal.PRangeTypeId $1 }
          | Char { AbsPascal.PRangeTypeChar $1 }
          | Integer { AbsPascal.PRangeTypeInteger $1 }
ArrType :: { ArrType }
ArrType : RangeType '..' RangeType { AbsPascal.PTypeArrayLType $1 $3 }
ListFields :: { [Fields] }
ListFields : {- empty -} { [] }
           | Fields { (:[]) $1 }
           | Fields ';' ListFields { (:) $1 $3 }
Fields :: { Fields }
Fields : Id ':' CustomType { AbsPascal.PRecordFields $1 $3 }
ProcsYFuncs :: { ProcsYFuncs }
ProcsYFuncs : {- empty -} { AbsPascal.PProcsYFuncsEmpty }
            | 'procedure' Id '(' ListDecParm ')' ';' BlockProcFun { AbsPascal.PIdProcedure $2 $4 $7 }
            | 'function' Id '(' ListDecParm ')' ':' Id ';' BlockProcFun { AbsPascal.PIdFunction $2 $4 $7 $9 }
ListDecParm :: { [DecParm] }
ListDecParm : {- empty -} { [] }
            | DecParm { (:[]) $1 }
            | DecParm ';' ListDecParm { (:) $1 $3 }
DecParm :: { DecParm }
DecParm : ListId ':' Id { AbsPascal.PDecParam $1 $3 }
BlockProcFun :: { BlockProcFun }
BlockProcFun : PartsProcFun Body ';' { AbsPascal.PBlockProcFun $1 $2 }
PartsProcFun :: { PartsProcFun }
PartsProcFun : Consts Types Vars { AbsPascal.PPartProcFun $1 $2 $3 }
Body :: { Body }
Body : 'begin' ListInstruction 'end' { AbsPascal.PBody $2 }
ListInstruction :: { [Instruction] }
ListInstruction : {- empty -} { [] }
                | Instruction { (:[]) $1 }
                | Instruction ';' ListInstruction { (:) $1 $3 }
Instruction :: { Instruction }
Instruction : SimpleInstruction { AbsPascal.PListSimpleInstruction $1 }
            | CompositeInstruction { AbsPascal.PListCompositeInstruction $1 }
SimpleInstruction :: { SimpleInstruction }
SimpleInstruction : ListAccId ':=' Exp { AbsPascal.PSimpleInstructionAssignment $1 $3 }
                  | Id Parms { AbsPascal.PSimpleInstructionProcFunc $1 $2 }
CompositeInstruction :: { CompositeInstruction }
CompositeInstruction : 'if' Exp 'then' Instruction { AbsPascal.PCompositeInstructionIf $2 $4 }
                     | 'if' Exp 'then' Instruction 'else' Instruction { AbsPascal.PCompositeInstructionIfElse $2 $4 $6 }
                     | 'repeat' ListInstruction 'until' Exp { AbsPascal.PCompositeInstructionRepeat $2 $4 }
                     | 'for' Id ':=' Exp 'to' Exp 'do' Instruction { AbsPascal.PCompositeInstructionForTo $2 $4 $6 $8 }
                     | 'for' Id ':=' Exp 'downto' Exp 'do' Instruction { AbsPascal.PCompositeInstructionForDownTo $2 $4 $6 $8 }
Parms :: { Parms }
Parms : {- empty -} { AbsPascal.PParamsEmpty }
      | '(' ListExp ')' { AbsPascal.PParms $2 }
ListExp :: { [Exp] }
ListExp : {- empty -} { [] }
        | Exp { (:[]) $1 }
        | Exp ',' ListExp { (:) $1 $3 }
Exp :: { Exp }
Exp : Exp1 { AbsPascal.PExp $1 }
    | 'not' Exp1 { AbsPascal.PNotExp $2 }
    | Exp2 { AbsPascal.PGeneralExpSimple $1 }
    | Exp GenCom Exp2 { AbsPascal.PGeneralExp $1 $2 $3 }
    | Exp1 { $1 }
GenCom :: { GenCom }
GenCom : '>' { AbsPascal.PGeneralExpMayor }
       | '<' { AbsPascal.PGeneralExpMinor }
       | '=' { AbsPascal.PGeneralExpEqual }
       | '>=' { AbsPascal.PGeneralExpMayorEqual }
       | '<=' { AbsPascal.PGeneralExpMinorEqual }
       | '<>' { AbsPascal.PGeneralExpDistinct }
Exp2 :: { Exp }
Exp2 : Exp3 { AbsPascal.PSimpleExpTerm $1 }
     | Exp2 AddCom Exp3 { AbsPascal.PSimpleExp $1 $2 $3 }
     | Exp3 { $1 }
Exp1 :: { Exp }
Exp1 : '-' Exp2 { AbsPascal.PSimpleExpInvSign $2 } | Exp2 { $1 }
AddCom :: { AddCom }
AddCom : '+' { AbsPascal.PSimpleExpAdd }
       | 'or' { AbsPascal.PSimpleExpEquals }
       | '-' { AbsPascal.PSimpleExpMinus }
Exp3 :: { Exp }
Exp3 : Exp4 { AbsPascal.PTermFactor $1 }
     | Exp3 MulCom Exp4 { AbsPascal.PTermExp $1 $2 $3 }
     | Exp4 { $1 }
MulCom :: { MulCom }
MulCom : '*' { AbsPascal.PTermExpMul }
       | '/' { AbsPascal.PTermExpDiv1 }
       | 'div' { AbsPascal.PTermExpDiv2 }
       | 'mod' { AbsPascal.PTermExpMod }
       | 'and' { AbsPascal.PTermExpAnd }
Exp4 :: { Exp }
Exp4 : Literal { AbsPascal.PFactorLit $1 }
     | Id { AbsPascal.PFactorId $1 }
     | Id '.' ListAccId { AbsPascal.PFactorAccId $1 $3 }
     | Id Parms { AbsPascal.PFactorCall $1 $2 }
     | '(' Exp ')' { $2 }
ListAccId :: { [AccId] }
ListAccId : {- empty -} { [] }
          | AccId { (:[]) $1 }
          | AccId '.' ListAccId { (:) $1 $3 }
AccId :: { AccId }
AccId : Id { AbsPascal.PAccId $1 }
ListConst :: { [Const] }
ListConst : {- empty -} { [] }
          | ListConst Const ';' { flip (:) $1 $2 }
ListVar :: { [Var] }
ListVar : {- empty -} { [] } | ListVar Var ';' { flip (:) $1 $2 }
ListType :: { [Type] }
ListType : {- empty -} { [] }
         | ListType Type ';' { flip (:) $1 $2 }
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

