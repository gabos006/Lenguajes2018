{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParPascal where
import AbsPascal
import LexPascal
import ErrM
import qualified Data.Array as Happy_Data_Array
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))

-- parser produced by Happy Version 1.19.4

newtype HappyAbsSyn  = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn53 :: (Integer) -> (HappyAbsSyn )
happyIn53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn53 #-}
happyOut53 :: (HappyAbsSyn ) -> (Integer)
happyOut53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut53 #-}
happyIn54 :: (Double) -> (HappyAbsSyn )
happyIn54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn ) -> (Double)
happyOut54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyIn55 :: (String) -> (HappyAbsSyn )
happyIn55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn55 #-}
happyOut55 :: (HappyAbsSyn ) -> (String)
happyOut55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut55 #-}
happyIn56 :: (Char) -> (HappyAbsSyn )
happyIn56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn ) -> (Char)
happyOut56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: (Id) -> (HappyAbsSyn )
happyIn57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn ) -> (Id)
happyOut57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyIn58 :: (Program) -> (HappyAbsSyn )
happyIn58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn58 #-}
happyOut58 :: (HappyAbsSyn ) -> (Program)
happyOut58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut58 #-}
happyIn59 :: (Block) -> (HappyAbsSyn )
happyIn59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn59 #-}
happyOut59 :: (HappyAbsSyn ) -> (Block)
happyOut59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut59 #-}
happyIn60 :: (Parts) -> (HappyAbsSyn )
happyIn60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn60 #-}
happyOut60 :: (HappyAbsSyn ) -> (Parts)
happyOut60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut60 #-}
happyIn61 :: (Consts) -> (HappyAbsSyn )
happyIn61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn61 #-}
happyOut61 :: (HappyAbsSyn ) -> (Consts)
happyOut61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut61 #-}
happyIn62 :: (Const) -> (HappyAbsSyn )
happyIn62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn62 #-}
happyOut62 :: (HappyAbsSyn ) -> (Const)
happyOut62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut62 #-}
happyIn63 :: (Literal) -> (HappyAbsSyn )
happyIn63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn63 #-}
happyOut63 :: (HappyAbsSyn ) -> (Literal)
happyOut63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut63 #-}
happyIn64 :: (Vars) -> (HappyAbsSyn )
happyIn64 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn64 #-}
happyOut64 :: (HappyAbsSyn ) -> (Vars)
happyOut64 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut64 #-}
happyIn65 :: (Var) -> (HappyAbsSyn )
happyIn65 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn65 #-}
happyOut65 :: (HappyAbsSyn ) -> (Var)
happyOut65 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut65 #-}
happyIn66 :: (Types) -> (HappyAbsSyn )
happyIn66 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn66 #-}
happyOut66 :: (HappyAbsSyn ) -> (Types)
happyOut66 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut66 #-}
happyIn67 :: (Type) -> (HappyAbsSyn )
happyIn67 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn67 #-}
happyOut67 :: (HappyAbsSyn ) -> (Type)
happyOut67 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut67 #-}
happyIn68 :: (CustomType) -> (HappyAbsSyn )
happyIn68 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn68 #-}
happyOut68 :: (HappyAbsSyn ) -> (CustomType)
happyOut68 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut68 #-}
happyIn69 :: (RangeType) -> (HappyAbsSyn )
happyIn69 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn69 #-}
happyOut69 :: (HappyAbsSyn ) -> (RangeType)
happyOut69 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut69 #-}
happyIn70 :: ([ArrType]) -> (HappyAbsSyn )
happyIn70 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn70 #-}
happyOut70 :: (HappyAbsSyn ) -> ([ArrType])
happyOut70 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut70 #-}
happyIn71 :: (ArrType) -> (HappyAbsSyn )
happyIn71 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn71 #-}
happyOut71 :: (HappyAbsSyn ) -> (ArrType)
happyOut71 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut71 #-}
happyIn72 :: ([Fields]) -> (HappyAbsSyn )
happyIn72 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn72 #-}
happyOut72 :: (HappyAbsSyn ) -> ([Fields])
happyOut72 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut72 #-}
happyIn73 :: (Fields) -> (HappyAbsSyn )
happyIn73 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn73 #-}
happyOut73 :: (HappyAbsSyn ) -> (Fields)
happyOut73 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut73 #-}
happyIn74 :: ([ProcsYFuncs]) -> (HappyAbsSyn )
happyIn74 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn74 #-}
happyOut74 :: (HappyAbsSyn ) -> ([ProcsYFuncs])
happyOut74 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut74 #-}
happyIn75 :: (ProcsYFuncs) -> (HappyAbsSyn )
happyIn75 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn75 #-}
happyOut75 :: (HappyAbsSyn ) -> (ProcsYFuncs)
happyOut75 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut75 #-}
happyIn76 :: ([DecParm]) -> (HappyAbsSyn )
happyIn76 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn76 #-}
happyOut76 :: (HappyAbsSyn ) -> ([DecParm])
happyOut76 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut76 #-}
happyIn77 :: (DecParm) -> (HappyAbsSyn )
happyIn77 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn77 #-}
happyOut77 :: (HappyAbsSyn ) -> (DecParm)
happyOut77 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut77 #-}
happyIn78 :: (BlockProcFun) -> (HappyAbsSyn )
happyIn78 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn78 #-}
happyOut78 :: (HappyAbsSyn ) -> (BlockProcFun)
happyOut78 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut78 #-}
happyIn79 :: (Body) -> (HappyAbsSyn )
happyIn79 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn79 #-}
happyOut79 :: (HappyAbsSyn ) -> (Body)
happyOut79 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut79 #-}
happyIn80 :: ([Instruction]) -> (HappyAbsSyn )
happyIn80 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn80 #-}
happyOut80 :: (HappyAbsSyn ) -> ([Instruction])
happyOut80 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut80 #-}
happyIn81 :: (Instruction) -> (HappyAbsSyn )
happyIn81 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn81 #-}
happyOut81 :: (HappyAbsSyn ) -> (Instruction)
happyOut81 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut81 #-}
happyIn82 :: (SimpleInstruction) -> (HappyAbsSyn )
happyIn82 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn82 #-}
happyOut82 :: (HappyAbsSyn ) -> (SimpleInstruction)
happyOut82 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut82 #-}
happyIn83 :: (CompositeInstruction) -> (HappyAbsSyn )
happyIn83 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn83 #-}
happyOut83 :: (HappyAbsSyn ) -> (CompositeInstruction)
happyOut83 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut83 #-}
happyIn84 :: ([Ramas]) -> (HappyAbsSyn )
happyIn84 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn84 #-}
happyOut84 :: (HappyAbsSyn ) -> ([Ramas])
happyOut84 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut84 #-}
happyIn85 :: (Ramas) -> (HappyAbsSyn )
happyIn85 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn85 #-}
happyOut85 :: (HappyAbsSyn ) -> (Ramas)
happyOut85 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut85 #-}
happyIn86 :: ([ConstCase]) -> (HappyAbsSyn )
happyIn86 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn86 #-}
happyOut86 :: (HappyAbsSyn ) -> ([ConstCase])
happyOut86 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut86 #-}
happyIn87 :: (ConstCase) -> (HappyAbsSyn )
happyIn87 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn87 #-}
happyOut87 :: (HappyAbsSyn ) -> (ConstCase)
happyOut87 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut87 #-}
happyIn88 :: (BodyRamaCase) -> (HappyAbsSyn )
happyIn88 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn88 #-}
happyOut88 :: (HappyAbsSyn ) -> (BodyRamaCase)
happyOut88 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut88 #-}
happyIn89 :: (CallFunProc) -> (HappyAbsSyn )
happyIn89 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn89 #-}
happyOut89 :: (HappyAbsSyn ) -> (CallFunProc)
happyOut89 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut89 #-}
happyIn90 :: ([Exp]) -> (HappyAbsSyn )
happyIn90 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn90 #-}
happyOut90 :: (HappyAbsSyn ) -> ([Exp])
happyOut90 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut90 #-}
happyIn91 :: (Exp) -> (HappyAbsSyn )
happyIn91 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn91 #-}
happyOut91 :: (HappyAbsSyn ) -> (Exp)
happyOut91 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut91 #-}
happyIn92 :: (Exp) -> (HappyAbsSyn )
happyIn92 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn92 #-}
happyOut92 :: (HappyAbsSyn ) -> (Exp)
happyOut92 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut92 #-}
happyIn93 :: (GenCom) -> (HappyAbsSyn )
happyIn93 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn93 #-}
happyOut93 :: (HappyAbsSyn ) -> (GenCom)
happyOut93 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut93 #-}
happyIn94 :: (Exp) -> (HappyAbsSyn )
happyIn94 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn94 #-}
happyOut94 :: (HappyAbsSyn ) -> (Exp)
happyOut94 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut94 #-}
happyIn95 :: (AddCom) -> (HappyAbsSyn )
happyIn95 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn95 #-}
happyOut95 :: (HappyAbsSyn ) -> (AddCom)
happyOut95 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut95 #-}
happyIn96 :: (Exp) -> (HappyAbsSyn )
happyIn96 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn96 #-}
happyOut96 :: (HappyAbsSyn ) -> (Exp)
happyOut96 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut96 #-}
happyIn97 :: (MulCom) -> (HappyAbsSyn )
happyIn97 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn97 #-}
happyOut97 :: (HappyAbsSyn ) -> (MulCom)
happyOut97 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut97 #-}
happyIn98 :: (Exp) -> (HappyAbsSyn )
happyIn98 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn98 #-}
happyOut98 :: (HappyAbsSyn ) -> (Exp)
happyOut98 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut98 #-}
happyIn99 :: ([AccId]) -> (HappyAbsSyn )
happyIn99 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn99 #-}
happyOut99 :: (HappyAbsSyn ) -> ([AccId])
happyOut99 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut99 #-}
happyIn100 :: (AccId) -> (HappyAbsSyn )
happyIn100 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn100 #-}
happyOut100 :: (HappyAbsSyn ) -> (AccId)
happyOut100 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut100 #-}
happyIn101 :: (ArrayAccess) -> (HappyAbsSyn )
happyIn101 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn101 #-}
happyOut101 :: (HappyAbsSyn ) -> (ArrayAccess)
happyOut101 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut101 #-}
happyIn102 :: ([TypeAccess]) -> (HappyAbsSyn )
happyIn102 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn102 #-}
happyOut102 :: (HappyAbsSyn ) -> ([TypeAccess])
happyOut102 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut102 #-}
happyIn103 :: (TypeAccess) -> (HappyAbsSyn )
happyIn103 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn103 #-}
happyOut103 :: (HappyAbsSyn ) -> (TypeAccess)
happyOut103 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut103 #-}
happyIn104 :: ([Const]) -> (HappyAbsSyn )
happyIn104 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn104 #-}
happyOut104 :: (HappyAbsSyn ) -> ([Const])
happyOut104 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut104 #-}
happyIn105 :: ([Var]) -> (HappyAbsSyn )
happyIn105 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn105 #-}
happyOut105 :: (HappyAbsSyn ) -> ([Var])
happyOut105 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut105 #-}
happyIn106 :: ([Type]) -> (HappyAbsSyn )
happyIn106 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn106 #-}
happyOut106 :: (HappyAbsSyn ) -> ([Type])
happyOut106 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut106 #-}
happyIn107 :: ([Id]) -> (HappyAbsSyn )
happyIn107 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn107 #-}
happyOut107 :: (HappyAbsSyn ) -> ([Id])
happyOut107 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut107 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\xb9\x02\xc6\x02\xc6\x02\xc6\x02\xa8\x02\x62\x01\xad\x02\xa6\x02\xac\x02\xa3\x02\x07\x00\x23\x01\x23\x01\x23\x01\x64\x01\xa3\x02\x00\x00\x26\x01\x85\x00\xfd\x00\xbc\x02\xb7\x02\xb5\x02\xb5\x02\x96\x02\x5b\x01\x23\x01\x23\x01\x23\x01\x23\x01\xbd\x03\x96\x02\x0d\x00\x0d\x00\x14\x00\xa5\x02\x14\x00\x03\x00\x1a\x00\xac\x03\x1a\x00\x96\x02\x96\x02\x96\x02\x0d\x00\x0d\x00\x00\x00\x00\x00\x00\x00\x96\x02\x9b\x02\x00\x00\xc5\x02\x93\x02\x00\x00\xd0\x00\xd0\x00\xd0\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe9\x00\x00\x00\x00\x00\x00\x00\xa5\x02\x03\x00\xac\x03\x00\x00\xb4\x02\x00\x00\x83\x02\x0d\x00\x1a\x00\x14\x00\x00\x00\x00\x00\x00\x00\x83\x02\xab\x02\x9a\x02\x75\x02\x66\x00\x75\x02\x75\x02\xa1\x02\x73\x02\x73\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3a\x00\x73\x02\x00\x00\x00\x00\x00\x00\x7c\x00\x73\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfe\x00\x73\x02\x73\x02\xa2\x02\x9f\x02\x68\x02\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x68\x02\x00\x00\x91\x02\xb5\x02\x0d\x00\x64\x02\x0d\x00\xb5\x02\x0d\x00\x00\x00\x00\x00\x62\x02\x62\x02\x90\x02\x56\x02\x81\x02\x54\x02\x7b\x02\x52\x02\x52\x02\x52\x02\x52\x02\x7a\x02\x4f\x02\x60\x02\x3b\x02\x4e\x02\x00\x00\x4e\x02\x6d\x02\x46\x02\x48\x02\x61\x02\x47\x02\x3a\x02\x3a\x02\x12\x01\x43\x02\x5f\x02\x35\x02\x5b\x02\x5e\x02\x5c\x02\x59\x02\x29\x02\x29\x02\x58\x02\x00\x00\x00\x00\x25\x02\xe0\x00\x25\x02\x51\x02\x1f\x02\x1f\x02\x45\x02\xf8\xff\x42\x02\x1a\x02\x1a\x02\x00\x00\x1a\x02\x3e\x02\x18\x02\x00\x00\x18\x02\x3c\x02\x13\x02\x13\x02\x13\x02\x13\x02\x27\x02\x11\x02\x0b\x02\x32\x02\x3f\x02\x62\x01\x05\x02\x07\x00\x05\x02\x07\x00\x1d\x02\x23\x01\x00\x00\x39\x02\x23\x01\x23\x01\x23\x01\x94\x00\x07\x00\x00\x00\x38\x02\x37\x02\xf9\xff\x28\x02\xfc\x01\xfc\x01\x00\x02\x00\x00\xb5\x02\x23\x01\xbd\x03\x23\x01\x12\x02\xff\x01\x01\x02\x20\x02\xfe\x01\x02\x02\x0d\x00\x0d\x00\x0d\x00\x00\x00\x0d\x00\x14\x00\x1a\x00\x1a\x00\xea\x01\x0d\x00\xa5\x02\xac\x03\x1b\x02\xe5\x01\x0c\x02\x09\x02\x07\x02\xdc\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xac\x03\x03\x00\x00\x00\xfb\x01\x0a\x02\x00\x00\x00\x00\x23\x01\x0d\x00\xb5\x02\x0d\x00\xf0\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf6\x01\x00\x00\xd1\x01\x00\x00\xf9\xff\xf9\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xdf\x01\x00\x00\x00\x00\xe8\x01\x00\x00\xe3\x01\x00\x00\x00\x00\xd6\x01\x00\x00\x07\x01\xbd\x01\xc9\x01\xeb\x01\xe1\x01\x00\x00\xb0\x01\x72\x00\x00\x00\x00\x00\xc8\x01\xfb\xff\xcd\x01\x00\x00\x00\x00\x00\x00\x0d\x00\x0d\x00\xb5\x02\xd8\x01\xd5\x01\x07\x00\x00\x00\xc6\x01\xaa\x01\x00\x00\xbb\x01\xb9\x01\xb5\x02\xb5\x02\xc7\x01\xc5\x01\x00\x00\xb4\x01\x00\x00\x00\x00\xc0\x01\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\xc4\x01\x5c\x01\x1c\x00\xbf\x01\x61\x01\xfa\x01\xba\x01\xab\x00\xb6\x01\xea\x00\x56\x04\x7d\x04\x0b\x04\x10\x04\x57\x00\xaa\x00\xab\x01\xa6\x01\xa8\x00\x86\x00\x53\x01\xa0\x01\x1e\x03\x4b\x03\xb4\x00\x98\x01\x84\x03\x96\x03\xb9\x03\xca\x03\xf6\x02\x4d\x00\x00\x01\xf5\x01\x33\x02\x80\x01\x72\x02\x7d\x01\xbe\x02\x7a\x01\xd0\x02\xd9\x00\x98\x00\x06\x00\x74\x00\xa7\x00\x71\x01\x55\x01\x52\x01\x8b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5f\x00\xa9\x00\x45\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7b\x01\x78\x01\x75\x01\x00\x00\x00\x00\x00\x00\x00\x00\xe7\x01\x8d\x02\x26\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x75\x01\x00\x00\x00\x00\x00\x00\x00\x00\x76\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6f\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x11\x03\xda\x01\x7e\x01\xa9\x01\x03\x03\x9b\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5f\x01\x73\x01\x00\x00\x44\x01\x00\x00\x00\x00\x6a\x00\x00\x00\x00\x00\x00\x00\x6c\x01\x6a\x01\x29\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x37\x01\x00\x00\x4e\x00\x00\x00\x00\x00\x00\x00\xf5\x00\x00\x00\x00\x00\x00\x00\xed\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x03\x01\x00\x00\xec\x00\x00\x00\x00\x00\xae\x01\x1e\x00\x45\x04\x0b\x00\x34\x04\x00\x00\xf8\x03\x00\x00\x00\x00\x6c\x04\xf3\x03\x67\x04\xfd\xff\x23\x04\x00\x00\x00\x00\x00\x00\x5b\x00\x00\x00\xe1\x00\x2d\x01\xc8\x00\x00\x00\xda\x02\x73\x03\xe8\x02\xa7\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8e\x01\xf3\x00\x65\x00\x00\x00\xc2\x00\x41\x02\x7f\x02\xc3\x02\xcb\x00\x56\x00\xad\x00\x91\x00\x00\x00\xac\x00\x00\x00\x00\x00\x00\x00\x28\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x91\x00\x8f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x61\x03\x5d\x01\x42\x03\x4f\x01\x52\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa1\x00\x00\x00\x00\x00\x58\x00\x00\x00\x1d\x00\x0e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfe\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x34\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x42\x01\x11\x01\x2c\x03\x00\x00\x00\x00\xe0\x03\x00\x00\x43\x01\x27\x00\x00\x00\x00\x00\x00\x00\x27\x03\x76\x02\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\xc5\xff\xc5\xff\xc5\xff\x00\x00\x00\x00\xbe\xff\x53\xff\xbb\xff\x00\x00\x00\x00\x00\x00\xb0\xff\x00\x00\x53\xff\x53\xff\xa6\xff\x00\x00\x53\xff\x53\xff\xc5\xff\x00\x00\x9b\xff\x00\x00\x00\x00\x00\x00\x89\xff\x89\xff\x89\xff\x00\x00\x00\x00\x00\x00\x81\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\xff\x57\xff\x55\xff\x53\xff\x00\x00\xcd\xff\x52\xff\x00\x00\xc9\xff\x00\x00\x53\xff\x00\x00\xc2\xff\xc1\xff\xc0\xff\xbf\xff\x60\xff\x67\xff\x64\xff\x5a\xff\x7d\xff\x7b\xff\x72\xff\x6d\xff\x66\xff\x5e\xff\x00\x00\x00\x00\x00\x00\x00\x00\xcc\xff\xcb\xff\xca\xff\x00\x00\x5c\xff\x00\x00\x00\x00\x60\xff\x00\x00\x00\x00\x62\xff\x00\x00\x00\x00\x6c\xff\x6b\xff\x68\xff\x6a\xff\x69\xff\x00\x00\x00\x00\x71\xff\x6f\xff\x70\xff\x00\x00\x00\x00\x79\xff\x76\xff\x75\xff\x78\xff\x7a\xff\x77\xff\x00\x00\x00\x00\x00\x00\x80\xff\x00\x00\x00\x00\x60\xff\x83\xff\x84\xff\x98\xff\x97\xff\x00\x00\x95\xff\x00\x00\x9b\xff\x00\x00\x00\x00\x00\x00\x9b\xff\x00\x00\x85\xff\x86\xff\x00\x00\x00\x00\x88\xff\x00\x00\x00\x00\x00\x00\x8c\xff\x00\x00\x00\x00\x00\x00\x00\x00\x9a\xff\x00\x00\x00\x00\xbb\xff\x00\x00\x59\xff\x00\x00\x00\x00\x53\xff\x00\x00\xa1\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa9\xff\xad\xff\xac\xff\x00\x00\x00\x00\x00\x00\xaf\xff\xb2\xff\xb1\xff\x00\x00\xb2\xff\x00\x00\x00\x00\x53\xff\x00\x00\x00\x00\x53\xff\x00\x00\x00\x00\x00\x00\x55\xff\x00\x00\x00\x00\x00\x00\x57\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x53\xff\x00\x00\x00\x00\x00\x00\x00\x00\xb0\xff\xb6\xff\x00\x00\x00\x00\xb0\xff\x00\x00\x53\xff\x00\x00\xa5\xff\x00\x00\x00\x00\xa2\xff\x00\x00\x00\x00\x00\x00\xbe\xff\x9d\xff\x9b\xff\x89\xff\x00\x00\x89\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x81\xff\x00\x00\x5f\xff\x81\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7e\xff\x74\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x53\xff\x51\xff\x54\xff\x56\xff\x58\xff\x65\xff\x63\xff\x5b\xff\x61\xff\x6e\xff\x73\xff\x7c\xff\x7f\xff\x00\x00\x00\x00\x96\xff\x9c\xff\x89\xff\x00\x00\x00\x00\x00\x00\x00\x00\x87\xff\x8a\xff\x8b\xff\x99\xff\xa6\xff\x00\x00\x9e\xff\x00\x00\xa0\xff\xa2\xff\xa2\xff\xa7\xff\xa8\xff\xab\xff\xae\xff\xb7\xff\xb8\xff\x00\x00\xb4\xff\xb9\xff\x00\x00\xbc\xff\x00\x00\xc3\xff\xc7\xff\xc5\xff\xc8\xff\x56\xff\xba\xff\x00\x00\x00\x00\x00\x00\x9f\xff\xc4\xff\xc6\xff\x8e\xff\x91\xff\x93\xff\x00\x00\x00\x00\x82\xff\x5d\xff\x8d\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb5\xff\xc5\xff\x00\x00\x92\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa4\xff\xc5\xff\x90\xff\x8f\xff\x00\x00\xa3\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x04\x00\x01\x00\x0a\x00\x06\x00\x07\x00\x08\x00\x04\x00\x01\x00\x06\x00\x04\x00\x07\x00\x08\x00\x0c\x00\x01\x00\x04\x00\x13\x00\x14\x00\x04\x00\x06\x00\x13\x00\x01\x00\x15\x00\x1f\x00\x1d\x00\x0e\x00\x06\x00\x01\x00\x15\x00\x19\x00\x17\x00\x1e\x00\x1f\x00\x04\x00\x04\x00\x07\x00\x08\x00\x17\x00\x18\x00\x2c\x00\x2f\x00\x26\x00\x0c\x00\x04\x00\x04\x00\x35\x00\x35\x00\x2e\x00\x29\x00\x24\x00\x04\x00\x36\x00\x17\x00\x18\x00\x30\x00\x36\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x03\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x09\x00\x36\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x16\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x16\x00\x04\x00\x04\x00\x36\x00\x36\x00\x1b\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\x04\x00\x23\x00\x36\x00\x04\x00\x0a\x00\x13\x00\x14\x00\x04\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x13\x00\x14\x00\x1a\x00\x0e\x00\x04\x00\x0a\x00\x36\x00\x24\x00\x17\x00\x18\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x13\x00\x24\x00\x15\x00\x26\x00\x27\x00\x0a\x00\x29\x00\x04\x00\x2b\x00\x06\x00\x2d\x00\x36\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x24\x00\x04\x00\x26\x00\x27\x00\x36\x00\x29\x00\x04\x00\x2b\x00\x36\x00\x2d\x00\x21\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x24\x00\x27\x00\x26\x00\x27\x00\x04\x00\x29\x00\x18\x00\x2b\x00\x36\x00\x2d\x00\x26\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x0a\x00\x36\x00\x1f\x00\x2f\x00\x0c\x00\x15\x00\x0c\x00\x04\x00\x2a\x00\x35\x00\x36\x00\x36\x00\x2c\x00\x14\x00\x17\x00\x18\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2f\x00\x30\x00\x35\x00\x36\x00\x24\x00\x0a\x00\x26\x00\x27\x00\x04\x00\x29\x00\x1d\x00\x2b\x00\x0b\x00\x2d\x00\x28\x00\x2f\x00\x30\x00\x24\x00\x32\x00\x2e\x00\x2f\x00\x30\x00\x04\x00\x36\x00\x36\x00\x36\x00\x36\x00\x2e\x00\x2f\x00\x30\x00\x04\x00\x24\x00\x25\x00\x26\x00\x27\x00\x01\x00\x29\x00\x0c\x00\x2b\x00\x04\x00\x2d\x00\x04\x00\x2f\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0e\x00\x2e\x00\x2f\x00\x30\x00\x13\x00\x0a\x00\x15\x00\x1f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x35\x00\x36\x00\x2e\x00\x2f\x00\x30\x00\x0a\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x36\x00\x24\x00\x25\x00\x26\x00\x27\x00\x0a\x00\x29\x00\x1a\x00\x2b\x00\x18\x00\x2d\x00\x34\x00\x2f\x00\x30\x00\x24\x00\x25\x00\x26\x00\x27\x00\x21\x00\x29\x00\x35\x00\x2b\x00\x2f\x00\x2d\x00\x27\x00\x2f\x00\x30\x00\x04\x00\x35\x00\x21\x00\x36\x00\x24\x00\x09\x00\x26\x00\x27\x00\x27\x00\x29\x00\x04\x00\x2b\x00\x36\x00\x2d\x00\x16\x00\x2f\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x21\x00\x36\x00\x04\x00\x07\x00\x08\x00\x0a\x00\x27\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x0a\x00\x07\x00\x08\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x06\x00\x07\x00\x08\x00\x04\x00\x24\x00\x0a\x00\x26\x00\x27\x00\x09\x00\x29\x00\x19\x00\x2b\x00\x04\x00\x2d\x00\x04\x00\x2f\x00\x30\x00\x24\x00\x19\x00\x26\x00\x27\x00\x33\x00\x29\x00\x1a\x00\x2b\x00\x20\x00\x2d\x00\x22\x00\x2f\x00\x30\x00\x0d\x00\x24\x00\x04\x00\x26\x00\x27\x00\x2a\x00\x29\x00\x35\x00\x2b\x00\x34\x00\x2d\x00\x30\x00\x2f\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x31\x00\x32\x00\x33\x00\x34\x00\x28\x00\x0a\x00\x35\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2a\x00\x2c\x00\x2a\x00\x28\x00\x33\x00\x0a\x00\x2c\x00\x2a\x00\x28\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x24\x00\x0a\x00\x26\x00\x27\x00\x1e\x00\x29\x00\x0a\x00\x2b\x00\x1a\x00\x2d\x00\x16\x00\x2f\x00\x30\x00\x24\x00\x15\x00\x26\x00\x27\x00\x0d\x00\x29\x00\x0b\x00\x2b\x00\x08\x00\x2d\x00\x05\x00\x2f\x00\x30\x00\x0c\x00\x24\x00\x1a\x00\x26\x00\x27\x00\x0c\x00\x29\x00\x0c\x00\x2b\x00\x1c\x00\x2d\x00\x1c\x00\x2f\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x35\x00\x1a\x00\x0c\x00\x0a\x00\x02\x00\x0a\x00\x35\x00\x1e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\x02\x00\x25\x00\x0c\x00\x1a\x00\x0a\x00\x35\x00\x14\x00\x0c\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x24\x00\x0a\x00\x26\x00\x27\x00\x0c\x00\x29\x00\x0a\x00\x2b\x00\x35\x00\x2d\x00\x18\x00\x2f\x00\x30\x00\x24\x00\x02\x00\x26\x00\x27\x00\x14\x00\x29\x00\x35\x00\x2b\x00\x0c\x00\x2d\x00\x0c\x00\x2f\x00\x30\x00\x0c\x00\x24\x00\x35\x00\x26\x00\x27\x00\x02\x00\x29\x00\x35\x00\x2b\x00\x1f\x00\x2d\x00\x25\x00\x2f\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0b\x00\x2b\x00\x2e\x00\x1c\x00\x2f\x00\x0a\x00\x35\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x01\x00\x01\x00\x35\x00\x02\x00\x1f\x00\x0a\x00\x0c\x00\x18\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x07\x00\x36\x00\x0a\x00\x36\x00\x24\x00\x0a\x00\x10\x00\x27\x00\x36\x00\x29\x00\x36\x00\x2b\x00\x10\x00\x2d\x00\x35\x00\x2f\x00\x30\x00\x24\x00\x13\x00\x08\x00\x27\x00\x36\x00\x29\x00\x05\x00\x2b\x00\x36\x00\x2d\x00\x08\x00\x2f\x00\x30\x00\x08\x00\x24\x00\x08\x00\x0c\x00\x2d\x00\x0a\x00\x29\x00\x36\x00\x2b\x00\x0c\x00\x2d\x00\x35\x00\x2f\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x18\x00\x36\x00\x04\x00\x35\x00\x0a\x00\x36\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x36\x00\x36\x00\x0c\x00\x0c\x00\x36\x00\x0a\x00\x36\x00\x0a\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1c\x00\x1d\x00\x1e\x00\x05\x00\x24\x00\x0a\x00\x36\x00\x35\x00\x24\x00\x29\x00\x0b\x00\x2b\x00\x36\x00\x2d\x00\x01\x00\x2f\x00\x30\x00\x24\x00\x2e\x00\x2f\x00\x30\x00\x05\x00\x07\x00\x36\x00\x2b\x00\x36\x00\x2d\x00\x13\x00\x2f\x00\x30\x00\x05\x00\x24\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x2b\x00\x36\x00\x2d\x00\x07\x00\x2f\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x36\x00\x05\x00\x35\x00\x31\x00\x0a\x00\x19\x00\x18\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x20\x00\x1a\x00\x22\x00\x35\x00\x2d\x00\x0a\x00\x35\x00\x2f\x00\x35\x00\x04\x00\x2a\x00\x1a\x00\x28\x00\x24\x00\xff\xff\xff\xff\x30\x00\xff\xff\x24\x00\xff\xff\x2b\x00\x35\x00\x2d\x00\x04\x00\x2f\x00\x30\x00\xff\xff\x2d\x00\xff\xff\x2f\x00\x30\x00\x24\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\xff\xff\x04\x00\xff\xff\xff\xff\x2d\x00\x24\x00\x2f\x00\x30\x00\xff\xff\x1a\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\x04\x00\x2e\x00\x2f\x00\x30\x00\x23\x00\x24\x00\xff\xff\xff\xff\xff\xff\x1a\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\x04\x00\x2e\x00\x2f\x00\x30\x00\x23\x00\x24\x00\xff\xff\xff\xff\xff\xff\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x04\x00\xff\xff\x2e\x00\x2f\x00\x30\x00\x24\x00\xff\xff\xff\xff\xff\xff\x04\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x04\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\x24\x00\xff\xff\xff\xff\xff\xff\x1b\x00\x1c\x00\x1d\x00\x1e\x00\xff\xff\xff\xff\x2e\x00\x2f\x00\x30\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\x04\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\x24\x00\x2e\x00\x2f\x00\x30\x00\x04\x00\x24\x00\xff\xff\xff\xff\xff\xff\xff\xff\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x2e\x00\x2f\x00\x30\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x24\x00\x1c\x00\x1d\x00\x1e\x00\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\x24\x00\x2e\x00\x2f\x00\x30\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x2e\x00\x2f\x00\x30\x00\xff\xff\x0a\x00\xff\xff\xff\xff\x1f\x00\x20\x00\x21\x00\x22\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\x1f\x00\x20\x00\x21\x00\x22\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\x1f\x00\x20\x00\x21\x00\x22\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x03\x00\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\x09\x00\x20\x00\x21\x00\x22\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x16\x00\x0a\x00\xff\xff\xff\xff\xff\xff\x1b\x00\x21\x00\x22\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x23\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\x18\x00\x19\x00\xff\xff\xff\xff\xff\xff\x21\x00\x22\x00\xff\xff\x20\x00\xff\xff\x22\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x2a\x00\xff\xff\xff\xff\x0a\x00\xff\xff\x22\x00\x30\x00\xff\xff\x0f\x00\x10\x00\xff\xff\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\x10\x00\x11\x00\x12\x00\xff\xff\xff\xff\x10\x00\x11\x00\x12\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\x10\x00\x11\x00\x12\x00\xff\xff\xff\xff\x10\x00\xff\xff\x12\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\x10\x00\xff\xff\xff\xff\xff\xff\xff\xff\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x10\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x34\x00\xe5\x00\x53\xff\x24\x01\xbd\x00\x8f\x00\x61\x00\xac\x00\x62\x00\x51\x00\x8e\x00\x8f\x00\x94\xff\x4a\x00\xaf\x00\x16\x01\x9e\x00\x34\x00\x4b\x00\xe6\x00\x4a\x00\xe7\x00\xaa\xff\x36\x01\x1e\x01\x4b\x00\x4a\x00\xad\x00\x49\x01\xae\x00\x94\xff\x94\xff\x34\x00\x34\x00\xbb\x00\x8f\x00\x28\x01\x96\x00\x37\x01\x95\x00\x63\x00\x20\x01\x43\x01\x34\x00\x37\x00\x37\x00\x94\xff\xaf\x00\x4c\x00\x34\x00\x9c\x00\x29\x01\x96\x00\x52\x00\x94\xff\x34\x00\x4d\x00\x4e\x00\x4f\x00\x37\x00\x5a\x00\x34\x00\x4d\x00\x4e\x00\x4f\x00\x37\x00\x5b\x00\x93\x00\x34\x00\x4d\x00\x4e\x00\x4f\x00\x37\x00\xd0\x00\x34\x00\x4d\x00\x4e\x00\x4f\x00\x37\x00\x5c\x00\x6f\x00\x34\x00\x93\x00\xb4\x00\x5d\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x34\x00\x2a\x01\x5e\x00\xf5\x00\x34\x00\x3f\x00\xc7\x00\x9e\x00\xaf\x00\xca\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x9d\x00\x9e\x00\x2d\x01\xf3\x00\x34\x00\x3f\x00\xff\xff\x70\x00\x12\x01\x96\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\xe6\x00\x40\x00\xe7\x00\x41\x00\x42\x00\x3f\x00\x43\x00\x61\x00\x44\x00\x62\x00\x45\x00\x9c\x00\x46\x00\x47\x00\xfb\x00\x50\x00\x40\x00\x34\x00\x41\x00\x42\x00\x9c\x00\x43\x00\x34\x00\x44\x00\x93\x00\x45\x00\x99\x00\x46\x00\x47\x00\x01\x01\x50\x00\x40\x00\x9a\x00\x41\x00\x42\x00\x53\x00\x43\x00\x92\x00\x44\x00\xd4\x00\x45\x00\x63\x00\x46\x00\x47\x00\x4f\x00\x50\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x34\x00\x34\x00\x34\x00\x34\x00\x53\x00\x3f\x00\xff\xff\xaa\xff\x95\x00\xf2\x00\x2c\x01\xb3\x00\x71\x00\xe9\x00\x37\x00\xa2\xff\x93\x00\xea\x00\x9b\x00\x95\x00\x96\x00\x35\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x54\x00\x47\x00\x37\x00\xaa\xff\x40\x00\x3f\x00\x41\x00\x42\x00\x53\x00\x43\x00\x89\x00\x44\x00\x0e\x01\x45\x00\xe8\x00\x46\x00\x47\x00\x77\x00\x48\x00\xf9\x00\x56\x00\x47\x00\x53\x00\x93\x00\xb4\x00\x9c\x00\xb4\x00\x78\x00\x56\x00\x47\x00\x10\x01\x40\x00\x00\x01\x6e\x00\x42\x00\xe5\x00\x43\x00\xb3\xff\x44\x00\xaf\x00\x45\x00\xc0\x00\x46\x00\x47\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\xb0\x00\xfc\x00\x56\x00\x47\x00\xe6\x00\x3f\x00\xe7\x00\xb3\xff\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x37\x00\xff\xff\x55\x00\x56\x00\x47\x00\x3f\x00\x66\x00\x67\x00\x68\x00\x69\x00\x6a\x00\x6b\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\xb3\xff\x40\x00\x02\x01\x6e\x00\x42\x00\x3f\x00\x43\x00\xc1\x00\x44\x00\xbd\xff\x45\x00\xc3\x00\x46\x00\x47\x00\x40\x00\x6d\x00\x6e\x00\x42\x00\xbd\xff\x43\x00\xc5\x00\x44\x00\x95\x00\x45\x00\xbd\xff\x46\x00\x47\x00\xb8\x00\x37\x00\x99\x00\xff\xff\x40\x00\x0f\x01\x3f\x01\x42\x00\x9a\x00\x43\x00\xc9\x00\x44\x00\xbd\xff\x45\x00\xd0\x00\x46\x00\x47\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x99\x00\xff\xff\xb8\x00\x8e\x00\x8f\x00\x3f\x00\x9a\x00\xf1\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x34\x00\x4d\x00\x4e\x00\x4f\x00\x37\x00\x3f\x00\x8e\x00\x8f\x00\x44\x01\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\xbc\x00\xbd\x00\x8f\x00\xb8\x00\x40\x00\x3f\x00\x40\x01\x42\x00\xb9\x00\x43\x00\x90\x00\x44\x00\xd1\x00\x45\x00\xd2\x00\x46\x00\x47\x00\x40\x00\x7b\x00\x2e\x01\x42\x00\xd6\x00\x43\x00\xd8\x00\x44\x00\x7c\x00\x45\x00\x7d\x00\x46\x00\x47\x00\xd7\x00\x40\x00\xe0\x00\x30\x01\x42\x00\x7e\x00\x43\x00\x37\x00\x44\x00\x38\x00\x45\x00\x7f\x00\x46\x00\x47\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x34\x00\x4d\x00\x4e\x00\x4f\x00\xe8\x00\x3f\x00\x37\x00\xaa\xff\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\xe9\x00\xea\x00\xe9\x00\xe8\x00\x39\x00\x3f\x00\x58\x00\x5f\x00\x64\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x40\x00\x3f\x00\x03\x01\x42\x00\x88\x00\x43\x00\x21\x01\x44\x00\x8d\x00\x45\x00\x97\x00\x46\x00\x47\x00\x40\x00\x9a\x00\xdd\x00\x42\x00\xb1\x00\x43\x00\xb5\x00\x44\x00\xba\x00\x45\x00\xbe\x00\x46\x00\x47\x00\x4b\x01\x40\x00\x92\x00\xdf\x00\x42\x00\x46\x01\x43\x00\x47\x01\x44\x00\x42\x01\x45\x00\x43\x01\x46\x00\x47\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x37\x00\x92\x00\x3d\x01\x3e\x01\x39\x01\x3f\x00\x58\xff\x38\x01\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x35\x01\x3a\x01\x3b\x01\x26\x01\x92\x00\x3f\x00\x54\xff\x28\x01\x27\x01\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x40\x00\x3f\x00\xe1\x00\x42\x00\x2c\x01\x43\x00\xb7\x00\x44\x00\x37\x00\x45\x00\x7a\x00\x46\x00\x47\x00\x40\x00\x33\x01\xef\x00\x42\x00\x34\x01\x43\x00\x37\x00\x44\x00\xf7\x00\x45\x00\xf8\x00\x46\x00\x47\x00\xf9\x00\x40\x00\x37\x00\x6c\x00\x42\x00\xfb\x00\x43\x00\x37\x00\x44\x00\x05\x01\x45\x00\x06\x01\x46\x00\x47\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x07\x01\x08\x01\x09\x01\x0a\x01\xb7\x00\x3f\x00\x37\x00\x12\x01\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x14\x01\x15\x01\x37\x00\x1b\x01\x1d\x01\x3f\x00\x24\x01\x7a\x00\x37\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x23\x01\xff\xff\xc5\x00\xff\xff\x40\x00\x3f\x00\xc3\x00\xed\x00\xff\xff\x43\x00\xff\xff\x44\x00\xc7\x00\x45\x00\x37\x00\x46\x00\x47\x00\x40\x00\xc9\x00\xcc\x00\x6b\x00\xff\xff\x43\x00\xcd\x00\x44\x00\xff\xff\x45\x00\xce\x00\x46\x00\x47\x00\xb1\xff\x40\x00\xb2\xff\xcf\x00\xb3\x00\xd0\x00\xff\x00\xff\xff\x44\x00\xd4\x00\x45\x00\x37\x00\x46\x00\x47\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\xd6\x00\x7a\x00\xff\xff\x71\x00\x37\x00\x3f\x00\xff\xff\xff\xff\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\xff\xff\xff\xff\xda\x00\xdb\x00\xff\xff\x3f\x00\xff\xff\xdc\x00\xff\xff\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x47\x01\x74\x00\x75\x00\xdd\x00\x40\x00\x3f\x00\xff\xff\x37\x00\x77\x00\x63\x00\xe4\x00\x44\x00\xff\xff\x45\x00\xe5\x00\x46\x00\x47\x00\x40\x00\x78\x00\x56\x00\x47\x00\xe8\x00\xec\x00\xff\xff\xfe\x00\xff\xff\x45\x00\xe6\x00\x46\x00\x47\x00\xed\x00\x40\x00\x66\x00\x67\x00\x68\x00\x69\x00\x6a\x00\x6b\x00\xee\x00\xff\xff\x45\x00\xf1\x00\x46\x00\x47\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x3f\x00\xff\xff\xf5\x00\x37\x00\x34\x00\x3f\x00\x7b\x00\x7a\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x3e\x00\x7c\x00\x92\x00\x7d\x00\x37\x00\xb3\x00\x3f\x00\x37\x00\xb7\x00\x37\x00\x71\x00\x7e\x00\x92\x00\xc0\x00\x40\x00\x00\x00\x00\x00\x7f\x00\x00\x00\x40\x00\x00\x00\x5e\x00\x37\x00\x45\x00\x71\x00\x46\x00\x47\x00\x00\x00\xfd\x00\x00\x00\x46\x00\x47\x00\x40\x00\x0d\x01\x8c\x00\x74\x00\x75\x00\x00\x00\x71\x00\x00\x00\x00\x00\x57\x00\x77\x00\x46\x00\x47\x00\x00\x00\x72\x00\x00\x00\x73\x00\x74\x00\x75\x00\x71\x00\x78\x00\x56\x00\x47\x00\x0b\x01\x77\x00\x00\x00\x00\x00\x00\x00\x72\x00\x00\x00\x73\x00\x74\x00\x75\x00\x71\x00\x78\x00\x56\x00\x47\x00\x76\x00\x77\x00\x00\x00\x00\x00\x00\x00\xde\x00\x8c\x00\x74\x00\x75\x00\x71\x00\x00\x00\x78\x00\x56\x00\x47\x00\x77\x00\x00\x00\x00\x00\x00\x00\x71\x00\xe2\x00\x8c\x00\x74\x00\x75\x00\x71\x00\x78\x00\x56\x00\x47\x00\x00\x00\x77\x00\x00\x00\x00\x00\x00\x00\x8b\x00\x8c\x00\x74\x00\x75\x00\x00\x00\x00\x00\x78\x00\x56\x00\x47\x00\x77\x00\x48\x01\x74\x00\x75\x00\x71\x00\x00\x00\x3e\x01\x74\x00\x75\x00\x77\x00\x78\x00\x56\x00\x47\x00\x71\x00\x77\x00\x00\x00\x00\x00\x00\x00\x00\x00\x78\x00\x56\x00\x47\x00\x00\x00\x00\x00\x78\x00\x56\x00\x47\x00\x00\x00\x2f\x01\x74\x00\x75\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x7f\x00\x77\x00\x8a\x00\x74\x00\x75\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x77\x00\x78\x00\x56\x00\x47\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x7f\x00\x00\x00\x78\x00\x56\x00\x47\x00\x00\x00\x80\x00\x00\x00\x00\x00\x31\x01\x87\x00\x85\x00\x83\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x0c\x01\x87\x00\x85\x00\x83\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x86\x00\x87\x00\x85\x00\x83\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x5a\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x5b\x00\x84\x00\x85\x00\x83\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5c\x00\x80\x00\x00\x00\x00\x00\x00\x00\x5d\x00\x0a\x01\x83\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x7f\x00\x5e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x7a\x00\x7b\x00\x00\x00\x00\x00\x00\x00\x82\x00\x83\x00\x00\x00\x7c\x00\x00\x00\x7d\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\xa8\x00\x00\x00\x00\x00\x7e\x00\x00\x00\x00\x00\xa6\x00\x00\x00\x81\x00\x7f\x00\x00\x00\x3b\x01\xaa\x00\x00\x00\x37\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x9f\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x9f\x00\xa0\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa0\x00\xa1\x00\x18\x01\xa4\x00\x00\x00\x00\x00\xa1\x00\x1b\x01\xa4\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x9f\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\x9f\x00\xa0\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa0\x00\xa1\x00\xa3\x00\xa4\x00\x00\x00\x00\x00\xa1\x00\x00\x00\xa2\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\xa8\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa6\x00\x00\x00\x00\x00\x00\x00\x00\x00\x15\x01\xaa\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\xa8\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa6\x00\x00\x00\x00\x00\x00\x00\x00\x00\x1d\x01\xaa\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\xa8\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa6\x00\x00\x00\x00\x00\x00\x00\x00\x00\x1f\x01\xaa\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\xa8\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa6\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa9\x00\xaa\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\xa5\x00\x3a\x00\x3b\x00\x3c\x00\x3d\x00\xa5\x00\xa6\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa6\x00\x17\x01\x00\x00\x00\x00\x00\x00\x00\x00\x19\x01\x3a\x00\x3b\x00\x3c\x00\x3d\x00\xa5\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa6\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa7\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (50, 174) [
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74),
	(75 , happyReduce_75),
	(76 , happyReduce_76),
	(77 , happyReduce_77),
	(78 , happyReduce_78),
	(79 , happyReduce_79),
	(80 , happyReduce_80),
	(81 , happyReduce_81),
	(82 , happyReduce_82),
	(83 , happyReduce_83),
	(84 , happyReduce_84),
	(85 , happyReduce_85),
	(86 , happyReduce_86),
	(87 , happyReduce_87),
	(88 , happyReduce_88),
	(89 , happyReduce_89),
	(90 , happyReduce_90),
	(91 , happyReduce_91),
	(92 , happyReduce_92),
	(93 , happyReduce_93),
	(94 , happyReduce_94),
	(95 , happyReduce_95),
	(96 , happyReduce_96),
	(97 , happyReduce_97),
	(98 , happyReduce_98),
	(99 , happyReduce_99),
	(100 , happyReduce_100),
	(101 , happyReduce_101),
	(102 , happyReduce_102),
	(103 , happyReduce_103),
	(104 , happyReduce_104),
	(105 , happyReduce_105),
	(106 , happyReduce_106),
	(107 , happyReduce_107),
	(108 , happyReduce_108),
	(109 , happyReduce_109),
	(110 , happyReduce_110),
	(111 , happyReduce_111),
	(112 , happyReduce_112),
	(113 , happyReduce_113),
	(114 , happyReduce_114),
	(115 , happyReduce_115),
	(116 , happyReduce_116),
	(117 , happyReduce_117),
	(118 , happyReduce_118),
	(119 , happyReduce_119),
	(120 , happyReduce_120),
	(121 , happyReduce_121),
	(122 , happyReduce_122),
	(123 , happyReduce_123),
	(124 , happyReduce_124),
	(125 , happyReduce_125),
	(126 , happyReduce_126),
	(127 , happyReduce_127),
	(128 , happyReduce_128),
	(129 , happyReduce_129),
	(130 , happyReduce_130),
	(131 , happyReduce_131),
	(132 , happyReduce_132),
	(133 , happyReduce_133),
	(134 , happyReduce_134),
	(135 , happyReduce_135),
	(136 , happyReduce_136),
	(137 , happyReduce_137),
	(138 , happyReduce_138),
	(139 , happyReduce_139),
	(140 , happyReduce_140),
	(141 , happyReduce_141),
	(142 , happyReduce_142),
	(143 , happyReduce_143),
	(144 , happyReduce_144),
	(145 , happyReduce_145),
	(146 , happyReduce_146),
	(147 , happyReduce_147),
	(148 , happyReduce_148),
	(149 , happyReduce_149),
	(150 , happyReduce_150),
	(151 , happyReduce_151),
	(152 , happyReduce_152),
	(153 , happyReduce_153),
	(154 , happyReduce_154),
	(155 , happyReduce_155),
	(156 , happyReduce_156),
	(157 , happyReduce_157),
	(158 , happyReduce_158),
	(159 , happyReduce_159),
	(160 , happyReduce_160),
	(161 , happyReduce_161),
	(162 , happyReduce_162),
	(163 , happyReduce_163),
	(164 , happyReduce_164),
	(165 , happyReduce_165),
	(166 , happyReduce_166),
	(167 , happyReduce_167),
	(168 , happyReduce_168),
	(169 , happyReduce_169),
	(170 , happyReduce_170),
	(171 , happyReduce_171),
	(172 , happyReduce_172),
	(173 , happyReduce_173),
	(174 , happyReduce_174)
	]

