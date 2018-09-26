{-# OPTIONS_GHC -fno-warn-incomplete-patterns #-}
module PrintPascal where

-- pretty-printer generated by the BNF converter

import AbsPascal
import Data.Char


-- the top-level printing method
printTree :: Print a => a -> String
printTree = render . prt 0

type Doc = [ShowS] -> [ShowS]

doc :: ShowS -> Doc
doc = (:)

render :: Doc -> String
render d = rend 0 (map ($ "") $ d []) "" where
  rend i ss = case ss of
    "["      :ts -> showChar '[' . rend i ts
    "("      :ts -> showChar '(' . rend i ts
    "{"      :ts -> showChar '{' . new (i+1) . rend (i+1) ts
    "}" : ";":ts -> new (i-1) . space "}" . showChar ';' . new (i-1) . rend (i-1) ts
    "}"      :ts -> new (i-1) . showChar '}' . new (i-1) . rend (i-1) ts
    ";"      :ts -> showChar ';' . new i . rend i ts
    t  : "," :ts -> showString t . space "," . rend i ts
    t  : ")" :ts -> showString t . showChar ')' . rend i ts
    t  : "]" :ts -> showString t . showChar ']' . rend i ts
    t        :ts -> space t . rend i ts
    _            -> id
  new i   = showChar '\n' . replicateS (2*i) (showChar ' ') . dropWhile isSpace
  space t = showString t . (\s -> if null s then "" else (' ':s))

parenth :: Doc -> Doc
parenth ss = doc (showChar '(') . ss . doc (showChar ')')

concatS :: [ShowS] -> ShowS
concatS = foldr (.) id

concatD :: [Doc] -> Doc
concatD = foldr (.) id

replicateS :: Int -> ShowS -> ShowS
replicateS n f = concatS (replicate n f)

-- the printer class does the job
class Print a where
  prt :: Int -> a -> Doc
  prtList :: Int -> [a] -> Doc
  prtList i = concatD . map (prt i)

instance Print a => Print [a] where
  prt = prtList

instance Print Char where
  prt _ s = doc (showChar '\'' . mkEsc '\'' s . showChar '\'')
  prtList _ s = doc (showChar '"' . concatS (map (mkEsc '"') s) . showChar '"')

mkEsc :: Char -> Char -> ShowS
mkEsc q s = case s of
  _ | s == q -> showChar '\\' . showChar s
  '\\'-> showString "\\\\"
  '\n' -> showString "\\n"
  '\t' -> showString "\\t"
  _ -> showChar s

prPrec :: Int -> Int -> Doc -> Doc
prPrec i j = if j<i then parenth else id


instance Print Integer where
  prt _ x = doc (shows x)


instance Print Double where
  prt _ x = doc (shows x)



instance Print Id where
  prt _ (Id i) = doc (showString ( i))
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])


instance Print Program where
  prt i e = case e of
    PProgram id block -> prPrec i 0 (concatD [doc (showString "program"), prt 0 id, doc (showString ";"), prt 0 block])

instance Print Block where
  prt i e = case e of
    PBlock parts body -> prPrec i 0 (concatD [prt 0 parts, prt 0 body, doc (showString ".")])

instance Print Parts where
  prt i e = case e of
    PPart consts types vars procsyfuncss -> prPrec i 0 (concatD [prt 0 consts, prt 0 types, prt 0 vars, prt 0 procsyfuncss])

instance Print Consts where
  prt i e = case e of
    PPartConstEmpty -> prPrec i 0 (concatD [])
    PPartConst consts const -> prPrec i 0 (concatD [doc (showString "const"), prt 0 consts, prt 0 const, doc (showString ";")])

instance Print Const where
  prt i e = case e of
    PConst id literal -> prPrec i 0 (concatD [prt 0 id, doc (showString "="), prt 0 literal])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ";"), prt 0 xs])
instance Print Literal where
  prt i e = case e of
    PValInteger n -> prPrec i 0 (concatD [prt 0 n])
    PValDouble d -> prPrec i 0 (concatD [prt 0 d])
    PValString str -> prPrec i 0 (concatD [prt 0 str])
    PValChar c -> prPrec i 0 (concatD [prt 0 c])

