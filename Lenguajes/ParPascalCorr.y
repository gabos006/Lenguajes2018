-- This Happy file was machine-generated by the BNF converter
{
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParPascalCorr where
import AbsPascalCorr
import LexPascalCorr
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
%name pBody Body
%name pListInstruction ListInstruction
%name pInstruction Instruction
%name pSimpleInstruction SimpleInstruction
%name pParms Parms
%name pListExps ListExps
%name pExps Exps
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
  ',' { PT _ (TS _ 3) }
  '.' { PT _ (TS _ 4) }
  '..' { PT _ (TS _ 5) }
  ':' { PT _ (TS _ 6) }
  ':=' { PT _ (TS _ 7) }
  ';' { PT _ (TS _ 8) }
  '=' { PT _ (TS _ 9) }
  '[' { PT _ (TS _ 10) }
  ']' { PT _ (TS _ 11) }
  '^' { PT _ (TS _ 12) }
  'array' { PT _ (TS _ 13) }
  'begin' { PT _ (TS _ 14) }
  'const' { PT _ (TS _ 15) }
  'end' { PT _ (TS _ 16) }
  'of' { PT _ (TS _ 17) }
  'program' { PT _ (TS _ 18) }
  'record' { PT _ (TS _ 19) }
  'type' { PT _ (TS _ 20) }
  'var' { PT _ (TS _ 21) }

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
Program : 'program' Id ';' Block { AbsPascalCorr.PProgram $2 $4 }
Block :: { Block }
Block : Parts Body '.' { AbsPascalCorr.PBlock $1 $2 }
Parts :: { Parts }
Parts : Consts Types Vars { AbsPascalCorr.PPart $1 $2 $3 }
Consts :: { Consts }
Consts : {- empty -} { AbsPascalCorr.PPartConstEmpty }
       | 'const' ListConst Const ';' { AbsPascalCorr.PPartConst (reverse $2) $3 }
Const :: { Const }
Const : Id '=' Literal { AbsPascalCorr.PConst $1 $3 }
Literal :: { Literal }
Literal : Integer { AbsPascalCorr.PValInteger $1 }
        | Double { AbsPascalCorr.PValDouble $1 }
        | String { AbsPascalCorr.PValString $1 }
        | Char { AbsPascalCorr.PValChar $1 }
Vars :: { Vars }
Vars : {- empty -} { AbsPascalCorr.PPartVarsEmpty }
     | 'var' ListVar Var ';' { AbsPascalCorr.PPartVars (reverse $2) $3 }
Var :: { Var }
Var : ListId ':' Id { AbsPascalCorr.PVar $1 $3 }
Types :: { Types }
Types : {- empty -} { AbsPascalCorr.PPartTypesEmpty }
      | 'type' ListType Type ';' { AbsPascalCorr.PPartTypes (reverse $2) $3 }
Type :: { Type }
Type : Id '=' CustomType { AbsPascalCorr.PType $1 $3 }
CustomType :: { CustomType }
CustomType : '(' ListId ')' { AbsPascalCorr.PCustomTypeEnum $2 }
           | RangeType '..' RangeType { AbsPascalCorr.PCustomTypeSubRange $1 $3 }
           | '^' Id { AbsPascalCorr.PCustomTypePointer $2 }
           | 'array' '[' ArrType ']' 'of' Id { AbsPascalCorr.PTypeArray $3 $6 }
           | 'record' ListFields 'end' { AbsPascalCorr.PTypeRecord $2 }
           | Id { AbsPascalCorr.PCustomTypeId $1 }
RangeType :: { RangeType }
RangeType : Id { AbsPascalCorr.PRangeTypeId $1 }
          | Char { AbsPascalCorr.PRangeTypeChar $1 }
          | Integer { AbsPascalCorr.PRangeTypeInteger $1 }
ArrType :: { ArrType }
ArrType : RangeType '..' RangeType { AbsPascalCorr.PTypeArrayLType $1 $3 }
ListFields :: { [Fields] }
ListFields : {- empty -} { [] }
           | Fields { (:[]) $1 }
           | Fields ';' ListFields { (:) $1 $3 }
Fields :: { Fields }
Fields : Id ':' CustomType { AbsPascalCorr.PRecordFields $1 $3 }
Body :: { Body }
Body : 'begin' ListInstruction 'end' { AbsPascalCorr.PBody $2 }
ListInstruction :: { [Instruction] }
ListInstruction : {- empty -} { [] }
                | Instruction { (:[]) $1 }
                | Instruction ';' ListInstruction { (:) $1 $3 }
Instruction :: { Instruction }
Instruction : SimpleInstruction { AbsPascalCorr.PListSimpleInstruction $1 }
SimpleInstruction :: { SimpleInstruction }
SimpleInstruction : Id ':=' Exps { AbsPascalCorr.PSimpleInstructionAssignment $1 $3 }
                  | Id Parms { AbsPascalCorr.PSimpleInstructionProcFunc $1 $2 }
Parms :: { Parms }
Parms : {- empty -} { AbsPascalCorr.PParamsEmpty }
      | '(' ListExps ')' { AbsPascalCorr.PParms $2 }
ListExps :: { [Exps] }
ListExps : {- empty -} { [] }
         | Exps { (:[]) $1 }
         | Exps ',' ListExps { (:) $1 $3 }
Exps :: { Exps }
Exps : String { AbsPascalCorr.PFactorString $1 }
     | Id { AbsPascalCorr.PFactorId $1 }
     | Integer { AbsPascalCorr.PFactorInteger $1 }
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