happy_n_terms = 55 :: Int
happy_n_nonterms = 55 :: Int

happyReduce_50 = happySpecReduce_1  0# happyReduction_50
happyReduction_50 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn53
		 ((read ( happy_var_1)) :: Integer
	)}

happyReduce_51 = happySpecReduce_1  1# happyReduction_51
happyReduction_51 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn54
		 ((read ( happy_var_1)) :: Double
	)}

happyReduce_52 = happySpecReduce_1  2# happyReduction_52
happyReduction_52 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn55
		 (happy_var_1
	)}

happyReduce_53 = happySpecReduce_1  3# happyReduction_53
happyReduction_53 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn56
		 ((read ( happy_var_1)) :: Char
	)}

happyReduce_54 = happySpecReduce_1  4# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Id happy_var_1)) -> 
	happyIn57
		 (Id (happy_var_1)
	)}

happyReduce_55 = happyReduce 4# 5# happyReduction_55
happyReduction_55 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut57 happy_x_2 of { happy_var_2 -> 
	case happyOut59 happy_x_4 of { happy_var_4 -> 
	happyIn58
		 (AbsPascal.PProgram happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_56 = happySpecReduce_3  6# happyReduction_56
happyReduction_56 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut79 happy_x_2 of { happy_var_2 -> 
	happyIn59
		 (AbsPascal.PBlock happy_var_1 happy_var_2
	)}}

happyReduce_57 = happyReduce 4# 7# happyReduction_57
happyReduction_57 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut61 happy_x_1 of { happy_var_1 -> 
	case happyOut66 happy_x_2 of { happy_var_2 -> 
	case happyOut64 happy_x_3 of { happy_var_3 -> 
	case happyOut74 happy_x_4 of { happy_var_4 -> 
	happyIn60
		 (AbsPascal.PPart happy_var_1 happy_var_2 happy_var_3 (reverse happy_var_4)
	) `HappyStk` happyRest}}}}

happyReduce_58 = happySpecReduce_0  8# happyReduction_58
happyReduction_58  =  happyIn61
		 (AbsPascal.PPartConstEmpty
	)

happyReduce_59 = happyReduce 4# 8# happyReduction_59
happyReduction_59 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut104 happy_x_2 of { happy_var_2 -> 
	case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn61
		 (AbsPascal.PPartConst (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_60 = happySpecReduce_3  9# happyReduction_60
happyReduction_60 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	case happyOut63 happy_x_3 of { happy_var_3 -> 
	happyIn62
		 (AbsPascal.PConst happy_var_1 happy_var_3
	)}}

happyReduce_61 = happySpecReduce_1  10# happyReduction_61
happyReduction_61 happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	happyIn63
		 (AbsPascal.PValInteger happy_var_1
	)}

happyReduce_62 = happySpecReduce_1  10# happyReduction_62
happyReduction_62 happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	happyIn63
		 (AbsPascal.PValDouble happy_var_1
	)}

happyReduce_63 = happySpecReduce_1  10# happyReduction_63
happyReduction_63 happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	happyIn63
		 (AbsPascal.PValString happy_var_1
	)}

happyReduce_64 = happySpecReduce_1  10# happyReduction_64
happyReduction_64 happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	happyIn63
		 (AbsPascal.PValChar happy_var_1
	)}