instance Print Vars where
  prt i e = case e of
    PPartVarsEmpty -> prPrec i 0 (concatD [])
    PPartVars vars var -> prPrec i 0 (concatD [doc (showString "var"), prt 0 vars, prt 0 var, doc (showString ";")])

instance Print Var where
  prt i e = case e of
    PVar ids customtype -> prPrec i 0 (concatD [prt 0 ids, doc (showString ":"), prt 0 customtype])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ";"), prt 0 xs])
instance Print Types where
  prt i e = case e of
    PPartTypesEmpty -> prPrec i 0 (concatD [])
    PPartTypes types type_ -> prPrec i 0 (concatD [doc (showString "type"), prt 0 types, prt 0 type_, doc (showString ";")])

instance Print Type where
  prt i e = case e of
    PType id customtype -> prPrec i 0 (concatD [prt 0 id, doc (showString "="), prt 0 customtype])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ";"), prt 0 xs])
instance Print CustomType where
  prt i e = case e of
    PCustomTypeEnum ids -> prPrec i 0 (concatD [doc (showString "("), prt 0 ids, doc (showString ")")])
    PCustomTypeSubRange rangetype1 rangetype2 -> prPrec i 0 (concatD [prt 0 rangetype1, doc (showString ".."), prt 0 rangetype2])
    PCustomTypePointer id -> prPrec i 0 (concatD [doc (showString "^"), prt 0 id])
    PTypeArray arrtypes customtype -> prPrec i 0 (concatD [doc (showString "array"), doc (showString "["), prt 0 arrtypes, doc (showString "]"), doc (showString "of"), prt 0 customtype])
    PTypeRecord fieldss -> prPrec i 0 (concatD [doc (showString "record"), prt 0 fieldss, doc (showString "end")])
    PCustomTypeId id -> prPrec i 0 (concatD [prt 0 id])

instance Print RangeType where
  prt i e = case e of
    PRangeTypeId id -> prPrec i 0 (concatD [prt 0 id])
    PRangeTypeLiteral literal -> prPrec i 0 (concatD [prt 0 literal])

instance Print ArrType where
  prt i e = case e of
    PTypeArrayId id -> prPrec i 0 (concatD [prt 0 id])
    PTypeArrayLiteral literal -> prPrec i 0 (concatD [prt 0 literal])
    PTypeArrayRange rangetype1 rangetype2 -> prPrec i 0 (concatD [prt 0 rangetype1, doc (showString ".."), prt 0 rangetype2])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print Fields where
  prt i e = case e of
    PRecordFields ids customtype -> prPrec i 0 (concatD [prt 0 ids, doc (showString ":"), prt 0 customtype])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ";"), prt 0 xs])
instance Print ProcsYFuncs where
  prt i e = case e of
    PIdProcedure id decparms blockprocfun -> prPrec i 0 (concatD [doc (showString "procedure"), prt 0 id, doc (showString "("), prt 0 decparms, doc (showString ")"), doc (showString ";"), prt 0 blockprocfun, doc (showString ";")])
    PIdFunction id1 decparms id2 blockprocfun -> prPrec i 0 (concatD [doc (showString "function"), prt 0 id1, doc (showString "("), prt 0 decparms, doc (showString ")"), doc (showString ":"), prt 0 id2, doc (showString ";"), prt 0 blockprocfun, doc (showString ";")])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, prt 0 xs])
instance Print DecParm where
  prt i e = case e of
    PDecParamVar ids id -> prPrec i 0 (concatD [doc (showString "var"), prt 0 ids, doc (showString ":"), prt 0 id])
    PDecParam ids id -> prPrec i 0 (concatD [prt 0 ids, doc (showString ":"), prt 0 id])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ";"), prt 0 xs])
instance Print BlockProcFun where
  prt i e = case e of
    PBlockProcFun parts body -> prPrec i 0 (concatD [prt 0 parts, prt 0 body])

instance Print Body where
  prt i e = case e of
    PBody instructions instruction -> prPrec i 0 (concatD [doc (showString "begin"), prt 0 instructions, prt 0 instruction, doc (showString "end")])

instance Print Instruction where
  prt i e = case e of
    PInstruction -> prPrec i 0 (concatD [])
    PListSimpleInstruction simpleinstruction -> prPrec i 0 (concatD [prt 0 simpleinstruction])
    PListCompositeInstruction structuredinstruction -> prPrec i 0 (concatD [prt 0 structuredinstruction])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ";"), prt 0 xs])
instance Print SimpleInstruction where
  prt i e = case e of
    PSimpleInstructionAssignment accids exp -> prPrec i 0 (concatD [prt 0 accids, doc (showString ":="), prt 0 exp])
    PSimpleInstructionProc callproc -> prPrec i 0 (concatD [prt 0 callproc])

instance Print StructuredInstruction where
  prt i e = case e of
    PStructuredInstructionBegEnd instructions instruction -> prPrec i 0 (concatD [doc (showString "begin"), prt 0 instructions, prt 0 instruction, doc (showString "end")])
    PStructuredInstructionCond conditionalinstruction -> prPrec i 0 (concatD [prt 0 conditionalinstruction])
    PStructuredInstructionComp compositeinstruction -> prPrec i 0 (concatD [prt 0 compositeinstruction])

instance Print ConditionalInstruction where
  prt i e = case e of
    PCompositeInstructionIf exp instruction -> prPrec i 0 (concatD [doc (showString "if"), prt 0 exp, doc (showString "then"), prt 0 instruction])
    PCompositeInstructionIfElse exp instruction1 instruction2 -> prPrec i 0 (concatD [doc (showString "if"), prt 0 exp, doc (showString "then"), prt 0 instruction1, doc (showString "else"), prt 0 instruction2])
    PCompositeInstructionCase exp ramass -> prPrec i 0 (concatD [doc (showString "case"), prt 0 exp, doc (showString "of"), prt 0 ramass, doc (showString "end")])

instance Print CompositeInstruction where
  prt i e = case e of
    PCompositeInstructionRepeat instructions instruction exp -> prPrec i 0 (concatD [doc (showString "repeat"), prt 0 instructions, prt 0 instruction, doc (showString "until"), prt 0 exp])
    PCompositeInstructionForTo id exp1 exp2 instruction -> prPrec i 0 (concatD [doc (showString "for"), prt 0 id, doc (showString ":="), prt 0 exp1, doc (showString "to"), prt 0 exp2, doc (showString "do"), prt 0 instruction])
    PCompositeInstructionForDownTo id exp1 exp2 instruction -> prPrec i 0 (concatD [doc (showString "for"), prt 0 id, doc (showString ":="), prt 0 exp1, doc (showString "downto"), prt 0 exp2, doc (showString "do"), prt 0 instruction])
    PCompositeInstructionWhile exp body -> prPrec i 0 (concatD [doc (showString "while"), prt 0 exp, doc (showString "do"), prt 0 body])

instance Print Ramas where
  prt i e = case e of
    PCaseRamCase constcases bodyramacase -> prPrec i 0 (concatD [prt 0 constcases, doc (showString ":"), prt 0 bodyramacase])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ";"), prt 0 xs])
instance Print ConstCase where
  prt i e = case e of
    PConstCaseLiteral literal -> prPrec i 0 (concatD [prt 0 literal])
    PConsCaseId id -> prPrec i 0 (concatD [prt 0 id])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print BodyRamaCase where
  prt i e = case e of
    PBodyRamaCaseOne instruction -> prPrec i 0 (concatD [prt 0 instruction])
    PBodyRamaCaseMany body -> prPrec i 0 (concatD [prt 0 body])

instance Print CallFunProc where
  prt i e = case e of
    PCallFuncProc id exps -> prPrec i 0 (concatD [prt 0 id, doc (showString "("), prt 0 exps, doc (showString ")")])