happyReduce_65 = happySpecReduce_0  11# happyReduction_65
happyReduction_65  =  happyIn64
		 (AbsPascal.PPartVarsEmpty
	)

happyReduce_66 = happyReduce 4# 11# happyReduction_66
happyReduction_66 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut105 happy_x_2 of { happy_var_2 -> 
	case happyOut65 happy_x_3 of { happy_var_3 -> 
	happyIn64
		 (AbsPascal.PPartVars (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_67 = happySpecReduce_3  12# happyReduction_67
happyReduction_67 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut107 happy_x_1 of { happy_var_1 -> 
	case happyOut68 happy_x_3 of { happy_var_3 -> 
	happyIn65
		 (AbsPascal.PVar happy_var_1 happy_var_3
	)}}

happyReduce_68 = happySpecReduce_0  13# happyReduction_68
happyReduction_68  =  happyIn66
		 (AbsPascal.PPartTypesEmpty
	)

happyReduce_69 = happyReduce 4# 13# happyReduction_69
happyReduction_69 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut106 happy_x_2 of { happy_var_2 -> 
	case happyOut67 happy_x_3 of { happy_var_3 -> 
	happyIn66
		 (AbsPascal.PPartTypes (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_70 = happySpecReduce_3  14# happyReduction_70
happyReduction_70 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	case happyOut68 happy_x_3 of { happy_var_3 -> 
	happyIn67
		 (AbsPascal.PType happy_var_1 happy_var_3
	)}}

happyReduce_71 = happySpecReduce_3  15# happyReduction_71
happyReduction_71 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut107 happy_x_2 of { happy_var_2 -> 
	happyIn68
		 (AbsPascal.PCustomTypeEnum happy_var_2
	)}

happyReduce_72 = happySpecReduce_3  15# happyReduction_72
happyReduction_72 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut69 happy_x_1 of { happy_var_1 -> 
	case happyOut69 happy_x_3 of { happy_var_3 -> 
	happyIn68
		 (AbsPascal.PCustomTypeSubRange happy_var_1 happy_var_3
	)}}

happyReduce_73 = happySpecReduce_2  15# happyReduction_73
happyReduction_73 happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_2 of { happy_var_2 -> 
	happyIn68
		 (AbsPascal.PCustomTypePointer happy_var_2
	)}

happyReduce_74 = happyReduce 6# 15# happyReduction_74
happyReduction_74 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut70 happy_x_3 of { happy_var_3 -> 
	case happyOut68 happy_x_6 of { happy_var_6 -> 
	happyIn68
		 (AbsPascal.PTypeArray happy_var_3 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_75 = happySpecReduce_3  15# happyReduction_75
happyReduction_75 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut72 happy_x_2 of { happy_var_2 -> 
	happyIn68
		 (AbsPascal.PTypeRecord happy_var_2
	)}

happyReduce_76 = happySpecReduce_1  15# happyReduction_76
happyReduction_76 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn68
		 (AbsPascal.PCustomTypeId happy_var_1
	)}

happyReduce_77 = happySpecReduce_1  16# happyReduction_77
happyReduction_77 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn69
		 (AbsPascal.PRangeTypeId happy_var_1
	)}

happyReduce_78 = happySpecReduce_1  16# happyReduction_78
happyReduction_78 happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	happyIn69
		 (AbsPascal.PRangeTypeLiteral happy_var_1
	)}

happyReduce_79 = happySpecReduce_0  17# happyReduction_79
happyReduction_79  =  happyIn70
		 ([]
	)

happyReduce_80 = happySpecReduce_1  17# happyReduction_80
happyReduction_80 happy_x_1
	 =  case happyOut71 happy_x_1 of { happy_var_1 -> 
	happyIn70
		 ((:[]) happy_var_1
	)}

happyReduce_81 = happySpecReduce_3  17# happyReduction_81
happyReduction_81 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut71 happy_x_1 of { happy_var_1 -> 
	case happyOut70 happy_x_3 of { happy_var_3 -> 
	happyIn70
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_82 = happySpecReduce_1  18# happyReduction_82
happyReduction_82 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn71
		 (AbsPascal.PTypeArrayId happy_var_1
	)}

happyReduce_83 = happySpecReduce_1  18# happyReduction_83
happyReduction_83 happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	happyIn71
		 (AbsPascal.PTypeArrayLiteral happy_var_1
	)}

happyReduce_84 = happySpecReduce_3  18# happyReduction_84
happyReduction_84 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut69 happy_x_1 of { happy_var_1 -> 
	case happyOut69 happy_x_3 of { happy_var_3 -> 
	happyIn71
		 (AbsPascal.PTypeArrayRange happy_var_1 happy_var_3
	)}}

happyReduce_85 = happySpecReduce_0  19# happyReduction_85
happyReduction_85  =  happyIn72
		 ([]
	)

happyReduce_86 = happySpecReduce_1  19# happyReduction_86
happyReduction_86 happy_x_1
	 =  case happyOut73 happy_x_1 of { happy_var_1 -> 
	happyIn72
		 ((:[]) happy_var_1
	)}

happyReduce_87 = happySpecReduce_3  19# happyReduction_87
happyReduction_87 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut73 happy_x_1 of { happy_var_1 -> 
	case happyOut72 happy_x_3 of { happy_var_3 -> 
	happyIn72
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_88 = happySpecReduce_3  20# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut107 happy_x_1 of { happy_var_1 -> 
	case happyOut68 happy_x_3 of { happy_var_3 -> 
	happyIn73
		 (AbsPascal.PRecordFields happy_var_1 happy_var_3
	)}}

happyReduce_89 = happySpecReduce_0  21# happyReduction_89
happyReduction_89  =  happyIn74
		 ([]
	)

happyReduce_90 = happySpecReduce_2  21# happyReduction_90
happyReduction_90 happy_x_2
	happy_x_1
	 =  case happyOut74 happy_x_1 of { happy_var_1 -> 
	case happyOut75 happy_x_2 of { happy_var_2 -> 
	happyIn74
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_91 = happyReduce 8# 22# happyReduction_91
happyReduction_91 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut57 happy_x_2 of { happy_var_2 -> 
	case happyOut76 happy_x_4 of { happy_var_4 -> 
	case happyOut78 happy_x_7 of { happy_var_7 -> 
	happyIn75
		 (AbsPascal.PIdProcedure happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest}}}

happyReduce_92 = happyReduce 10# 22# happyReduction_92
happyReduction_92 (happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut57 happy_x_2 of { happy_var_2 -> 
	case happyOut76 happy_x_4 of { happy_var_4 -> 
	case happyOut57 happy_x_7 of { happy_var_7 -> 
	case happyOut78 happy_x_9 of { happy_var_9 -> 
	happyIn75
		 (AbsPascal.PIdFunction happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest}}}}

happyReduce_93 = happySpecReduce_0  23# happyReduction_93
happyReduction_93  =  happyIn76
		 ([]
	)

happyReduce_94 = happySpecReduce_1  23# happyReduction_94
happyReduction_94 happy_x_1
	 =  case happyOut77 happy_x_1 of { happy_var_1 -> 
	happyIn76
		 ((:[]) happy_var_1
	)}

happyReduce_95 = happySpecReduce_3  23# happyReduction_95
happyReduction_95 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut77 happy_x_1 of { happy_var_1 -> 
	case happyOut76 happy_x_3 of { happy_var_3 -> 
	happyIn76
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_96 = happyReduce 4# 24# happyReduction_96
happyReduction_96 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut107 happy_x_2 of { happy_var_2 -> 
	case happyOut57 happy_x_4 of { happy_var_4 -> 
	happyIn77
		 (AbsPascal.PDecParamVar happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_97 = happySpecReduce_3  24# happyReduction_97
happyReduction_97 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut107 happy_x_1 of { happy_var_1 -> 
	case happyOut57 happy_x_3 of { happy_var_3 -> 
	happyIn77
		 (AbsPascal.PDecParam happy_var_1 happy_var_3
	)}}

happyReduce_98 = happySpecReduce_2  25# happyReduction_98
happyReduction_98 happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut79 happy_x_2 of { happy_var_2 -> 
	happyIn78
		 (AbsPascal.PBlockProcFun happy_var_1 happy_var_2
	)}}

happyReduce_99 = happySpecReduce_3  26# happyReduction_99
happyReduction_99 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut80 happy_x_2 of { happy_var_2 -> 
	happyIn79
		 (AbsPascal.PBody happy_var_2
	)}

happyReduce_100 = happySpecReduce_0  27# happyReduction_100
happyReduction_100  =  happyIn80
		 ([]
	)

happyReduce_101 = happySpecReduce_1  27# happyReduction_101
happyReduction_101 happy_x_1
	 =  case happyOut81 happy_x_1 of { happy_var_1 -> 
	happyIn80
		 ((:[]) happy_var_1
	)}

happyReduce_102 = happySpecReduce_3  27# happyReduction_102
happyReduction_102 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut81 happy_x_1 of { happy_var_1 -> 
	case happyOut80 happy_x_3 of { happy_var_3 -> 
	happyIn80
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_103 = happySpecReduce_1  28# happyReduction_103
happyReduction_103 happy_x_1
	 =  case happyOut82 happy_x_1 of { happy_var_1 -> 
	happyIn81
		 (AbsPascal.PListSimpleInstruction happy_var_1
	)}

happyReduce_104 = happySpecReduce_1  28# happyReduction_104
happyReduction_104 happy_x_1
	 =  case happyOut83 happy_x_1 of { happy_var_1 -> 
	happyIn81
		 (AbsPascal.PListCompositeInstruction happy_var_1
	)}

happyReduce_105 = happySpecReduce_3  29# happyReduction_105
happyReduction_105 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut99 happy_x_1 of { happy_var_1 -> 
	case happyOut91 happy_x_3 of { happy_var_3 -> 
	happyIn82
		 (AbsPascal.PSimpleInstructionAssignment happy_var_1 happy_var_3
	)}}

happyReduce_106 = happySpecReduce_1  29# happyReduction_106
happyReduction_106 happy_x_1
	 =  case happyOut89 happy_x_1 of { happy_var_1 -> 
	happyIn82
		 (AbsPascal.PSimpleInstructionProcFunc happy_var_1
	)}

happyReduce_107 = happySpecReduce_1  29# happyReduction_107
happyReduction_107 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn82
		 (AbsPascal.PSimpleInstructionProcFunSinParm happy_var_1
	)}

happyReduce_108 = happyReduce 4# 30# happyReduction_108
happyReduction_108 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut91 happy_x_2 of { happy_var_2 -> 
	case happyOut81 happy_x_4 of { happy_var_4 -> 
	happyIn83
		 (AbsPascal.PCompositeInstructionIf happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_109 = happyReduce 6# 30# happyReduction_109
happyReduction_109 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut91 happy_x_2 of { happy_var_2 -> 
	case happyOut81 happy_x_4 of { happy_var_4 -> 
	case happyOut81 happy_x_6 of { happy_var_6 -> 
	happyIn83
		 (AbsPascal.PCompositeInstructionIfElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_110 = happyReduce 4# 30# happyReduction_110
happyReduction_110 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut80 happy_x_2 of { happy_var_2 -> 
	case happyOut91 happy_x_4 of { happy_var_4 -> 
	happyIn83
		 (AbsPascal.PCompositeInstructionRepeat happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_111 = happyReduce 8# 30# happyReduction_111
happyReduction_111 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut57 happy_x_2 of { happy_var_2 -> 
	case happyOut91 happy_x_4 of { happy_var_4 -> 
	case happyOut91 happy_x_6 of { happy_var_6 -> 
	case happyOut81 happy_x_8 of { happy_var_8 -> 
	happyIn83
		 (AbsPascal.PCompositeInstructionForTo happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_112 = happyReduce 8# 30# happyReduction_112
happyReduction_112 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut57 happy_x_2 of { happy_var_2 -> 
	case happyOut91 happy_x_4 of { happy_var_4 -> 
	case happyOut91 happy_x_6 of { happy_var_6 -> 
	case happyOut81 happy_x_8 of { happy_var_8 -> 
	happyIn83
		 (AbsPascal.PCompositeInstructionForDownTo happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_113 = happyReduce 4# 30# happyReduction_113
happyReduction_113 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut91 happy_x_2 of { happy_var_2 -> 
	case happyOut79 happy_x_4 of { happy_var_4 -> 
	happyIn83
		 (AbsPascal.PCompositeInstructionWhile happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_114 = happyReduce 5# 30# happyReduction_114
happyReduction_114 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut91 happy_x_2 of { happy_var_2 -> 
	case happyOut84 happy_x_4 of { happy_var_4 -> 
	happyIn83
		 (AbsPascal.PCompositeInstructionCase happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_115 = happySpecReduce_1  31# happyReduction_115
happyReduction_115 happy_x_1
	 =  case happyOut85 happy_x_1 of { happy_var_1 -> 
	happyIn84
		 ((:[]) happy_var_1
	)}

happyReduce_116 = happySpecReduce_3  31# happyReduction_116
happyReduction_116 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut85 happy_x_1 of { happy_var_1 -> 
	case happyOut84 happy_x_3 of { happy_var_3 -> 
	happyIn84
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_117 = happySpecReduce_3  32# happyReduction_117
happyReduction_117 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut86 happy_x_1 of { happy_var_1 -> 
	case happyOut88 happy_x_3 of { happy_var_3 -> 
	happyIn85
		 (AbsPascal.PCaseRamCase happy_var_1 happy_var_3
	)}}

happyReduce_118 = happySpecReduce_0  33# happyReduction_118
happyReduction_118  =  happyIn86
		 ([]
	)

happyReduce_119 = happySpecReduce_1  33# happyReduction_119
happyReduction_119 happy_x_1
	 =  case happyOut87 happy_x_1 of { happy_var_1 -> 
	happyIn86
		 ((:[]) happy_var_1
	)}

happyReduce_120 = happySpecReduce_3  33# happyReduction_120
happyReduction_120 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut87 happy_x_1 of { happy_var_1 -> 
	case happyOut86 happy_x_3 of { happy_var_3 -> 
	happyIn86
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_121 = happySpecReduce_1  34# happyReduction_121
happyReduction_121 happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	happyIn87
		 (AbsPascal.PConstCaseLiteral happy_var_1
	)}

happyReduce_122 = happySpecReduce_1  34# happyReduction_122
happyReduction_122 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn87
		 (AbsPascal.PConsCaseId happy_var_1
	)}

happyReduce_123 = happySpecReduce_1  35# happyReduction_123
happyReduction_123 happy_x_1
	 =  case happyOut81 happy_x_1 of { happy_var_1 -> 
	happyIn88
		 (AbsPascal.PBodyRamaCaseOne happy_var_1
	)}

happyReduce_124 = happySpecReduce_1  35# happyReduction_124
happyReduction_124 happy_x_1
	 =  case happyOut79 happy_x_1 of { happy_var_1 -> 
	happyIn88
		 (AbsPascal.PBodyRamaCaseMany happy_var_1
	)}

happyReduce_125 = happyReduce 4# 36# happyReduction_125
happyReduction_125 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut57 happy_x_1 of { happy_var_1 -> 
	case happyOut90 happy_x_3 of { happy_var_3 -> 
	happyIn89
		 (AbsPascal.PCallFuncProc happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_126 = happySpecReduce_0  37# happyReduction_126
happyReduction_126  =  happyIn90
		 ([]
	)

happyReduce_127 = happySpecReduce_1  37# happyReduction_127
happyReduction_127 happy_x_1
	 =  case happyOut91 happy_x_1 of { happy_var_1 -> 
	happyIn90
		 ((:[]) happy_var_1
	)}

happyReduce_128 = happySpecReduce_3  37# happyReduction_128
happyReduction_128 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut91 happy_x_1 of { happy_var_1 -> 
	case happyOut90 happy_x_3 of { happy_var_3 -> 
	happyIn90
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_129 = happySpecReduce_2  38# happyReduction_129
happyReduction_129 happy_x_2
	happy_x_1
	 =  case happyOut92 happy_x_2 of { happy_var_2 -> 
	happyIn91
		 (AbsPascal.PNotExp happy_var_2
	)}

happyReduce_130 = happySpecReduce_1  38# happyReduction_130
happyReduction_130 happy_x_1
	 =  case happyOut92 happy_x_1 of { happy_var_1 -> 
	happyIn91
		 (happy_var_1
	)}

happyReduce_131 = happySpecReduce_3  39# happyReduction_131
happyReduction_131 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut92 happy_x_1 of { happy_var_1 -> 
	case happyOut93 happy_x_2 of { happy_var_2 -> 
	case happyOut94 happy_x_3 of { happy_var_3 -> 
	happyIn92
		 (AbsPascal.PGeneralExp happy_var_1 happy_var_2 happy_var_3
	)}}}

happyReduce_132 = happySpecReduce_1  39# happyReduction_132
happyReduction_132 happy_x_1
	 =  case happyOut94 happy_x_1 of { happy_var_1 -> 
	happyIn92
		 (happy_var_1
	)}

happyReduce_133 = happySpecReduce_1  40# happyReduction_133
happyReduction_133 happy_x_1
	 =  happyIn93
		 (AbsPascal.PGeneralExpMayor
	)

happyReduce_134 = happySpecReduce_1  40# happyReduction_134
happyReduction_134 happy_x_1
	 =  happyIn93
		 (AbsPascal.PGeneralExpMinor
	)

happyReduce_135 = happySpecReduce_1  40# happyReduction_135
happyReduction_135 happy_x_1
	 =  happyIn93
		 (AbsPascal.PGeneralExpEqual
	)

happyReduce_136 = happySpecReduce_1  40# happyReduction_136
happyReduction_136 happy_x_1
	 =  happyIn93
		 (AbsPascal.PGeneralExpMayorEqual
	)

happyReduce_137 = happySpecReduce_1  40# happyReduction_137
happyReduction_137 happy_x_1
	 =  happyIn93
		 (AbsPascal.PGeneralExpMinorEqual
	)

happyReduce_138 = happySpecReduce_1  40# happyReduction_138
happyReduction_138 happy_x_1
	 =  happyIn93
		 (AbsPascal.PGeneralExpDistinct
	)

happyReduce_139 = happySpecReduce_2  41# happyReduction_139
happyReduction_139 happy_x_2
	happy_x_1
	 =  case happyOut96 happy_x_2 of { happy_var_2 -> 
	happyIn94
		 (AbsPascal.PSimpleExpInvSign happy_var_2
	)}

happyReduce_140 = happySpecReduce_3  41# happyReduction_140
happyReduction_140 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut94 happy_x_1 of { happy_var_1 -> 
	case happyOut95 happy_x_2 of { happy_var_2 -> 
	case happyOut96 happy_x_3 of { happy_var_3 -> 
	happyIn94
		 (AbsPascal.PSimpleExp happy_var_1 happy_var_2 happy_var_3
	)}}}

happyReduce_141 = happySpecReduce_1  41# happyReduction_141
happyReduction_141 happy_x_1
	 =  case happyOut96 happy_x_1 of { happy_var_1 -> 
	happyIn94
		 (happy_var_1
	)}

happyReduce_142 = happySpecReduce_1  42# happyReduction_142
happyReduction_142 happy_x_1
	 =  happyIn95
		 (AbsPascal.PSimpleExpAdd
	)

happyReduce_143 = happySpecReduce_1  42# happyReduction_143
happyReduction_143 happy_x_1
	 =  happyIn95
		 (AbsPascal.PSimpleExpEquals
	)

happyReduce_144 = happySpecReduce_1  42# happyReduction_144
happyReduction_144 happy_x_1
	 =  happyIn95
		 (AbsPascal.PSimpleExpMinus
	)

happyReduce_145 = happySpecReduce_3  43# happyReduction_145
happyReduction_145 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut96 happy_x_1 of { happy_var_1 -> 
	case happyOut97 happy_x_2 of { happy_var_2 -> 
	case happyOut98 happy_x_3 of { happy_var_3 -> 
	happyIn96
		 (AbsPascal.PTermExp happy_var_1 happy_var_2 happy_var_3
	)}}}

happyReduce_146 = happySpecReduce_1  43# happyReduction_146
happyReduction_146 happy_x_1
	 =  case happyOut98 happy_x_1 of { happy_var_1 -> 
	happyIn96
		 (happy_var_1
	)}

happyReduce_147 = happySpecReduce_1  44# happyReduction_147
happyReduction_147 happy_x_1
	 =  happyIn97
		 (AbsPascal.PTermExpMul
	)

happyReduce_148 = happySpecReduce_1  44# happyReduction_148
happyReduction_148 happy_x_1
	 =  happyIn97
		 (AbsPascal.PTermExpDiv1
	)

happyReduce_149 = happySpecReduce_1  44# happyReduction_149
happyReduction_149 happy_x_1
	 =  happyIn97
		 (AbsPascal.PTermExpDiv2
	)

happyReduce_150 = happySpecReduce_1  44# happyReduction_150
happyReduction_150 happy_x_1
	 =  happyIn97
		 (AbsPascal.PTermExpMod
	)

happyReduce_151 = happySpecReduce_1  44# happyReduction_151
happyReduction_151 happy_x_1
	 =  happyIn97
		 (AbsPascal.PTermExpAnd
	)

happyReduce_152 = happySpecReduce_1  45# happyReduction_152
happyReduction_152 happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	happyIn98
		 (AbsPascal.PFactorLit happy_var_1
	)}

happyReduce_153 = happySpecReduce_1  45# happyReduction_153
happyReduction_153 happy_x_1
	 =  case happyOut100 happy_x_1 of { happy_var_1 -> 
	happyIn98
		 (AbsPascal.PFactorId happy_var_1
	)}

happyReduce_154 = happySpecReduce_3  45# happyReduction_154
happyReduction_154 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut100 happy_x_1 of { happy_var_1 -> 
	case happyOut99 happy_x_3 of { happy_var_3 -> 
	happyIn98
		 (AbsPascal.PFactorAccId happy_var_1 happy_var_3
	)}}

happyReduce_155 = happySpecReduce_1  45# happyReduction_155
happyReduction_155 happy_x_1
	 =  case happyOut89 happy_x_1 of { happy_var_1 -> 
	happyIn98
		 (AbsPascal.PFactorCall happy_var_1
	)}

happyReduce_156 = happySpecReduce_3  45# happyReduction_156
happyReduction_156 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut91 happy_x_2 of { happy_var_2 -> 
	happyIn98
		 (happy_var_2
	)}

happyReduce_157 = happySpecReduce_1  46# happyReduction_157
happyReduction_157 happy_x_1
	 =  case happyOut100 happy_x_1 of { happy_var_1 -> 
	happyIn99
		 ((:[]) happy_var_1
	)}

happyReduce_158 = happySpecReduce_3  46# happyReduction_158
happyReduction_158 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut100 happy_x_1 of { happy_var_1 -> 
	case happyOut99 happy_x_3 of { happy_var_3 -> 
	happyIn99
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_159 = happySpecReduce_1  47# happyReduction_159
happyReduction_159 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn100
		 (AbsPascal.PAccId happy_var_1
	)}

happyReduce_160 = happySpecReduce_2  47# happyReduction_160
happyReduction_160 happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn100
		 (AbsPascal.PtrAccId happy_var_1
	)}

happyReduce_161 = happySpecReduce_1  47# happyReduction_161
happyReduction_161 happy_x_1
	 =  case happyOut101 happy_x_1 of { happy_var_1 -> 
	happyIn100
		 (AbsPascal.PtrArrayAccess happy_var_1
	)}

happyReduce_162 = happyReduce 4# 48# happyReduction_162
happyReduction_162 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut57 happy_x_1 of { happy_var_1 -> 
	case happyOut102 happy_x_3 of { happy_var_3 -> 
	happyIn101
		 (AbsPascal.PArrayAccess happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_163 = happySpecReduce_1  49# happyReduction_163
happyReduction_163 happy_x_1
	 =  case happyOut103 happy_x_1 of { happy_var_1 -> 
	happyIn102
		 ((:[]) happy_var_1
	)}

happyReduce_164 = happySpecReduce_3  49# happyReduction_164
happyReduction_164 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut103 happy_x_1 of { happy_var_1 -> 
	case happyOut102 happy_x_3 of { happy_var_3 -> 
	happyIn102
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_165 = happySpecReduce_1  50# happyReduction_165
happyReduction_165 happy_x_1
	 =  case happyOut91 happy_x_1 of { happy_var_1 -> 
	happyIn103
		 (AbsPascal.PTypeAccessLiteral happy_var_1
	)}

happyReduce_166 = happySpecReduce_0  51# happyReduction_166
happyReduction_166  =  happyIn104
		 ([]
	)

happyReduce_167 = happySpecReduce_3  51# happyReduction_167
happyReduction_167 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut104 happy_x_1 of { happy_var_1 -> 
	case happyOut62 happy_x_2 of { happy_var_2 -> 
	happyIn104
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_168 = happySpecReduce_0  52# happyReduction_168
happyReduction_168  =  happyIn105
		 ([]
	)

happyReduce_169 = happySpecReduce_3  52# happyReduction_169
happyReduction_169 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut105 happy_x_1 of { happy_var_1 -> 
	case happyOut65 happy_x_2 of { happy_var_2 -> 
	happyIn105
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_170 = happySpecReduce_0  53# happyReduction_170
happyReduction_170  =  happyIn106
		 ([]
	)

happyReduce_171 = happySpecReduce_3  53# happyReduction_171
happyReduction_171 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut106 happy_x_1 of { happy_var_1 -> 
	case happyOut67 happy_x_2 of { happy_var_2 -> 
	happyIn106
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_172 = happySpecReduce_0  54# happyReduction_172
happyReduction_172  =  happyIn107
		 ([]
	)

happyReduce_173 = happySpecReduce_1  54# happyReduction_173
happyReduction_173 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn107
		 ((:[]) happy_var_1
	)}

happyReduce_174 = happySpecReduce_3  54# happyReduction_174
happyReduction_174 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	case happyOut107 happy_x_3 of { happy_var_3 -> 
	happyIn107
		 ((:) happy_var_1 happy_var_3
	)}}

happyNewToken action sts stk [] =
	happyDoAction 54# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TS _ 10) -> cont 10#;
	PT _ (TS _ 11) -> cont 11#;
	PT _ (TS _ 12) -> cont 12#;
	PT _ (TS _ 13) -> cont 13#;
	PT _ (TS _ 14) -> cont 14#;
	PT _ (TS _ 15) -> cont 15#;
	PT _ (TS _ 16) -> cont 16#;
	PT _ (TS _ 17) -> cont 17#;
	PT _ (TS _ 18) -> cont 18#;
	PT _ (TS _ 19) -> cont 19#;
	PT _ (TS _ 20) -> cont 20#;
	PT _ (TS _ 21) -> cont 21#;
	PT _ (TS _ 22) -> cont 22#;
	PT _ (TS _ 23) -> cont 23#;
	PT _ (TS _ 24) -> cont 24#;
	PT _ (TS _ 25) -> cont 25#;
	PT _ (TS _ 26) -> cont 26#;
	PT _ (TS _ 27) -> cont 27#;
	PT _ (TS _ 28) -> cont 28#;
	PT _ (TS _ 29) -> cont 29#;
	PT _ (TS _ 30) -> cont 30#;
	PT _ (TS _ 31) -> cont 31#;
	PT _ (TS _ 32) -> cont 32#;
	PT _ (TS _ 33) -> cont 33#;
	PT _ (TS _ 34) -> cont 34#;
	PT _ (TS _ 35) -> cont 35#;
	PT _ (TS _ 36) -> cont 36#;
	PT _ (TS _ 37) -> cont 37#;
	PT _ (TS _ 38) -> cont 38#;
	PT _ (TS _ 39) -> cont 39#;
	PT _ (TS _ 40) -> cont 40#;
	PT _ (TS _ 41) -> cont 41#;
	PT _ (TS _ 42) -> cont 42#;
	PT _ (TS _ 43) -> cont 43#;
	PT _ (TS _ 44) -> cont 44#;
	PT _ (TS _ 45) -> cont 45#;
	PT _ (TS _ 46) -> cont 46#;
	PT _ (TS _ 47) -> cont 47#;
	PT _ (TS _ 48) -> cont 48#;
	PT _ (TI happy_dollar_dollar) -> cont 49#;
	PT _ (TD happy_dollar_dollar) -> cont 50#;
	PT _ (TL happy_dollar_dollar) -> cont 51#;
	PT _ (TC happy_dollar_dollar) -> cont 52#;
	PT _ (T_Id happy_dollar_dollar) -> cont 53#;
	_ -> happyError' (tk:tks)
	}

happyError_ 54# tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

pProgram tks = happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut58 x))

pBlock tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut59 x))

pParts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut60 x))

pConsts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut61 x))

pConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (happyOut62 x))

pLiteral tks = happySomeParser where
  happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (happyOut63 x))

pVars tks = happySomeParser where
  happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (happyOut64 x))

pVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (happyOut65 x))

pTypes tks = happySomeParser where
  happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (happyOut66 x))

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (happyOut67 x))

pCustomType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (happyOut68 x))

pRangeType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (happyOut69 x))

pListArrType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (happyOut70 x))

pArrType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 13# tks) (\x -> happyReturn (happyOut71 x))

pListFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 14# tks) (\x -> happyReturn (happyOut72 x))

pFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 15# tks) (\x -> happyReturn (happyOut73 x))

pListProcsYFuncs tks = happySomeParser where
  happySomeParser = happyThen (happyParse 16# tks) (\x -> happyReturn (happyOut74 x))

pProcsYFuncs tks = happySomeParser where
  happySomeParser = happyThen (happyParse 17# tks) (\x -> happyReturn (happyOut75 x))

pListDecParm tks = happySomeParser where
  happySomeParser = happyThen (happyParse 18# tks) (\x -> happyReturn (happyOut76 x))

pDecParm tks = happySomeParser where
  happySomeParser = happyThen (happyParse 19# tks) (\x -> happyReturn (happyOut77 x))

pBlockProcFun tks = happySomeParser where
  happySomeParser = happyThen (happyParse 20# tks) (\x -> happyReturn (happyOut78 x))

pBody tks = happySomeParser where
  happySomeParser = happyThen (happyParse 21# tks) (\x -> happyReturn (happyOut79 x))

pListInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 22# tks) (\x -> happyReturn (happyOut80 x))

pInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 23# tks) (\x -> happyReturn (happyOut81 x))

pSimpleInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 24# tks) (\x -> happyReturn (happyOut82 x))

pCompositeInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 25# tks) (\x -> happyReturn (happyOut83 x))

pListRamas tks = happySomeParser where
  happySomeParser = happyThen (happyParse 26# tks) (\x -> happyReturn (happyOut84 x))

pRamas tks = happySomeParser where
  happySomeParser = happyThen (happyParse 27# tks) (\x -> happyReturn (happyOut85 x))

pListConstCase tks = happySomeParser where
  happySomeParser = happyThen (happyParse 28# tks) (\x -> happyReturn (happyOut86 x))

pConstCase tks = happySomeParser where
  happySomeParser = happyThen (happyParse 29# tks) (\x -> happyReturn (happyOut87 x))

pBodyRamaCase tks = happySomeParser where
  happySomeParser = happyThen (happyParse 30# tks) (\x -> happyReturn (happyOut88 x))

pCallFunProc tks = happySomeParser where
  happySomeParser = happyThen (happyParse 31# tks) (\x -> happyReturn (happyOut89 x))

pListExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 32# tks) (\x -> happyReturn (happyOut90 x))

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 33# tks) (\x -> happyReturn (happyOut91 x))

pExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 34# tks) (\x -> happyReturn (happyOut92 x))

pGenCom tks = happySomeParser where
  happySomeParser = happyThen (happyParse 35# tks) (\x -> happyReturn (happyOut93 x))

pExp2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 36# tks) (\x -> happyReturn (happyOut94 x))

pAddCom tks = happySomeParser where
  happySomeParser = happyThen (happyParse 37# tks) (\x -> happyReturn (happyOut95 x))

pExp3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 38# tks) (\x -> happyReturn (happyOut96 x))

pMulCom tks = happySomeParser where
  happySomeParser = happyThen (happyParse 39# tks) (\x -> happyReturn (happyOut97 x))

pExp4 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 40# tks) (\x -> happyReturn (happyOut98 x))

pListAccId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 41# tks) (\x -> happyReturn (happyOut99 x))

pAccId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 42# tks) (\x -> happyReturn (happyOut100 x))

pArrayAccess tks = happySomeParser where
  happySomeParser = happyThen (happyParse 43# tks) (\x -> happyReturn (happyOut101 x))

pListTypeAccess tks = happySomeParser where
  happySomeParser = happyThen (happyParse 44# tks) (\x -> happyReturn (happyOut102 x))

pTypeAccess tks = happySomeParser where
  happySomeParser = happyThen (happyParse 45# tks) (\x -> happyReturn (happyOut103 x))

pListConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 46# tks) (\x -> happyReturn (happyOut104 x))

pListVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 47# tks) (\x -> happyReturn (happyOut105 x))

pListType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 48# tks) (\x -> happyReturn (happyOut106 x))

pListId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 49# tks) (\x -> happyReturn (happyOut107 x))

happySeq = happyDontSeq


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
{-# LINE 1 "templates\GenericTemplate.hs" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates\\GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates\\GenericTemplate.hs" #-}





-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif
{-# LINE 46 "templates\\GenericTemplate.hs" #-}


data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList





{-# LINE 67 "templates\\GenericTemplate.hs" #-}

{-# LINE 77 "templates\\GenericTemplate.hs" #-}

{-# LINE 86 "templates\\GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}


          case action of
                0#           -> {- nothing -}
                                     happyFail i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}

                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}


                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = indexShortOffAddr happyActOffsets st
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else False
         action
          | check     = indexShortOffAddr happyTable off_i
          | otherwise = indexShortOffAddr happyDefActions st


indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#





data HappyAddr = HappyA# Happy_GHC_Exts.Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 170 "templates\\GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = indexShortOffAddr happyGotoOffsets st1
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i



          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = indexShortOffAddr happyGotoOffsets st
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ( (Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