instance Print CallProc where
  prt i e = case e of
    PCallProc id expcs expc -> prPrec i 0 (concatD [prt 0 id, doc (showString "("), prt 0 expcs, prt 0 expc, doc (showString ")")])
    PCallProcEmpty id -> prPrec i 0 (concatD [prt 0 id])

instance Print ExpC where
  prt i e = case e of
    PExpC exp -> prPrec i 0 (concatD [prt 0 exp])
  prtList _ [] = (concatD [])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print Exp where
  prt i e = case e of
    PNotExp exp -> prPrec i 0 (concatD [doc (showString "not"), prt 1 exp])
    PGeneralExp exp1 gencom exp2 -> prPrec i 1 (concatD [prt 1 exp1, prt 0 gencom, prt 2 exp2])
    PSimpleExpInvSign exp -> prPrec i 2 (concatD [doc (showString "-"), prt 3 exp])
    PSimpleExpPreSum exp -> prPrec i 2 (concatD [doc (showString "+"), prt 3 exp])
    PSimpleExp exp1 addcom exp2 -> prPrec i 2 (concatD [prt 2 exp1, prt 0 addcom, prt 3 exp2])
    PTermExp exp1 mulcom exp2 -> prPrec i 3 (concatD [prt 3 exp1, prt 0 mulcom, prt 4 exp2])
    PFactorLit literal -> prPrec i 4 (concatD [prt 0 literal])
    PFactorId accid -> prPrec i 4 (concatD [prt 0 accid])
    PFactorAccId accid accids -> prPrec i 4 (concatD [prt 0 accid, doc (showString "."), prt 0 accids])
    PFactorCall callfunproc -> prPrec i 4 (concatD [prt 0 callfunproc])
  prtList _ [] = (concatD [])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])
instance Print GenCom where
  prt i e = case e of
    PGeneralExpMayor -> prPrec i 0 (concatD [doc (showString ">")])
    PGeneralExpMinor -> prPrec i 0 (concatD [doc (showString "<")])
    PGeneralExpEqual -> prPrec i 0 (concatD [doc (showString "=")])
    PGeneralExpMayorEqual -> prPrec i 0 (concatD [doc (showString ">=")])
    PGeneralExpMinorEqual -> prPrec i 0 (concatD [doc (showString "<=")])
    PGeneralExpDistinct -> prPrec i 0 (concatD [doc (showString "<>")])

instance Print AddCom where
  prt i e = case e of
    PSimpleExpAdd -> prPrec i 0 (concatD [doc (showString "+")])
    PSimpleExpEquals -> prPrec i 0 (concatD [doc (showString "or")])
    PSimpleExpMinus -> prPrec i 0 (concatD [doc (showString "-")])

instance Print MulCom where
  prt i e = case e of
    PTermExpMul -> prPrec i 0 (concatD [doc (showString "*")])
    PTermExpDiv1 -> prPrec i 0 (concatD [doc (showString "/")])
    PTermExpDiv2 -> prPrec i 0 (concatD [doc (showString "div")])
    PTermExpMod -> prPrec i 0 (concatD [doc (showString "mod")])
    PTermExpAnd -> prPrec i 0 (concatD [doc (showString "and")])

instance Print AccId where
  prt i e = case e of
    PAccId id -> prPrec i 0 (concatD [prt 0 id])
    PtrAccId1 id -> prPrec i 0 (concatD [prt 0 id, doc (showString "^")])
    PtrAccId2 id -> prPrec i 0 (concatD [prt 0 id, doc (showString "^^")])
    PtrArrayAccess arrayaccess -> prPrec i 0 (concatD [prt 0 arrayaccess])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString "."), prt 0 xs])
instance Print ArrayAccess where
  prt i e = case e of
    PArrayAccess id typeaccesss -> prPrec i 0 (concatD [prt 0 id, doc (showString "["), prt 0 typeaccesss, doc (showString "]")])

instance Print TypeAccess where
  prt i e = case e of
    PTypeAccessLiteral exp -> prPrec i 0 (concatD [prt 0 exp])
  prtList _ [x] = (concatD [prt 0 x])
  prtList _ (x:xs) = (concatD [prt 0 x, doc (showString ","), prt 0 xs])

