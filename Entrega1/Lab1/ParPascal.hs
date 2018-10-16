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
happyIn56 :: (Integer) -> (HappyAbsSyn )
happyIn56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn ) -> (Integer)
happyOut56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: (Double) -> (HappyAbsSyn )
happyIn57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn ) -> (Double)
happyOut57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyIn58 :: (String) -> (HappyAbsSyn )
happyIn58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn58 #-}
happyOut58 :: (HappyAbsSyn ) -> (String)
happyOut58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut58 #-}
happyIn59 :: (Char) -> (HappyAbsSyn )
happyIn59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn59 #-}
happyOut59 :: (HappyAbsSyn ) -> (Char)
happyOut59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut59 #-}
happyIn60 :: (Id) -> (HappyAbsSyn )
happyIn60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn60 #-}
happyOut60 :: (HappyAbsSyn ) -> (Id)
happyOut60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut60 #-}
happyIn61 :: (Program) -> (HappyAbsSyn )
happyIn61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn61 #-}
happyOut61 :: (HappyAbsSyn ) -> (Program)
happyOut61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut61 #-}
happyIn62 :: (Block) -> (HappyAbsSyn )
happyIn62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn62 #-}
happyOut62 :: (HappyAbsSyn ) -> (Block)
happyOut62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut62 #-}
happyIn63 :: (Parts) -> (HappyAbsSyn )
happyIn63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn63 #-}
happyOut63 :: (HappyAbsSyn ) -> (Parts)
happyOut63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut63 #-}
happyIn64 :: (Consts) -> (HappyAbsSyn )
happyIn64 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn64 #-}
happyOut64 :: (HappyAbsSyn ) -> (Consts)
happyOut64 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut64 #-}
happyIn65 :: (Const) -> (HappyAbsSyn )
happyIn65 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn65 #-}
happyOut65 :: (HappyAbsSyn ) -> (Const)
happyOut65 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut65 #-}
happyIn66 :: (Literal) -> (HappyAbsSyn )
happyIn66 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn66 #-}
happyOut66 :: (HappyAbsSyn ) -> (Literal)
happyOut66 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut66 #-}
happyIn67 :: (Vars) -> (HappyAbsSyn )
happyIn67 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn67 #-}
happyOut67 :: (HappyAbsSyn ) -> (Vars)
happyOut67 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut67 #-}
happyIn68 :: (Var) -> (HappyAbsSyn )
happyIn68 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn68 #-}
happyOut68 :: (HappyAbsSyn ) -> (Var)
happyOut68 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut68 #-}
happyIn69 :: (Types) -> (HappyAbsSyn )
happyIn69 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn69 #-}
happyOut69 :: (HappyAbsSyn ) -> (Types)
happyOut69 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut69 #-}
happyIn70 :: (Type) -> (HappyAbsSyn )
happyIn70 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn70 #-}
happyOut70 :: (HappyAbsSyn ) -> (Type)
happyOut70 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut70 #-}
happyIn71 :: (CustomType) -> (HappyAbsSyn )
happyIn71 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn71 #-}
happyOut71 :: (HappyAbsSyn ) -> (CustomType)
happyOut71 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut71 #-}
happyIn72 :: (RangeType) -> (HappyAbsSyn )
happyIn72 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn72 #-}
happyOut72 :: (HappyAbsSyn ) -> (RangeType)
happyOut72 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut72 #-}
happyIn73 :: ([ArrType]) -> (HappyAbsSyn )
happyIn73 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn73 #-}
happyOut73 :: (HappyAbsSyn ) -> ([ArrType])
happyOut73 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut73 #-}
happyIn74 :: (ArrType) -> (HappyAbsSyn )
happyIn74 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn74 #-}
happyOut74 :: (HappyAbsSyn ) -> (ArrType)
happyOut74 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut74 #-}
happyIn75 :: ([Fields]) -> (HappyAbsSyn )
happyIn75 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn75 #-}
happyOut75 :: (HappyAbsSyn ) -> ([Fields])
happyOut75 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut75 #-}
happyIn76 :: (Fields) -> (HappyAbsSyn )
happyIn76 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn76 #-}
happyOut76 :: (HappyAbsSyn ) -> (Fields)
happyOut76 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut76 #-}
happyIn77 :: ([ProcsYFuncs]) -> (HappyAbsSyn )
happyIn77 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn77 #-}
happyOut77 :: (HappyAbsSyn ) -> ([ProcsYFuncs])
happyOut77 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut77 #-}
happyIn78 :: (ProcsYFuncs) -> (HappyAbsSyn )
happyIn78 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn78 #-}
happyOut78 :: (HappyAbsSyn ) -> (ProcsYFuncs)
happyOut78 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut78 #-}
happyIn79 :: ([DecParm]) -> (HappyAbsSyn )
happyIn79 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn79 #-}
happyOut79 :: (HappyAbsSyn ) -> ([DecParm])
happyOut79 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut79 #-}
happyIn80 :: (DecParm) -> (HappyAbsSyn )
happyIn80 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn80 #-}
happyOut80 :: (HappyAbsSyn ) -> (DecParm)
happyOut80 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut80 #-}
happyIn81 :: (BlockProcFun) -> (HappyAbsSyn )
happyIn81 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn81 #-}
happyOut81 :: (HappyAbsSyn ) -> (BlockProcFun)
happyOut81 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut81 #-}
happyIn82 :: (Body) -> (HappyAbsSyn )
happyIn82 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn82 #-}
happyOut82 :: (HappyAbsSyn ) -> (Body)
happyOut82 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut82 #-}
happyIn83 :: ([Instruction]) -> (HappyAbsSyn )
happyIn83 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn83 #-}
happyOut83 :: (HappyAbsSyn ) -> ([Instruction])
happyOut83 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut83 #-}
happyIn84 :: (Instruction) -> (HappyAbsSyn )
happyIn84 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn84 #-}
happyOut84 :: (HappyAbsSyn ) -> (Instruction)
happyOut84 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut84 #-}
happyIn85 :: (SimpleInstruction) -> (HappyAbsSyn )
happyIn85 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn85 #-}
happyOut85 :: (HappyAbsSyn ) -> (SimpleInstruction)
happyOut85 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut85 #-}
happyIn86 :: (StructuredInstruction) -> (HappyAbsSyn )
happyIn86 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn86 #-}
happyOut86 :: (HappyAbsSyn ) -> (StructuredInstruction)
happyOut86 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut86 #-}
happyIn87 :: (ConditionalInstruction) -> (HappyAbsSyn )
happyIn87 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn87 #-}
happyOut87 :: (HappyAbsSyn ) -> (ConditionalInstruction)
happyOut87 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut87 #-}
happyIn88 :: (CompositeInstruction) -> (HappyAbsSyn )
happyIn88 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn88 #-}
happyOut88 :: (HappyAbsSyn ) -> (CompositeInstruction)
happyOut88 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut88 #-}
happyIn89 :: ([Ramas]) -> (HappyAbsSyn )
happyIn89 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn89 #-}
happyOut89 :: (HappyAbsSyn ) -> ([Ramas])
happyOut89 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut89 #-}
happyIn90 :: (Ramas) -> (HappyAbsSyn )
happyIn90 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn90 #-}
happyOut90 :: (HappyAbsSyn ) -> (Ramas)
happyOut90 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut90 #-}
happyIn91 :: ([ConstCase]) -> (HappyAbsSyn )
happyIn91 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn91 #-}
happyOut91 :: (HappyAbsSyn ) -> ([ConstCase])
happyOut91 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut91 #-}
happyIn92 :: (ConstCase) -> (HappyAbsSyn )
happyIn92 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn92 #-}
happyOut92 :: (HappyAbsSyn ) -> (ConstCase)
happyOut92 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut92 #-}
happyIn93 :: (CallFunProc) -> (HappyAbsSyn )
happyIn93 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn93 #-}
happyOut93 :: (HappyAbsSyn ) -> (CallFunProc)
happyOut93 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut93 #-}
happyIn94 :: (CallProc) -> (HappyAbsSyn )
happyIn94 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn94 #-}
happyOut94 :: (HappyAbsSyn ) -> (CallProc)
happyOut94 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut94 #-}
happyIn95 :: (ExpC) -> (HappyAbsSyn )
happyIn95 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn95 #-}
happyOut95 :: (HappyAbsSyn ) -> (ExpC)
happyOut95 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut95 #-}
happyIn96 :: ([ExpC]) -> (HappyAbsSyn )
happyIn96 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn96 #-}
happyOut96 :: (HappyAbsSyn ) -> ([ExpC])
happyOut96 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut96 #-}
happyIn97 :: ([Exp]) -> (HappyAbsSyn )
happyIn97 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn97 #-}
happyOut97 :: (HappyAbsSyn ) -> ([Exp])
happyOut97 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut97 #-}
happyIn98 :: (Exp) -> (HappyAbsSyn )
happyIn98 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn98 #-}
happyOut98 :: (HappyAbsSyn ) -> (Exp)
happyOut98 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut98 #-}
happyIn99 :: (Exp) -> (HappyAbsSyn )
happyIn99 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn99 #-}
happyOut99 :: (HappyAbsSyn ) -> (Exp)
happyOut99 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut99 #-}
happyIn100 :: (Exp) -> (HappyAbsSyn )
happyIn100 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn100 #-}
happyOut100 :: (HappyAbsSyn ) -> (Exp)
happyOut100 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut100 #-}
happyIn101 :: (Exp) -> (HappyAbsSyn )
happyIn101 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn101 #-}
happyOut101 :: (HappyAbsSyn ) -> (Exp)
happyOut101 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut101 #-}
happyIn102 :: (Exp) -> (HappyAbsSyn )
happyIn102 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn102 #-}
happyOut102 :: (HappyAbsSyn ) -> (Exp)
happyOut102 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut102 #-}
happyIn103 :: ([AccId]) -> (HappyAbsSyn )
happyIn103 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn103 #-}
happyOut103 :: (HappyAbsSyn ) -> ([AccId])
happyOut103 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut103 #-}
happyIn104 :: (AccId) -> (HappyAbsSyn )
happyIn104 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn104 #-}
happyOut104 :: (HappyAbsSyn ) -> (AccId)
happyOut104 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut104 #-}
happyIn105 :: (ArrayAccess) -> (HappyAbsSyn )
happyIn105 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn105 #-}
happyOut105 :: (HappyAbsSyn ) -> (ArrayAccess)
happyOut105 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut105 #-}
happyIn106 :: ([TypeAccess]) -> (HappyAbsSyn )
happyIn106 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn106 #-}
happyOut106 :: (HappyAbsSyn ) -> ([TypeAccess])
happyOut106 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut106 #-}
happyIn107 :: (TypeAccess) -> (HappyAbsSyn )
happyIn107 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn107 #-}
happyOut107 :: (HappyAbsSyn ) -> (TypeAccess)
happyOut107 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut107 #-}
happyIn108 :: ([Pointer]) -> (HappyAbsSyn )
happyIn108 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn108 #-}
happyOut108 :: (HappyAbsSyn ) -> ([Pointer])
happyOut108 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut108 #-}
happyIn109 :: (Pointer) -> (HappyAbsSyn )
happyIn109 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn109 #-}
happyOut109 :: (HappyAbsSyn ) -> (Pointer)
happyOut109 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut109 #-}
happyIn110 :: ([Const]) -> (HappyAbsSyn )
happyIn110 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn110 #-}
happyOut110 :: (HappyAbsSyn ) -> ([Const])
happyOut110 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut110 #-}
happyIn111 :: ([Var]) -> (HappyAbsSyn )
happyIn111 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn111 #-}
happyOut111 :: (HappyAbsSyn ) -> ([Var])
happyOut111 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut111 #-}
happyIn112 :: ([Type]) -> (HappyAbsSyn )
happyIn112 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn112 #-}
happyOut112 :: (HappyAbsSyn ) -> ([Type])
happyOut112 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut112 #-}
happyIn113 :: ([Id]) -> (HappyAbsSyn )
happyIn113 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn113 #-}
happyOut113 :: (HappyAbsSyn ) -> ([Id])
happyOut113 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut113 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x31\x03\x38\x03\x38\x03\x38\x03\x28\x03\x83\x01\x26\x03\x1f\x03\x24\x03\x1e\x03\x9d\x00\x8f\x01\x8f\x01\x8f\x01\xbd\x01\x1e\x03\x00\x00\xa4\x00\x7b\x00\xec\x00\x18\x03\x34\x03\x2f\x05\x2f\x05\x12\x03\x32\x05\x96\x00\x4b\x01\x8f\x01\x8f\x01\x8f\x01\x8f\x01\x12\x03\x12\x03\x8a\x00\x00\x00\x8a\x00\x8a\x00\x6e\x00\x6e\x00\x74\x00\x74\x00\x12\x03\x12\x03\x12\x03\x8a\x00\x8a\x00\x30\x03\x30\x03\x0f\x03\x0f\x03\x0f\x03\x0f\x03\x02\x03\x00\x00\x2c\x03\xff\x02\x00\x00\x16\x03\x23\x03\xf3\x02\x1c\x03\xef\x02\x1a\x03\x0a\x03\x17\x03\xec\x02\xec\x02\x00\x00\xec\x02\x01\x03\x00\x00\x00\x00\x00\x00\x00\x00\xe2\x00\x00\x00\x00\x00\x00\x00\x91\x04\x4b\x00\x2d\x03\x00\x00\x0e\x03\xfc\x02\xd7\x02\x8a\x00\x74\x00\x74\x00\x6e\x00\x00\x00\x00\x00\x00\x00\xd7\x02\x03\x03\xf4\x02\xd0\x02\x7a\x00\xd0\x02\xd0\x02\xfd\x02\xcf\x02\xd9\x00\xb3\x00\x8f\x03\xcf\x02\xcf\x02\xfb\x02\x01\x00\xc5\x02\x00\x00\xf8\x02\xc2\x02\xf6\x02\xb4\x02\x00\x00\x00\x00\xb4\x02\xb4\x02\xe4\x02\xb1\x02\xdb\x02\xb0\x02\xd8\x02\xad\x02\xa5\x02\x2f\x05\x8a\x00\xa7\x02\x8a\x00\x8a\x00\xa7\x02\x00\x00\x00\x00\x2f\x05\x02\x00\xa7\x02\x00\x00\xce\x02\xa6\x02\x00\x00\x00\x00\xa6\x02\xcc\x02\xa1\x02\x2f\x05\xa3\x02\xa9\x02\x98\x02\x8c\x02\x84\x02\xaf\x02\x83\x02\x7e\x02\xa0\x02\x77\x02\x76\x02\x76\x02\x2b\x00\x68\x02\x93\x02\x65\x02\x8e\x02\x91\x02\x90\x02\x8f\x02\x5b\x02\x5b\x02\x88\x02\x00\x00\x00\x00\x5a\x02\x09\x01\x5a\x02\x86\x02\x57\x02\x57\x02\x78\x02\x85\x00\x54\x02\x54\x02\x3a\x02\x4c\x02\x4c\x02\x38\x02\x3f\x02\x3f\x02\x3f\x02\x3f\x02\x3f\x02\x56\x02\x32\x02\x37\x02\x55\x02\x59\x02\x00\x00\x00\x00\x33\x02\x8f\x01\x00\x00\x5d\x02\x8f\x01\x8f\x01\x8f\x01\x33\x01\x68\x00\x00\x00\x50\x02\x4e\x02\xa9\x00\x44\x02\x17\x02\x00\x00\x1e\x02\x00\x00\x2c\x02\x2f\x05\x61\x00\x00\x00\x00\x00\x61\x00\x26\x02\x19\x02\x1d\x02\x25\x02\x10\x02\x2b\x02\x8f\x01\x2f\x05\x8f\x01\x61\x00\x24\x02\x61\x00\x6e\x00\x6e\x00\x6e\x00\x6e\x00\x6e\x00\x6e\x00\x74\x00\x74\x00\x74\x00\x74\x00\x74\x00\x74\x00\x74\x00\x74\x00\x0b\x02\x61\x00\x91\x04\x2d\x03\x2d\x03\x21\x02\x00\x00\x0a\x02\x00\x00\x0a\x02\x83\x01\x55\x00\x92\x01\x0a\x02\x55\x00\x0a\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2d\x03\x2d\x03\x2d\x03\x4b\x00\x4b\x00\x4b\x00\x4b\x00\x4b\x00\x4b\x00\x00\x00\x00\x00\x20\x02\x00\x00\x00\x00\x00\x00\x4f\x00\x4f\x00\x09\x02\x8f\x01\x2f\x05\x00\x00\x08\x02\x4f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xeb\x01\x00\x00\xa9\x00\xa9\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\xfb\x01\x00\x00\xee\x01\x04\x02\x01\x02\x00\x00\xe5\xff\x5c\x01\x00\x00\xe7\x01\xe3\x01\x00\x00\x00\x00\xe4\xff\x00\x00\x4f\x00\x4f\x00\x00\x00\x2f\x05\x00\x00\xf7\x01\xf4\x01\x47\x00\x00\x00\xe5\x01\xc4\x01\x00\x00\xdc\x01\xda\x01\x2f\x05\x2f\x05\xe9\x01\xe8\x01\x00\x00\xd0\x01\x00\x00\x00\x00\xd8\x01\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\xde\x01\x70\x01\xa5\x01\xd5\x01\x54\x00\x20\x04\xc9\x01\x07\x00\xc3\x01\xd6\x00\xd9\x05\x00\x06\x7d\x05\x82\x05\x27\x00\x2d\x00\xb4\x01\xa4\x01\x12\x00\x15\x00\x44\x01\x8c\x01\xbd\x04\x26\x05\x78\x01\x0b\x01\x6b\x01\x64\x01\xa4\x02\xf0\x02\xf1\x04\x69\x04\x3f\x00\x42\x00\xae\x01\x69\x01\xa1\x01\x9f\x02\xde\x02\x83\x03\x03\x04\x5e\x04\x2b\x01\x46\x00\x67\x00\x07\x01\x16\x01\xad\x01\x3f\x01\xc4\x00\x20\x00\xa8\x00\x35\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa2\x01\x00\x00\x00\x00\x00\x00\x00\x00\x63\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x54\x01\x00\x00\x92\x02\xd1\x03\xcc\x03\xd1\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x39\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6f\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x79\x01\xa0\x04\x85\x02\x00\x00\x53\x02\x46\x02\x00\x00\x00\x00\x00\x00\x94\x04\x39\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x77\x04\x4d\x01\x53\x01\x00\x00\xc3\x00\x00\x00\x00\x00\x22\x00\x00\x00\x00\x00\x00\x00\x66\x01\x41\x01\x20\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x1e\x01\x00\x00\x1b\x00\x00\x00\x00\x00\xa7\x00\x00\x00\x00\x00\x0e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf6\x00\x00\x00\xfe\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6a\x05\x00\x00\x00\x00\xef\x05\x65\x05\xea\x05\x14\x00\xc8\x05\x00\x00\x00\x00\x00\x00\x0b\x00\x00\x00\xe4\x00\x00\x00\xf0\x00\x00\x00\x00\x00\x6a\x04\x39\x02\x00\x00\xce\x00\xd3\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x58\x02\x0f\x05\x3c\x03\x62\x01\x00\x00\x55\x01\x76\x03\x69\x03\x37\x03\x2a\x03\x1d\x03\xeb\x02\xbf\x03\xba\x03\x88\x03\x51\x04\x4c\x04\x1a\x04\x15\x04\x08\x04\xe3\x00\xc0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xdd\x00\x00\x00\x56\x00\xd7\x03\xb7\x05\x05\x00\x5f\x00\xa6\x05\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x02\xfa\x01\xcc\x00\x0c\x02\x03\x05\x00\x00\x00\x00\x23\x01\x00\x00\x00\x00\x00\x00\x98\x00\x00\x00\xd7\x00\x00\x00\x06\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x36\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xee\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xed\x01\xbb\x01\x00\x00\xec\x04\x00\x00\x00\x00\x00\x00\x95\x05\x00\x00\x17\x01\xc5\x00\x00\x00\x00\x00\x00\x00\xe0\x04\xc9\x04\x00\x00\x00\x00\x00\x00\x15\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\xc2\xff\xc2\xff\xc2\xff\x00\x00\x00\x00\xbb\xff\x49\xff\xb8\xff\x00\x00\x00\x00\x00\x00\xad\xff\x00\x00\x49\xff\x49\xff\xa3\xff\x00\x00\x49\xff\x49\xff\xc2\xff\x00\x00\x96\xff\x96\xff\x00\x00\x00\x00\x00\x00\x00\x00\x84\xff\x84\xff\x84\xff\x00\x00\x00\x00\x00\x00\x00\x00\x7b\xff\x79\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x49\xff\x00\x00\x49\xff\x00\x00\xca\xff\x48\xff\x00\x00\xc6\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x50\xff\x00\x00\x52\xff\xbf\xff\xbe\xff\xbd\xff\xbc\xff\x5a\xff\x61\xff\x5e\xff\x53\xff\x75\xff\x6e\xff\x68\xff\x62\xff\x60\xff\x58\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc9\xff\xc8\xff\xc7\xff\x00\x00\x55\xff\x00\x00\x00\x00\x5a\xff\x00\x00\x00\x00\x5c\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x78\xff\x00\x00\x00\x00\x7c\xff\x7d\xff\x00\x00\x00\x00\x00\x00\x80\xff\x81\xff\x00\x00\x00\x00\x83\xff\x00\x00\x00\x00\x00\x00\x87\xff\x00\x00\x00\x00\x96\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x90\xff\x8f\xff\x96\xff\x5a\xff\x00\x00\x92\xff\x00\x00\x00\x00\x95\xff\x94\xff\x00\x00\x98\xff\x00\x00\x96\xff\x00\x00\xb8\xff\x00\x00\x00\x00\x00\x00\x00\x00\x49\xff\x00\x00\x9e\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa6\xff\xaa\xff\xa9\xff\x00\x00\x00\x00\x00\x00\xac\xff\xaf\xff\xae\xff\x00\x00\xaf\xff\x00\x00\x00\x00\x49\xff\x00\x00\x00\x00\x49\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x49\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xba\xff\xb7\xff\x00\x00\xad\xff\xb3\xff\x00\x00\x00\x00\xad\xff\x00\x00\x49\xff\x00\x00\xa2\xff\x00\x00\x00\x00\x9f\xff\x00\x00\x00\x00\xc1\xff\xbb\xff\x9a\xff\x00\x00\x96\xff\x00\x00\x59\xff\x7b\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x84\xff\x96\xff\x84\xff\x79\xff\x00\x00\x79\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x76\xff\x6d\xff\x6c\xff\x00\x00\x57\xff\x00\x00\x51\xff\x4f\xff\x00\x00\x00\x00\x49\xff\x4b\xff\x00\x00\x49\xff\x47\xff\xb6\xff\x4a\xff\x4c\xff\xb9\xff\xc0\xff\x4e\xff\x5f\xff\x5d\xff\x54\xff\x5b\xff\x64\xff\x65\xff\x63\xff\x66\xff\x67\xff\x6a\xff\x69\xff\x6b\xff\x71\xff\x74\xff\x72\xff\x6f\xff\x70\xff\x73\xff\x77\xff\x7a\xff\x00\x00\x82\xff\x85\xff\x86\xff\x00\x00\x00\x00\x00\x00\x84\xff\x96\xff\x91\xff\x00\x00\x00\x00\x93\xff\x97\xff\x99\xff\xa3\xff\x9b\xff\x00\x00\x9d\xff\x9f\xff\x9f\xff\xa4\xff\xa5\xff\xa8\xff\xab\xff\xb4\xff\xb5\xff\x00\x00\xb1\xff\xc4\xff\xc2\xff\xc5\xff\x00\x00\x00\x00\x00\x00\x9c\xff\xc3\xff\x00\x00\x56\xff\x8e\xff\x00\x00\x88\xff\x8b\xff\x00\x00\x7f\xff\x00\x00\x00\x00\x8c\xff\x96\xff\x7e\xff\x00\x00\x00\x00\x00\x00\xb2\xff\xc2\xff\x00\x00\x8d\xff\x00\x00\x00\x00\x96\xff\x96\xff\x00\x00\x00\x00\xa1\xff\xc2\xff\x8a\xff\x89\xff\x00\x00\xa0\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x1d\x00\x01\x00\x01\x00\x16\x00\x04\x00\x21\x00\x06\x00\x04\x00\x04\x00\x04\x00\x04\x00\x27\x00\x04\x00\x0c\x00\x04\x00\x2c\x00\x0c\x00\x04\x00\x0c\x00\x04\x00\x13\x00\x04\x00\x15\x00\x04\x00\x04\x00\x0c\x00\x17\x00\x18\x00\x17\x00\x18\x00\x04\x00\x1e\x00\x1f\x00\x17\x00\x18\x00\x04\x00\x24\x00\x04\x00\x13\x00\x14\x00\x17\x00\x18\x00\x04\x00\x0c\x00\x18\x00\x13\x00\x14\x00\x2e\x00\x04\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x36\x00\x36\x00\x04\x00\x13\x00\x14\x00\x37\x00\x39\x00\x39\x00\x39\x00\x39\x00\x14\x00\x39\x00\x04\x00\x39\x00\x37\x00\x04\x00\x39\x00\x01\x00\x39\x00\x04\x00\x39\x00\x21\x00\x39\x00\x39\x00\x04\x00\x01\x00\x06\x00\x27\x00\x04\x00\x39\x00\x06\x00\x01\x00\x37\x00\x04\x00\x39\x00\x04\x00\x39\x00\x15\x00\x09\x00\x17\x00\x09\x00\x39\x00\x36\x00\x01\x00\x04\x00\x25\x00\x04\x00\x39\x00\x06\x00\x26\x00\x01\x00\x15\x00\x04\x00\x17\x00\x0e\x00\x39\x00\x01\x00\x29\x00\x26\x00\x04\x00\x24\x00\x06\x00\x01\x00\x30\x00\x31\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x15\x00\x29\x00\x17\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x24\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x01\x00\x36\x00\x13\x00\x04\x00\x15\x00\x06\x00\x29\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x38\x00\x31\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x01\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x1f\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x2f\x00\x04\x00\x04\x00\x15\x00\x24\x00\x19\x00\x35\x00\x36\x00\x15\x00\x0a\x00\x17\x00\x0e\x00\x0e\x00\x04\x00\x22\x00\x06\x00\x35\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x21\x00\x29\x00\x04\x00\x04\x00\x04\x00\x0a\x00\x27\x00\x09\x00\x09\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2f\x00\x26\x00\x04\x00\x04\x00\x03\x00\x0a\x00\x35\x00\x38\x00\x38\x00\x04\x00\x09\x00\x01\x00\x0e\x00\x25\x00\x1a\x00\x04\x00\x04\x00\x36\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x16\x00\x30\x00\x31\x00\x32\x00\x33\x00\x1b\x00\x13\x00\x28\x00\x15\x00\x25\x00\x36\x00\x36\x00\x0b\x00\x23\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x04\x00\x30\x00\x31\x00\x32\x00\x33\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2f\x00\x30\x00\x31\x00\x36\x00\x1a\x00\x0a\x00\x2f\x00\x30\x00\x31\x00\x0c\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2f\x00\x07\x00\x08\x00\x07\x00\x08\x00\x0a\x00\x35\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\x1e\x00\x1f\x00\x20\x00\x25\x00\x0a\x00\x19\x00\x04\x00\x19\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x16\x00\x30\x00\x31\x00\x32\x00\x33\x00\x25\x00\x06\x00\x07\x00\x08\x00\x36\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x04\x00\x30\x00\x31\x00\x25\x00\x33\x00\x27\x00\x07\x00\x08\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x1f\x00\x30\x00\x31\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2f\x00\x30\x00\x31\x00\x19\x00\x02\x00\x0a\x00\x0d\x00\x05\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x35\x00\x36\x00\x04\x00\x20\x00\x0a\x00\x34\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x35\x00\x2a\x00\x06\x00\x07\x00\x08\x00\x0a\x00\x25\x00\x30\x00\x04\x00\x04\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x20\x00\x30\x00\x31\x00\x25\x00\x34\x00\x35\x00\x1f\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x28\x00\x30\x00\x31\x00\x25\x00\x1d\x00\x27\x00\x34\x00\x35\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x26\x00\x30\x00\x31\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x2f\x00\x30\x00\x31\x00\x18\x00\x0a\x00\x07\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x21\x00\x31\x00\x32\x00\x33\x00\x34\x00\x0a\x00\x27\x00\x16\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x31\x00\x32\x00\x33\x00\x34\x00\x35\x00\x0a\x00\x25\x00\x35\x00\x36\x00\x15\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x0d\x00\x30\x00\x31\x00\x25\x00\x0b\x00\x27\x00\x34\x00\x35\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x08\x00\x30\x00\x31\x00\x25\x00\x34\x00\x35\x00\x05\x00\x0c\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x1a\x00\x30\x00\x31\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x35\x00\x36\x00\x0c\x00\x0c\x00\x1c\x00\x0a\x00\x1c\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x0c\x00\x0a\x00\x1f\x00\x02\x00\x0a\x00\x1e\x00\x02\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x25\x00\x25\x00\x14\x00\x1a\x00\x0a\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x14\x00\x30\x00\x31\x00\x25\x00\x35\x00\x18\x00\x02\x00\x02\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x05\x00\x30\x00\x31\x00\x25\x00\x21\x00\x22\x00\x23\x00\x24\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x0b\x00\x30\x00\x31\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2e\x00\x35\x00\x35\x00\x1c\x00\x25\x00\x0a\x00\x2b\x00\x1f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\x35\x00\x2f\x00\x0a\x00\x01\x00\x0a\x00\x01\x00\x1f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x25\x00\x02\x00\x07\x00\x0c\x00\x0a\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x36\x00\x30\x00\x31\x00\x25\x00\x35\x00\x35\x00\x18\x00\x35\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x36\x00\x30\x00\x31\x00\x25\x00\x21\x00\x22\x00\x23\x00\x24\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x36\x00\x30\x00\x31\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x36\x00\x13\x00\x35\x00\x05\x00\x08\x00\x0a\x00\x36\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x08\x00\x08\x00\x08\x00\x0c\x00\x36\x00\x0a\x00\x0a\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x25\x00\x35\x00\x0c\x00\x36\x00\x0a\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x36\x00\x30\x00\x31\x00\x25\x00\x35\x00\x0a\x00\x36\x00\x18\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x35\x00\x30\x00\x31\x00\x25\x00\x21\x00\x22\x00\x23\x00\x24\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x36\x00\x30\x00\x31\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2d\x00\x36\x00\x0c\x00\x0b\x00\x35\x00\x0a\x00\x36\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x36\x00\x0c\x00\x0a\x00\x36\x00\x36\x00\x0a\x00\x05\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x25\x00\x01\x00\x36\x00\x01\x00\x0a\x00\x36\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x05\x00\x30\x00\x31\x00\x25\x00\x07\x00\x36\x00\x36\x00\x13\x00\x05\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x36\x00\x30\x00\x31\x00\x25\x00\x15\x00\x22\x00\x23\x00\x24\x00\x07\x00\x15\x00\x2c\x00\x2d\x00\x2e\x00\x10\x00\x30\x00\x31\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x36\x00\x0c\x00\x0a\x00\x36\x00\x10\x00\x0a\x00\x0c\x00\x36\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0c\x00\x03\x00\x05\x00\x1a\x00\x31\x00\x0a\x00\x36\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x25\x00\x16\x00\x35\x00\x15\x00\x0a\x00\x35\x00\x1b\x00\x2c\x00\x2d\x00\x2e\x00\x18\x00\x30\x00\x31\x00\x25\x00\x23\x00\x2d\x00\x1a\x00\x35\x00\x35\x00\x2f\x00\x2c\x00\x2d\x00\x2e\x00\x28\x00\x30\x00\x31\x00\x25\x00\x35\x00\xff\xff\x23\x00\x24\x00\xff\xff\xff\xff\x2c\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x31\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x25\x00\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\x2c\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x31\x00\x25\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x2c\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x31\x00\x25\x00\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\xff\xff\x2c\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x31\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x31\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x36\x00\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0a\x00\xff\xff\xff\xff\xff\xff\x25\x00\xff\xff\x0a\x00\xff\xff\xff\xff\x25\x00\xff\xff\xff\xff\x2d\x00\x2e\x00\xff\xff\x30\x00\x31\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x31\x00\x25\x00\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\xff\xff\xff\xff\x2d\x00\x2e\x00\xff\xff\x30\x00\x31\x00\x2d\x00\x2e\x00\xff\xff\x30\x00\x31\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0a\x00\xff\xff\xff\xff\xff\xff\x25\x00\xff\xff\x0a\x00\xff\xff\xff\xff\x25\x00\xff\xff\xff\xff\x2d\x00\x2e\x00\xff\xff\x30\x00\x31\x00\xff\xff\x2e\x00\xff\xff\x30\x00\x31\x00\x25\x00\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\xff\xff\xff\xff\xff\xff\x2e\x00\xff\xff\x30\x00\x31\x00\xff\xff\x2e\x00\xff\xff\x30\x00\x31\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\xff\xff\xff\xff\x25\x00\xff\xff\x0a\x00\xff\xff\xff\xff\x25\x00\xff\xff\xff\xff\xff\xff\x2e\x00\x04\x00\x30\x00\x31\x00\xff\xff\x2e\x00\xff\xff\x30\x00\x31\x00\x25\x00\xff\xff\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x2e\x00\x24\x00\x30\x00\x31\x00\x26\x00\xff\xff\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x04\x00\x2f\x00\x30\x00\x31\x00\xff\xff\x26\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x04\x00\xff\xff\x2f\x00\x30\x00\x31\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x26\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x04\x00\xff\xff\x2f\x00\x30\x00\x31\x00\x26\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x04\x00\xff\xff\x2f\x00\x30\x00\x31\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x26\x00\x04\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\xff\xff\x2f\x00\x30\x00\x31\x00\x26\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x2f\x00\x30\x00\x31\x00\x0a\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x26\x00\x04\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\xff\xff\x2f\x00\x30\x00\x31\x00\x26\x00\x04\x00\x23\x00\x24\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x2f\x00\x30\x00\x31\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x26\x00\x04\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\xff\xff\x2f\x00\x30\x00\x31\x00\x26\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x2f\x00\x30\x00\x31\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x18\x00\x19\x00\xff\xff\x18\x00\x19\x00\x26\x00\xff\xff\xff\xff\x20\x00\xff\xff\x22\x00\x20\x00\xff\xff\x22\x00\x2f\x00\x30\x00\x31\x00\xff\xff\x2a\x00\xff\xff\xff\xff\x2a\x00\xff\xff\xff\xff\x30\x00\xff\xff\xff\xff\x30\x00\xff\xff\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\x10\x00\x11\x00\x12\x00\xff\xff\xff\xff\x10\x00\x11\x00\x12\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\x10\x00\x11\x00\x12\x00\xff\xff\xff\xff\x10\x00\xff\xff\x12\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\x10\x00\xff\xff\xff\xff\xff\xff\xff\xff\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x10\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x50\x01\x57\x00\xdc\x00\xce\x00\x58\x00\x9d\x00\x59\x00\x37\x00\x37\x00\x37\x00\x37\x00\x9e\x00\x37\x00\x7d\xff\x37\x00\x51\x01\x3d\x00\x37\x00\xb6\x00\x37\x00\xdd\x00\x37\x00\x45\x00\x37\x00\x37\x00\x3d\x00\x43\x01\x9a\x00\x44\x01\x9a\x00\x37\x00\x7d\xff\x7d\xff\x34\x01\x9a\x00\x37\x00\x5a\x00\x37\x00\x38\x01\xa2\x00\x99\x00\x9a\x00\x37\x00\x3d\x00\x96\x00\xc5\x00\xa2\x00\x7d\xff\x37\x00\x37\x00\x5b\x00\x5c\x00\x5d\x00\x3a\x00\xff\xff\x7d\xff\x37\x00\xa1\x00\xa2\x00\x0a\x01\x97\x00\x3f\x00\x97\x00\x3f\x00\x9f\x00\x07\x01\x71\x00\x97\x00\xc3\x00\x6f\x00\x3f\x00\xb0\x00\xc8\x00\x61\x00\x97\x00\x9d\x00\xa0\x00\x97\x00\xf0\x00\x57\x00\xf1\x00\x9e\x00\x58\x00\xa0\x00\x59\x00\xb0\x00\x3e\x00\x40\x00\x3f\x00\x40\x00\xd2\x00\xb1\x00\xba\x00\xb2\x00\x41\x00\xa0\x00\xff\xff\x57\x00\x3a\x00\x72\x00\x58\x00\xa0\x00\x59\x00\x70\x00\xb0\x00\xb1\x00\x5f\x00\xb2\x00\x3b\x00\x38\x00\x57\x00\xb3\x00\xf2\x00\x58\x00\x5a\x00\x59\x00\x57\x00\x62\x00\x54\x00\x37\x00\x5b\x00\x5c\x00\x5d\x00\x3a\x00\xb1\x00\xb3\x00\xb2\x00\x37\x00\x5b\x00\x5c\x00\x5d\x00\x3a\x00\x5a\x00\x37\x00\x5b\x00\x5c\x00\x5d\x00\x3a\x00\x57\x00\x0d\x01\xdd\x00\x58\x00\x45\x00\x59\x00\xb3\x00\x37\x00\x5b\x00\x5c\x00\x5d\x00\x3a\x00\x09\x01\x60\x00\x37\x00\x5b\x00\x5c\x00\x5d\x00\x3a\x00\xb0\x00\x37\x00\x5b\x00\x5c\x00\x5d\x00\x3a\x00\xa7\xff\x37\x00\x5b\x00\x5c\x00\x5d\x00\x3a\x00\x99\x00\x3a\x00\x3a\x00\x46\x01\x5a\x00\x82\x00\x3a\x00\x9f\xff\xb1\x00\x49\xff\xb2\x00\x3b\x00\x3b\x00\xf0\x00\x83\x00\xf1\x00\x3a\x00\x37\x00\x5b\x00\x5c\x00\x5d\x00\x3a\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x9d\x00\xb3\x00\x40\x00\x40\x00\x5f\x01\x4c\x00\x9e\x00\x41\x00\x41\x00\x37\x00\x5b\x00\x5c\x00\x5d\x00\x3a\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x99\x00\xf2\x00\x3a\x00\x45\x01\xf3\x00\x4c\x00\x3a\x00\xc4\x00\x3c\x00\x61\x00\xf4\x00\xe7\x00\xb3\x00\x4d\x00\x4b\x01\x61\x00\x32\x01\xff\xff\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\xf5\x00\x53\x00\x54\x00\x10\x01\x5e\x00\xf6\x00\xdd\x00\x2d\x01\x45\x00\x4d\x00\xd4\x00\x42\x00\x31\x01\xf7\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\xc1\x00\x53\x00\x54\x00\x2c\x01\x5e\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x0e\x01\x64\x00\x54\x00\xff\xff\xc2\x00\x4c\x00\x11\x01\x64\x00\x54\x00\xb0\xff\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x99\x00\x92\x00\x93\x00\x92\x00\x93\x00\x4c\x00\x3a\x00\xc7\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\xb0\xff\x83\x00\x84\x00\x85\x00\x4d\x00\x4c\x00\x65\x01\x61\x00\x60\x01\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\xce\x00\x53\x00\x54\x00\x5d\x00\x5e\x00\x4d\x00\x41\x01\xbe\x00\x93\x00\xb0\xff\x4e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\xcf\x00\x53\x00\x54\x00\x4d\x00\x55\x00\x47\x01\x92\x00\x93\x00\x6e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\xa7\xff\x53\x00\x54\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x63\x00\x64\x00\x54\x00\x94\x00\x54\x01\x4c\x00\xd5\x00\x22\x01\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\xd6\x00\x3a\x00\xa7\xff\xd0\x00\x7e\x00\x4c\x00\xda\x00\x46\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x43\x00\x7f\x00\xbd\x00\xbe\x00\x93\x00\x4c\x00\x4d\x00\x80\x00\x87\x00\xe2\x00\x20\x01\x6b\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x7c\x00\x53\x00\x54\x00\x4d\x00\xfd\x00\x46\x00\x80\x00\x22\x01\x6b\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x6c\x00\x53\x00\x54\x00\x4d\x00\x88\x00\xe7\x00\xda\x00\x46\x00\x6e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x89\x00\x53\x00\x54\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x90\x00\x8a\x00\x64\x00\x54\x00\x4d\xff\x4c\x00\xbc\x00\x93\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4d\xff\x37\x00\x5b\x00\x5c\x00\x5d\x00\x4c\x00\x4d\xff\x9b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x37\x00\x5b\x00\x5c\x00\x5d\x00\x3a\x00\x4c\x00\x4d\x00\x3a\x00\x4d\xff\x9e\x00\x6a\x00\x6b\x00\x4f\x00\x50\x00\x51\x00\x52\x00\xb4\x00\x53\x00\x54\x00\x4d\x00\xb7\x00\x6d\x00\xff\x00\x46\x00\x6e\x00\x4f\x00\x50\x00\x51\x00\x52\x00\xbb\x00\x53\x00\x54\x00\x4d\x00\x45\x00\x46\x00\xbf\x00\x67\x01\x5b\x01\x4f\x00\x50\x00\x51\x00\x52\x00\x96\x00\x53\x00\x54\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x3a\x00\xa7\xff\x62\x01\x63\x01\x5e\x01\x4c\x00\x5f\x01\x3a\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x96\x00\x59\x01\x5a\x01\x52\x01\x55\x01\x4c\x00\x53\x01\x56\x01\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x73\x00\x4c\x00\x4d\x00\x57\x01\x43\x01\x96\x00\x74\x00\x5c\x01\x4f\x00\x50\x00\x51\x00\x52\x00\x49\x01\x53\x00\x54\x00\x4d\x00\x3a\x00\x92\x00\x4f\x01\x10\x01\x4c\x01\x4f\x00\x50\x00\x51\x00\x52\x00\x22\x01\x53\x00\x54\x00\x4d\x00\x4a\x01\x7b\x00\x79\x00\x77\x00\x4d\x01\x4f\x00\x50\x00\x51\x00\x52\x00\x27\x01\x53\x00\x54\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x28\x01\x3a\x00\x3a\x00\x29\x01\x2a\x01\x4c\x00\x2b\x01\x2c\x01\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x31\x01\x3a\x00\xb9\x00\x34\x01\x36\x01\x4c\x00\x37\x01\x3f\x01\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x73\x00\x4c\x00\x4d\x00\x3d\x01\x40\x01\x41\x01\x74\x00\x2e\x01\x4f\x00\x50\x00\x51\x00\x52\x00\xff\xff\x53\x00\x54\x00\x4d\x00\x3a\x00\x3a\x00\x92\x00\x3a\x00\xde\x00\x4f\x00\x50\x00\x51\x00\x52\x00\xff\xff\x53\x00\x54\x00\x4d\x00\x25\x01\x7b\x00\x79\x00\x77\x00\xdf\x00\x4f\x00\x50\x00\x51\x00\x52\x00\xff\xff\x53\x00\x54\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\xff\xff\xc7\x00\x3a\x00\xcb\x00\xca\x00\x4c\x00\xff\xff\xff\xff\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\xcc\x00\xae\xff\xaf\xff\xcd\x00\xff\xff\x4c\x00\xce\x00\xff\xff\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x73\x00\x4c\x00\x4d\x00\x3a\x00\xd2\x00\xff\xff\x74\x00\xe0\x00\x4f\x00\x50\x00\x51\x00\x52\x00\xff\xff\x53\x00\x54\x00\x4d\x00\x3a\x00\xd4\x00\xff\xff\x92\x00\xfc\x00\x4f\x00\x50\x00\x51\x00\x52\x00\x3a\x00\x53\x00\x54\x00\x4d\x00\x7a\x00\x7b\x00\x79\x00\x77\x00\x69\x00\x4f\x00\x50\x00\x51\x00\x52\x00\xff\xff\x53\x00\x54\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\xb6\x00\xff\xff\xd9\x00\xda\x00\x3a\x00\x4c\x00\xff\xff\xff\xff\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\xff\xff\xe4\x00\xe5\x00\xff\xff\xff\xff\x4c\x00\xe6\x00\xff\xff\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x73\x00\x4c\x00\x4d\x00\xe7\x00\xff\xff\xdc\x00\x74\x00\xff\xff\xf9\x00\x50\x00\x51\x00\x52\x00\xe9\x00\x53\x00\x54\x00\x4d\x00\xf8\x00\xff\xff\xff\xff\xdd\x00\xf9\x00\x68\x00\x50\x00\x51\x00\x52\x00\xff\xff\x53\x00\x54\x00\x4d\x00\x45\x00\x78\x00\x79\x00\x77\x00\xff\x00\x45\x00\x1a\x01\x51\x00\x52\x00\x02\x01\x53\x00\x54\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\xff\xff\x01\x01\x03\x01\xff\xff\x06\x01\x4c\x00\x04\x01\xff\xff\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x05\x01\xf3\x00\x07\x01\x96\x00\x37\x00\x4c\x00\xff\xff\xf4\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x73\x00\x4c\x00\x4d\x00\xf5\x00\x3a\x00\x45\x00\x74\x00\x3a\x00\xf6\x00\x1b\x01\x51\x00\x52\x00\x92\x00\x53\x00\x54\x00\x4d\x00\xf7\x00\xb6\x00\x96\x00\x3a\x00\x3a\x00\xb9\x00\x1c\x01\x51\x00\x52\x00\xc1\x00\x53\x00\x54\x00\x4d\x00\x3a\x00\x00\x00\x23\x01\x77\x00\x00\x00\x00\x00\x1d\x01\x51\x00\x52\x00\x00\x00\x53\x00\x54\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4c\x00\x00\x00\x00\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4c\x00\x00\x00\x00\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x00\x00\x00\x00\x00\x00\x4c\x00\x00\x00\x00\x00\x1e\x01\x51\x00\x52\x00\x00\x00\x53\x00\x54\x00\x4d\x00\xea\x00\xeb\x00\xec\x00\xed\x00\xee\x00\xef\x00\x1f\x01\x51\x00\x52\x00\x00\x00\x53\x00\x54\x00\x4d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4d\x00\x00\x00\x67\x00\x51\x00\x52\x00\x00\x00\x53\x00\x54\x00\x17\x01\x52\x00\x00\x00\x53\x00\x54\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\xff\xff\x00\x00\x00\x00\x00\x00\x4c\x00\x00\x00\x00\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4c\x00\x00\x00\x00\x00\x00\x00\x4d\x00\x00\x00\x0c\x01\x00\x00\x00\x00\x4d\x00\x00\x00\x00\x00\x18\x01\x52\x00\x00\x00\x53\x00\x54\x00\x19\x01\x52\x00\x00\x00\x53\x00\x54\x00\x4d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4d\x00\x00\x00\x00\x00\xfa\x00\x52\x00\x00\x00\x53\x00\x54\x00\xfb\x00\x52\x00\x00\x00\x53\x00\x54\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4c\x00\x00\x00\x00\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4c\x00\x00\x00\x00\x00\x00\x00\x4d\x00\x00\x00\xb9\x00\x00\x00\x00\x00\x4d\x00\x00\x00\x00\x00\x66\x00\x52\x00\x00\x00\x53\x00\x54\x00\x00\x00\x12\x01\x00\x00\x53\x00\x54\x00\x4d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4d\x00\x00\x00\x00\x00\x00\x00\x13\x01\x00\x00\x53\x00\x54\x00\x00\x00\x14\x01\x00\x00\x53\x00\x54\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4c\x00\x00\x00\x00\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x4b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4c\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x73\x00\x87\x00\x00\x00\x00\x00\x4d\x00\x00\x00\x74\x00\x00\x00\x00\x00\x4d\x00\x00\x00\x00\x00\x00\x00\x15\x01\x87\x00\x53\x00\x54\x00\x00\x00\x16\x01\x00\x00\x53\x00\x54\x00\x4d\x00\x00\x00\x2f\x01\x8f\x00\x8c\x00\x8d\x00\x84\x00\x85\x00\x00\x00\x65\x00\x75\x00\x53\x00\x54\x00\x89\x00\x00\x00\xd7\x00\x8f\x00\x8c\x00\x8d\x00\x84\x00\x85\x00\x87\x00\x8a\x00\x64\x00\x54\x00\x00\x00\x89\x00\xea\x00\xeb\x00\xec\x00\xed\x00\xee\x00\xef\x00\x87\x00\x00\x00\x8a\x00\x64\x00\x54\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xdd\x00\x8f\x00\x8c\x00\x8d\x00\x84\x00\x85\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x89\x00\xe1\x00\x8f\x00\x8c\x00\x8d\x00\x84\x00\x85\x00\x87\x00\x00\x00\x8a\x00\x64\x00\x54\x00\x89\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x87\x00\x00\x00\x8a\x00\x64\x00\x54\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8e\x00\x8f\x00\x8c\x00\x8d\x00\x84\x00\x85\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x89\x00\x87\x00\x63\x01\x8c\x00\x8d\x00\x84\x00\x85\x00\x00\x00\x00\x00\x8a\x00\x64\x00\x54\x00\x89\x00\x87\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x73\x00\x00\x00\x00\x00\x8a\x00\x64\x00\x54\x00\x74\x00\x64\x01\x8c\x00\x8d\x00\x84\x00\x85\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x89\x00\x87\x00\x5a\x01\x8c\x00\x8d\x00\x84\x00\x85\x00\x00\x00\x00\x00\x8a\x00\x64\x00\x54\x00\x89\x00\x87\x00\x76\x00\x77\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8a\x00\x64\x00\x54\x00\x00\x00\x49\x01\x8c\x00\x8d\x00\x84\x00\x85\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x89\x00\x87\x00\x24\x01\x8c\x00\x8d\x00\x84\x00\x85\x00\x00\x00\x00\x00\x8a\x00\x64\x00\x54\x00\x89\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8a\x00\x64\x00\x54\x00\x00\x00\x8b\x00\x8c\x00\x8d\x00\x84\x00\x85\x00\x87\x00\x82\x00\x00\x00\x87\x00\x82\x00\x89\x00\x00\x00\x00\x00\x7e\x00\x00\x00\x83\x00\x7e\x00\x00\x00\x83\x00\x8a\x00\x64\x00\x54\x00\x00\x00\x7f\x00\x00\x00\x00\x00\x7f\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x80\x00\x00\x00\x3a\x00\x47\x00\x48\x00\x49\x00\x4a\x00\xa3\x00\x47\x00\x48\x00\x49\x00\x4a\x00\xa3\x00\xa4\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa4\x00\xa5\x00\x3a\x01\xa8\x00\x00\x00\x00\x00\xa5\x00\x3d\x01\xa8\x00\x47\x00\x48\x00\x49\x00\x4a\x00\xa3\x00\x47\x00\x48\x00\x49\x00\x4a\x00\xa3\x00\xa4\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa4\x00\xa5\x00\xa7\x00\xa8\x00\x00\x00\x00\x00\xa5\x00\x00\x00\xa6\x00\x47\x00\x48\x00\x49\x00\x4a\x00\xac\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa\x00\x00\x00\x00\x00\x00\x00\x00\x00\x57\x01\xae\x00\x47\x00\x48\x00\x49\x00\x4a\x00\xac\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x01\xae\x00\x47\x00\x48\x00\x49\x00\x4a\x00\xac\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0b\x01\xae\x00\x47\x00\x48\x00\x49\x00\x4a\x00\xac\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa\x00\x00\x00\x00\x00\x00\x00\x00\x00\x37\x01\xae\x00\x47\x00\x48\x00\x49\x00\x4a\x00\xac\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa\x00\x00\x00\x00\x00\x00\x00\x00\x00\xad\x00\xae\x00\x47\x00\x48\x00\x49\x00\x4a\x00\xa9\x00\x47\x00\x48\x00\x49\x00\x4a\x00\xa9\x00\xaa\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa\x00\x39\x01\x00\x00\x00\x00\x00\x00\x00\x00\x3b\x01\x47\x00\x48\x00\x49\x00\x4a\x00\xa9\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xab\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (53, 184) [
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
	(174 , happyReduce_174),
	(175 , happyReduce_175),
	(176 , happyReduce_176),
	(177 , happyReduce_177),
	(178 , happyReduce_178),
	(179 , happyReduce_179),
	(180 , happyReduce_180),
	(181 , happyReduce_181),
	(182 , happyReduce_182),
	(183 , happyReduce_183),
	(184 , happyReduce_184)
	]

happy_n_terms = 55 :: Int
happy_n_nonterms = 58 :: Int

happyReduce_53 = happySpecReduce_1  0# happyReduction_53
happyReduction_53 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn56
		 ((read ( happy_var_1)) :: Integer
	)}

happyReduce_54 = happySpecReduce_1  1# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn57
		 ((read ( happy_var_1)) :: Double
	)}

happyReduce_55 = happySpecReduce_1  2# happyReduction_55
happyReduction_55 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn58
		 (happy_var_1
	)}

happyReduce_56 = happySpecReduce_1  3# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn59
		 ((read ( happy_var_1)) :: Char
	)}

happyReduce_57 = happySpecReduce_1  4# happyReduction_57
happyReduction_57 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Id happy_var_1)) -> 
	happyIn60
		 (Id (happy_var_1)
	)}

happyReduce_58 = happyReduce 4# 5# happyReduction_58
happyReduction_58 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut60 happy_x_2 of { happy_var_2 -> 
	case happyOut62 happy_x_4 of { happy_var_4 -> 
	happyIn61
		 (AbsPascal.PProgram happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_59 = happySpecReduce_3  6# happyReduction_59
happyReduction_59 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	case happyOut82 happy_x_2 of { happy_var_2 -> 
	happyIn62
		 (AbsPascal.PBlock happy_var_1 happy_var_2
	)}}

happyReduce_60 = happyReduce 4# 7# happyReduction_60
happyReduction_60 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut64 happy_x_1 of { happy_var_1 -> 
	case happyOut69 happy_x_2 of { happy_var_2 -> 
	case happyOut67 happy_x_3 of { happy_var_3 -> 
	case happyOut77 happy_x_4 of { happy_var_4 -> 
	happyIn63
		 (AbsPascal.PPart happy_var_1 happy_var_2 happy_var_3 (reverse happy_var_4)
	) `HappyStk` happyRest}}}}

happyReduce_61 = happySpecReduce_0  8# happyReduction_61
happyReduction_61  =  happyIn64
		 (AbsPascal.PPartConstsEmpty
	)

happyReduce_62 = happySpecReduce_2  8# happyReduction_62
happyReduction_62 happy_x_2
	happy_x_1
	 =  case happyOut110 happy_x_2 of { happy_var_2 -> 
	happyIn64
		 (AbsPascal.PPartConst happy_var_2
	)}

happyReduce_63 = happySpecReduce_3  9# happyReduction_63
happyReduction_63 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut66 happy_x_3 of { happy_var_3 -> 
	happyIn65
		 (AbsPascal.PConst happy_var_1 happy_var_3
	)}}

happyReduce_64 = happySpecReduce_1  10# happyReduction_64
happyReduction_64 happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	happyIn66
		 (AbsPascal.PValInteger happy_var_1
	)}

happyReduce_65 = happySpecReduce_1  10# happyReduction_65
happyReduction_65 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn66
		 (AbsPascal.PValDouble happy_var_1
	)}

happyReduce_66 = happySpecReduce_1  10# happyReduction_66
happyReduction_66 happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	happyIn66
		 (AbsPascal.PValString happy_var_1
	)}

happyReduce_67 = happySpecReduce_1  10# happyReduction_67
happyReduction_67 happy_x_1
	 =  case happyOut59 happy_x_1 of { happy_var_1 -> 
	happyIn66
		 (AbsPascal.PValChar happy_var_1
	)}

happyReduce_68 = happySpecReduce_0  11# happyReduction_68
happyReduction_68  =  happyIn67
		 (AbsPascal.PPartVarsEmpty
	)

happyReduce_69 = happySpecReduce_2  11# happyReduction_69
happyReduction_69 happy_x_2
	happy_x_1
	 =  case happyOut111 happy_x_2 of { happy_var_2 -> 
	happyIn67
		 (AbsPascal.PPartVars happy_var_2
	)}

happyReduce_70 = happySpecReduce_3  12# happyReduction_70
happyReduction_70 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut113 happy_x_1 of { happy_var_1 -> 
	case happyOut71 happy_x_3 of { happy_var_3 -> 
	happyIn68
		 (AbsPascal.PVar happy_var_1 happy_var_3
	)}}

happyReduce_71 = happySpecReduce_0  13# happyReduction_71
happyReduction_71  =  happyIn69
		 (AbsPascal.PPartTypesEmpty
	)

happyReduce_72 = happySpecReduce_2  13# happyReduction_72
happyReduction_72 happy_x_2
	happy_x_1
	 =  case happyOut112 happy_x_2 of { happy_var_2 -> 
	happyIn69
		 (AbsPascal.PPartTypes happy_var_2
	)}

happyReduce_73 = happySpecReduce_3  14# happyReduction_73
happyReduction_73 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut71 happy_x_3 of { happy_var_3 -> 
	happyIn70
		 (AbsPascal.PType happy_var_1 happy_var_3
	)}}

happyReduce_74 = happySpecReduce_3  15# happyReduction_74
happyReduction_74 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut113 happy_x_2 of { happy_var_2 -> 
	happyIn71
		 (AbsPascal.PCustomTypeEnum happy_var_2
	)}

happyReduce_75 = happySpecReduce_3  15# happyReduction_75
happyReduction_75 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut72 happy_x_1 of { happy_var_1 -> 
	case happyOut72 happy_x_3 of { happy_var_3 -> 
	happyIn71
		 (AbsPascal.PCustomTypeSubRange happy_var_1 happy_var_3
	)}}

happyReduce_76 = happySpecReduce_2  15# happyReduction_76
happyReduction_76 happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_2 of { happy_var_2 -> 
	happyIn71
		 (AbsPascal.PCustomTypePointer happy_var_2
	)}

happyReduce_77 = happyReduce 6# 15# happyReduction_77
happyReduction_77 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut73 happy_x_3 of { happy_var_3 -> 
	case happyOut71 happy_x_6 of { happy_var_6 -> 
	happyIn71
		 (AbsPascal.PTypeArray happy_var_3 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_78 = happySpecReduce_3  15# happyReduction_78
happyReduction_78 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut75 happy_x_2 of { happy_var_2 -> 
	happyIn71
		 (AbsPascal.PTypeRecord happy_var_2
	)}

happyReduce_79 = happySpecReduce_1  15# happyReduction_79
happyReduction_79 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn71
		 (AbsPascal.PCustomTypeId happy_var_1
	)}

happyReduce_80 = happySpecReduce_1  16# happyReduction_80
happyReduction_80 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn72
		 (AbsPascal.PRangeTypeId happy_var_1
	)}

happyReduce_81 = happySpecReduce_1  16# happyReduction_81
happyReduction_81 happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	happyIn72
		 (AbsPascal.PRangeTypeLiteral happy_var_1
	)}

happyReduce_82 = happySpecReduce_0  17# happyReduction_82
happyReduction_82  =  happyIn73
		 ([]
	)

happyReduce_83 = happySpecReduce_1  17# happyReduction_83
happyReduction_83 happy_x_1
	 =  case happyOut74 happy_x_1 of { happy_var_1 -> 
	happyIn73
		 ((:[]) happy_var_1
	)}

happyReduce_84 = happySpecReduce_3  17# happyReduction_84
happyReduction_84 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut74 happy_x_1 of { happy_var_1 -> 
	case happyOut73 happy_x_3 of { happy_var_3 -> 
	happyIn73
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_85 = happySpecReduce_1  18# happyReduction_85
happyReduction_85 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn74
		 (AbsPascal.PTypeArrayId happy_var_1
	)}

happyReduce_86 = happySpecReduce_1  18# happyReduction_86
happyReduction_86 happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	happyIn74
		 (AbsPascal.PTypeArrayLiteral happy_var_1
	)}

happyReduce_87 = happySpecReduce_3  18# happyReduction_87
happyReduction_87 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut72 happy_x_1 of { happy_var_1 -> 
	case happyOut72 happy_x_3 of { happy_var_3 -> 
	happyIn74
		 (AbsPascal.PTypeArrayRange happy_var_1 happy_var_3
	)}}

happyReduce_88 = happySpecReduce_0  19# happyReduction_88
happyReduction_88  =  happyIn75
		 ([]
	)

happyReduce_89 = happySpecReduce_1  19# happyReduction_89
happyReduction_89 happy_x_1
	 =  case happyOut76 happy_x_1 of { happy_var_1 -> 
	happyIn75
		 ((:[]) happy_var_1
	)}

happyReduce_90 = happySpecReduce_3  19# happyReduction_90
happyReduction_90 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut76 happy_x_1 of { happy_var_1 -> 
	case happyOut75 happy_x_3 of { happy_var_3 -> 
	happyIn75
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_91 = happySpecReduce_3  20# happyReduction_91
happyReduction_91 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut113 happy_x_1 of { happy_var_1 -> 
	case happyOut71 happy_x_3 of { happy_var_3 -> 
	happyIn76
		 (AbsPascal.PRecordFields happy_var_1 happy_var_3
	)}}

happyReduce_92 = happySpecReduce_0  21# happyReduction_92
happyReduction_92  =  happyIn77
		 ([]
	)

happyReduce_93 = happySpecReduce_2  21# happyReduction_93
happyReduction_93 happy_x_2
	happy_x_1
	 =  case happyOut77 happy_x_1 of { happy_var_1 -> 
	case happyOut78 happy_x_2 of { happy_var_2 -> 
	happyIn77
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_94 = happyReduce 8# 22# happyReduction_94
happyReduction_94 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut60 happy_x_2 of { happy_var_2 -> 
	case happyOut79 happy_x_4 of { happy_var_4 -> 
	case happyOut81 happy_x_7 of { happy_var_7 -> 
	happyIn78
		 (AbsPascal.PIdProcedure happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest}}}

happyReduce_95 = happyReduce 10# 22# happyReduction_95
happyReduction_95 (happy_x_10 `HappyStk`
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
	 = case happyOut60 happy_x_2 of { happy_var_2 -> 
	case happyOut79 happy_x_4 of { happy_var_4 -> 
	case happyOut60 happy_x_7 of { happy_var_7 -> 
	case happyOut81 happy_x_9 of { happy_var_9 -> 
	happyIn78
		 (AbsPascal.PIdFunction happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest}}}}

happyReduce_96 = happySpecReduce_0  23# happyReduction_96
happyReduction_96  =  happyIn79
		 ([]
	)

happyReduce_97 = happySpecReduce_1  23# happyReduction_97
happyReduction_97 happy_x_1
	 =  case happyOut80 happy_x_1 of { happy_var_1 -> 
	happyIn79
		 ((:[]) happy_var_1
	)}

happyReduce_98 = happySpecReduce_3  23# happyReduction_98
happyReduction_98 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut80 happy_x_1 of { happy_var_1 -> 
	case happyOut79 happy_x_3 of { happy_var_3 -> 
	happyIn79
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_99 = happyReduce 4# 24# happyReduction_99
happyReduction_99 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut113 happy_x_2 of { happy_var_2 -> 
	case happyOut60 happy_x_4 of { happy_var_4 -> 
	happyIn80
		 (AbsPascal.PDecParamVar happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_100 = happySpecReduce_3  24# happyReduction_100
happyReduction_100 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut113 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_3 of { happy_var_3 -> 
	happyIn80
		 (AbsPascal.PDecParam happy_var_1 happy_var_3
	)}}

happyReduce_101 = happySpecReduce_2  25# happyReduction_101
happyReduction_101 happy_x_2
	happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	case happyOut82 happy_x_2 of { happy_var_2 -> 
	happyIn81
		 (AbsPascal.PBlockProcFun happy_var_1 happy_var_2
	)}}

happyReduce_102 = happySpecReduce_3  26# happyReduction_102
happyReduction_102 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut83 happy_x_2 of { happy_var_2 -> 
	happyIn82
		 (AbsPascal.PBody happy_var_2
	)}

happyReduce_103 = happySpecReduce_1  27# happyReduction_103
happyReduction_103 happy_x_1
	 =  case happyOut84 happy_x_1 of { happy_var_1 -> 
	happyIn83
		 ((:[]) happy_var_1
	)}

happyReduce_104 = happySpecReduce_3  27# happyReduction_104
happyReduction_104 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut84 happy_x_1 of { happy_var_1 -> 
	case happyOut83 happy_x_3 of { happy_var_3 -> 
	happyIn83
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_105 = happySpecReduce_0  28# happyReduction_105
happyReduction_105  =  happyIn84
		 (AbsPascal.PInstruction
	)

happyReduce_106 = happySpecReduce_1  28# happyReduction_106
happyReduction_106 happy_x_1
	 =  case happyOut85 happy_x_1 of { happy_var_1 -> 
	happyIn84
		 (AbsPascal.PListSimpleInstruction happy_var_1
	)}

happyReduce_107 = happySpecReduce_1  28# happyReduction_107
happyReduction_107 happy_x_1
	 =  case happyOut86 happy_x_1 of { happy_var_1 -> 
	happyIn84
		 (AbsPascal.PListCompositeInstruction happy_var_1
	)}

happyReduce_108 = happySpecReduce_3  29# happyReduction_108
happyReduction_108 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut103 happy_x_1 of { happy_var_1 -> 
	case happyOut98 happy_x_3 of { happy_var_3 -> 
	happyIn85
		 (AbsPascal.PSimpleInstructionAssignment happy_var_1 happy_var_3
	)}}

happyReduce_109 = happySpecReduce_1  29# happyReduction_109
happyReduction_109 happy_x_1
	 =  case happyOut94 happy_x_1 of { happy_var_1 -> 
	happyIn85
		 (AbsPascal.PSimpleInstructionProc happy_var_1
	)}

happyReduce_110 = happySpecReduce_3  30# happyReduction_110
happyReduction_110 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut83 happy_x_2 of { happy_var_2 -> 
	happyIn86
		 (AbsPascal.PStructuredInstructionBegEnd happy_var_2
	)}

happyReduce_111 = happySpecReduce_1  30# happyReduction_111
happyReduction_111 happy_x_1
	 =  case happyOut87 happy_x_1 of { happy_var_1 -> 
	happyIn86
		 (AbsPascal.PStructuredInstructionCond happy_var_1
	)}

happyReduce_112 = happySpecReduce_1  30# happyReduction_112
happyReduction_112 happy_x_1
	 =  case happyOut88 happy_x_1 of { happy_var_1 -> 
	happyIn86
		 (AbsPascal.PStructuredInstructionComp happy_var_1
	)}

happyReduce_113 = happyReduce 4# 31# happyReduction_113
happyReduction_113 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut98 happy_x_2 of { happy_var_2 -> 
	case happyOut84 happy_x_4 of { happy_var_4 -> 
	happyIn87
		 (AbsPascal.PCompositeInstructionIf happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_114 = happyReduce 6# 31# happyReduction_114
happyReduction_114 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut98 happy_x_2 of { happy_var_2 -> 
	case happyOut84 happy_x_4 of { happy_var_4 -> 
	case happyOut84 happy_x_6 of { happy_var_6 -> 
	happyIn87
		 (AbsPascal.PCompositeInstructionIfElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_115 = happyReduce 5# 31# happyReduction_115
happyReduction_115 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut98 happy_x_2 of { happy_var_2 -> 
	case happyOut89 happy_x_4 of { happy_var_4 -> 
	happyIn87
		 (AbsPascal.PCompositeInstructionCase happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_116 = happyReduce 4# 32# happyReduction_116
happyReduction_116 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut83 happy_x_2 of { happy_var_2 -> 
	case happyOut98 happy_x_4 of { happy_var_4 -> 
	happyIn88
		 (AbsPascal.PCompositeInstructionRepeat happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_117 = happyReduce 8# 32# happyReduction_117
happyReduction_117 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut60 happy_x_2 of { happy_var_2 -> 
	case happyOut98 happy_x_4 of { happy_var_4 -> 
	case happyOut98 happy_x_6 of { happy_var_6 -> 
	case happyOut84 happy_x_8 of { happy_var_8 -> 
	happyIn88
		 (AbsPascal.PCompositeInstructionForTo happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_118 = happyReduce 8# 32# happyReduction_118
happyReduction_118 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut60 happy_x_2 of { happy_var_2 -> 
	case happyOut98 happy_x_4 of { happy_var_4 -> 
	case happyOut98 happy_x_6 of { happy_var_6 -> 
	case happyOut84 happy_x_8 of { happy_var_8 -> 
	happyIn88
		 (AbsPascal.PCompositeInstructionForDownTo happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_119 = happyReduce 4# 32# happyReduction_119
happyReduction_119 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut98 happy_x_2 of { happy_var_2 -> 
	case happyOut82 happy_x_4 of { happy_var_4 -> 
	happyIn88
		 (AbsPascal.PCompositeInstructionWhile happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_120 = happySpecReduce_1  33# happyReduction_120
happyReduction_120 happy_x_1
	 =  case happyOut90 happy_x_1 of { happy_var_1 -> 
	happyIn89
		 ((:[]) happy_var_1
	)}

happyReduce_121 = happySpecReduce_3  33# happyReduction_121
happyReduction_121 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut90 happy_x_1 of { happy_var_1 -> 
	case happyOut89 happy_x_3 of { happy_var_3 -> 
	happyIn89
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_122 = happySpecReduce_3  34# happyReduction_122
happyReduction_122 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut91 happy_x_1 of { happy_var_1 -> 
	case happyOut84 happy_x_3 of { happy_var_3 -> 
	happyIn90
		 (AbsPascal.PCaseRamCase happy_var_1 happy_var_3
	)}}

happyReduce_123 = happySpecReduce_0  35# happyReduction_123
happyReduction_123  =  happyIn91
		 ([]
	)

happyReduce_124 = happySpecReduce_1  35# happyReduction_124
happyReduction_124 happy_x_1
	 =  case happyOut92 happy_x_1 of { happy_var_1 -> 
	happyIn91
		 ((:[]) happy_var_1
	)}

happyReduce_125 = happySpecReduce_3  35# happyReduction_125
happyReduction_125 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut92 happy_x_1 of { happy_var_1 -> 
	case happyOut91 happy_x_3 of { happy_var_3 -> 
	happyIn91
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_126 = happySpecReduce_1  36# happyReduction_126
happyReduction_126 happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	happyIn92
		 (AbsPascal.PConstCaseLiteral happy_var_1
	)}

happyReduce_127 = happySpecReduce_1  36# happyReduction_127
happyReduction_127 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn92
		 (AbsPascal.PConsCaseId happy_var_1
	)}

happyReduce_128 = happyReduce 4# 37# happyReduction_128
happyReduction_128 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut97 happy_x_3 of { happy_var_3 -> 
	happyIn93
		 (AbsPascal.PCallFuncProc happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_129 = happyReduce 5# 38# happyReduction_129
happyReduction_129 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut96 happy_x_3 of { happy_var_3 -> 
	case happyOut95 happy_x_4 of { happy_var_4 -> 
	happyIn94
		 (AbsPascal.PCallProc happy_var_1 (reverse happy_var_3) happy_var_4
	) `HappyStk` happyRest}}}

happyReduce_130 = happySpecReduce_1  38# happyReduction_130
happyReduction_130 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn94
		 (AbsPascal.PCallProcEmpty happy_var_1
	)}

happyReduce_131 = happySpecReduce_1  39# happyReduction_131
happyReduction_131 happy_x_1
	 =  case happyOut98 happy_x_1 of { happy_var_1 -> 
	happyIn95
		 (AbsPascal.PExpC happy_var_1
	)}

happyReduce_132 = happySpecReduce_0  40# happyReduction_132
happyReduction_132  =  happyIn96
		 ([]
	)

happyReduce_133 = happySpecReduce_3  40# happyReduction_133
happyReduction_133 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut96 happy_x_1 of { happy_var_1 -> 
	case happyOut95 happy_x_2 of { happy_var_2 -> 
	happyIn96
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_134 = happySpecReduce_0  41# happyReduction_134
happyReduction_134  =  happyIn97
		 ([]
	)

happyReduce_135 = happySpecReduce_1  41# happyReduction_135
happyReduction_135 happy_x_1
	 =  case happyOut98 happy_x_1 of { happy_var_1 -> 
	happyIn97
		 ((:[]) happy_var_1
	)}

happyReduce_136 = happySpecReduce_3  41# happyReduction_136
happyReduction_136 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut98 happy_x_1 of { happy_var_1 -> 
	case happyOut97 happy_x_3 of { happy_var_3 -> 
	happyIn97
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_137 = happySpecReduce_2  42# happyReduction_137
happyReduction_137 happy_x_2
	happy_x_1
	 =  case happyOut99 happy_x_2 of { happy_var_2 -> 
	happyIn98
		 (AbsPascal.PNotExp happy_var_2
	)}

happyReduce_138 = happySpecReduce_1  42# happyReduction_138
happyReduction_138 happy_x_1
	 =  case happyOut99 happy_x_1 of { happy_var_1 -> 
	happyIn98
		 (happy_var_1
	)}

happyReduce_139 = happySpecReduce_3  43# happyReduction_139
happyReduction_139 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut99 happy_x_1 of { happy_var_1 -> 
	case happyOut100 happy_x_3 of { happy_var_3 -> 
	happyIn99
		 (AbsPascal.PGeneralExpMayor happy_var_1 happy_var_3
	)}}

happyReduce_140 = happySpecReduce_3  43# happyReduction_140
happyReduction_140 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut99 happy_x_1 of { happy_var_1 -> 
	case happyOut100 happy_x_3 of { happy_var_3 -> 
	happyIn99
		 (AbsPascal.PGeneralExpMinor happy_var_1 happy_var_3
	)}}

happyReduce_141 = happySpecReduce_3  43# happyReduction_141
happyReduction_141 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut99 happy_x_1 of { happy_var_1 -> 
	case happyOut100 happy_x_3 of { happy_var_3 -> 
	happyIn99
		 (AbsPascal.PGeneralExpEqual happy_var_1 happy_var_3
	)}}

happyReduce_142 = happySpecReduce_3  43# happyReduction_142
happyReduction_142 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut99 happy_x_1 of { happy_var_1 -> 
	case happyOut100 happy_x_3 of { happy_var_3 -> 
	happyIn99
		 (AbsPascal.PGeneralExpMyorEqual happy_var_1 happy_var_3
	)}}

happyReduce_143 = happySpecReduce_3  43# happyReduction_143
happyReduction_143 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut99 happy_x_1 of { happy_var_1 -> 
	case happyOut100 happy_x_3 of { happy_var_3 -> 
	happyIn99
		 (AbsPascal.PGeneralExpMinorEqual happy_var_1 happy_var_3
	)}}

happyReduce_144 = happySpecReduce_3  43# happyReduction_144
happyReduction_144 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut99 happy_x_1 of { happy_var_1 -> 
	case happyOut100 happy_x_3 of { happy_var_3 -> 
	happyIn99
		 (AbsPascal.PGeneralExpDistinct happy_var_1 happy_var_3
	)}}

happyReduce_145 = happySpecReduce_1  43# happyReduction_145
happyReduction_145 happy_x_1
	 =  case happyOut100 happy_x_1 of { happy_var_1 -> 
	happyIn99
		 (happy_var_1
	)}

happyReduce_146 = happySpecReduce_2  44# happyReduction_146
happyReduction_146 happy_x_2
	happy_x_1
	 =  case happyOut101 happy_x_2 of { happy_var_2 -> 
	happyIn100
		 (AbsPascal.PSimpleExpInvSign happy_var_2
	)}

happyReduce_147 = happySpecReduce_2  44# happyReduction_147
happyReduction_147 happy_x_2
	happy_x_1
	 =  case happyOut101 happy_x_2 of { happy_var_2 -> 
	happyIn100
		 (AbsPascal.PSimpleExpPreSum happy_var_2
	)}

happyReduce_148 = happySpecReduce_3  44# happyReduction_148
happyReduction_148 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut100 happy_x_1 of { happy_var_1 -> 
	case happyOut101 happy_x_3 of { happy_var_3 -> 
	happyIn100
		 (AbsPascal.PSimpleExpPlus happy_var_1 happy_var_3
	)}}

happyReduce_149 = happySpecReduce_3  44# happyReduction_149
happyReduction_149 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut100 happy_x_1 of { happy_var_1 -> 
	case happyOut101 happy_x_3 of { happy_var_3 -> 
	happyIn100
		 (AbsPascal.PSimpleExpOr happy_var_1 happy_var_3
	)}}

happyReduce_150 = happySpecReduce_3  44# happyReduction_150
happyReduction_150 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut100 happy_x_1 of { happy_var_1 -> 
	case happyOut101 happy_x_3 of { happy_var_3 -> 
	happyIn100
		 (AbsPascal.PSimpleExpMinus happy_var_1 happy_var_3
	)}}

happyReduce_151 = happySpecReduce_1  44# happyReduction_151
happyReduction_151 happy_x_1
	 =  case happyOut101 happy_x_1 of { happy_var_1 -> 
	happyIn100
		 (happy_var_1
	)}

happyReduce_152 = happySpecReduce_3  45# happyReduction_152
happyReduction_152 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut101 happy_x_1 of { happy_var_1 -> 
	case happyOut102 happy_x_3 of { happy_var_3 -> 
	happyIn101
		 (AbsPascal.PTermExpMul happy_var_1 happy_var_3
	)}}

happyReduce_153 = happySpecReduce_3  45# happyReduction_153
happyReduction_153 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut101 happy_x_1 of { happy_var_1 -> 
	case happyOut102 happy_x_3 of { happy_var_3 -> 
	happyIn101
		 (AbsPascal.PTermExpDiv happy_var_1 happy_var_3
	)}}

happyReduce_154 = happySpecReduce_3  45# happyReduction_154
happyReduction_154 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut101 happy_x_1 of { happy_var_1 -> 
	case happyOut102 happy_x_3 of { happy_var_3 -> 
	happyIn101
		 (AbsPascal.PTermExpDiv2 happy_var_1 happy_var_3
	)}}

happyReduce_155 = happySpecReduce_3  45# happyReduction_155
happyReduction_155 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut101 happy_x_1 of { happy_var_1 -> 
	case happyOut102 happy_x_3 of { happy_var_3 -> 
	happyIn101
		 (AbsPascal.PTermExpMod happy_var_1 happy_var_3
	)}}

happyReduce_156 = happySpecReduce_3  45# happyReduction_156
happyReduction_156 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut101 happy_x_1 of { happy_var_1 -> 
	case happyOut102 happy_x_3 of { happy_var_3 -> 
	happyIn101
		 (AbsPascal.PTermExpAnd happy_var_1 happy_var_3
	)}}

happyReduce_157 = happySpecReduce_1  45# happyReduction_157
happyReduction_157 happy_x_1
	 =  case happyOut102 happy_x_1 of { happy_var_1 -> 
	happyIn101
		 (happy_var_1
	)}

happyReduce_158 = happySpecReduce_1  46# happyReduction_158
happyReduction_158 happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	happyIn102
		 (AbsPascal.PFactorLit happy_var_1
	)}

happyReduce_159 = happySpecReduce_1  46# happyReduction_159
happyReduction_159 happy_x_1
	 =  case happyOut104 happy_x_1 of { happy_var_1 -> 
	happyIn102
		 (AbsPascal.PFactorId happy_var_1
	)}

happyReduce_160 = happySpecReduce_3  46# happyReduction_160
happyReduction_160 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut104 happy_x_1 of { happy_var_1 -> 
	case happyOut103 happy_x_3 of { happy_var_3 -> 
	happyIn102
		 (AbsPascal.PFactorAccId happy_var_1 happy_var_3
	)}}

happyReduce_161 = happySpecReduce_1  46# happyReduction_161
happyReduction_161 happy_x_1
	 =  case happyOut93 happy_x_1 of { happy_var_1 -> 
	happyIn102
		 (AbsPascal.PFactorCall happy_var_1
	)}

happyReduce_162 = happySpecReduce_3  46# happyReduction_162
happyReduction_162 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut98 happy_x_2 of { happy_var_2 -> 
	happyIn102
		 (happy_var_2
	)}

happyReduce_163 = happySpecReduce_1  47# happyReduction_163
happyReduction_163 happy_x_1
	 =  case happyOut104 happy_x_1 of { happy_var_1 -> 
	happyIn103
		 ((:[]) happy_var_1
	)}

happyReduce_164 = happySpecReduce_3  47# happyReduction_164
happyReduction_164 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut104 happy_x_1 of { happy_var_1 -> 
	case happyOut103 happy_x_3 of { happy_var_3 -> 
	happyIn103
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_165 = happySpecReduce_1  48# happyReduction_165
happyReduction_165 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn104
		 (AbsPascal.PAccId happy_var_1
	)}

happyReduce_166 = happySpecReduce_2  48# happyReduction_166
happyReduction_166 happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut108 happy_x_2 of { happy_var_2 -> 
	happyIn104
		 (AbsPascal.PAccIdPointer happy_var_1 happy_var_2
	)}}

happyReduce_167 = happySpecReduce_1  48# happyReduction_167
happyReduction_167 happy_x_1
	 =  case happyOut105 happy_x_1 of { happy_var_1 -> 
	happyIn104
		 (AbsPascal.PtrArrayAccess happy_var_1
	)}

happyReduce_168 = happySpecReduce_2  48# happyReduction_168
happyReduction_168 happy_x_2
	happy_x_1
	 =  case happyOut105 happy_x_1 of { happy_var_1 -> 
	case happyOut108 happy_x_2 of { happy_var_2 -> 
	happyIn104
		 (AbsPascal.PtrArrayAccessPointer happy_var_1 happy_var_2
	)}}

happyReduce_169 = happyReduce 4# 49# happyReduction_169
happyReduction_169 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut106 happy_x_3 of { happy_var_3 -> 
	happyIn105
		 (AbsPascal.PArrayAccess happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_170 = happySpecReduce_1  50# happyReduction_170
happyReduction_170 happy_x_1
	 =  case happyOut107 happy_x_1 of { happy_var_1 -> 
	happyIn106
		 ((:[]) happy_var_1
	)}

happyReduce_171 = happySpecReduce_3  50# happyReduction_171
happyReduction_171 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut107 happy_x_1 of { happy_var_1 -> 
	case happyOut106 happy_x_3 of { happy_var_3 -> 
	happyIn106
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_172 = happySpecReduce_1  51# happyReduction_172
happyReduction_172 happy_x_1
	 =  case happyOut98 happy_x_1 of { happy_var_1 -> 
	happyIn107
		 (AbsPascal.PTypeAccessLiteral happy_var_1
	)}

happyReduce_173 = happySpecReduce_1  52# happyReduction_173
happyReduction_173 happy_x_1
	 =  case happyOut109 happy_x_1 of { happy_var_1 -> 
	happyIn108
		 ((:[]) happy_var_1
	)}

happyReduce_174 = happySpecReduce_2  52# happyReduction_174
happyReduction_174 happy_x_2
	happy_x_1
	 =  case happyOut109 happy_x_1 of { happy_var_1 -> 
	case happyOut108 happy_x_2 of { happy_var_2 -> 
	happyIn108
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_175 = happySpecReduce_1  53# happyReduction_175
happyReduction_175 happy_x_1
	 =  happyIn109
		 (AbsPascal.PPointer2
	)

happyReduce_176 = happySpecReduce_2  54# happyReduction_176
happyReduction_176 happy_x_2
	happy_x_1
	 =  case happyOut65 happy_x_1 of { happy_var_1 -> 
	happyIn110
		 ((:[]) happy_var_1
	)}

happyReduce_177 = happySpecReduce_3  54# happyReduction_177
happyReduction_177 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut65 happy_x_1 of { happy_var_1 -> 
	case happyOut110 happy_x_3 of { happy_var_3 -> 
	happyIn110
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_178 = happySpecReduce_2  55# happyReduction_178
happyReduction_178 happy_x_2
	happy_x_1
	 =  case happyOut68 happy_x_1 of { happy_var_1 -> 
	happyIn111
		 ((:[]) happy_var_1
	)}

happyReduce_179 = happySpecReduce_3  55# happyReduction_179
happyReduction_179 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut68 happy_x_1 of { happy_var_1 -> 
	case happyOut111 happy_x_3 of { happy_var_3 -> 
	happyIn111
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_180 = happySpecReduce_2  56# happyReduction_180
happyReduction_180 happy_x_2
	happy_x_1
	 =  case happyOut70 happy_x_1 of { happy_var_1 -> 
	happyIn112
		 ((:[]) happy_var_1
	)}

happyReduce_181 = happySpecReduce_3  56# happyReduction_181
happyReduction_181 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut70 happy_x_1 of { happy_var_1 -> 
	case happyOut112 happy_x_3 of { happy_var_3 -> 
	happyIn112
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_182 = happySpecReduce_0  57# happyReduction_182
happyReduction_182  =  happyIn113
		 ([]
	)

happyReduce_183 = happySpecReduce_1  57# happyReduction_183
happyReduction_183 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn113
		 ((:[]) happy_var_1
	)}

happyReduce_184 = happySpecReduce_3  57# happyReduction_184
happyReduction_184 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut113 happy_x_3 of { happy_var_3 -> 
	happyIn113
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
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut61 x))

pBlock tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut62 x))

pParts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut63 x))

pConsts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut64 x))

pConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (happyOut65 x))

pLiteral tks = happySomeParser where
  happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (happyOut66 x))

pVars tks = happySomeParser where
  happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (happyOut67 x))

pVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (happyOut68 x))

pTypes tks = happySomeParser where
  happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (happyOut69 x))

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (happyOut70 x))

pCustomType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (happyOut71 x))

pRangeType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (happyOut72 x))

pListArrType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (happyOut73 x))

pArrType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 13# tks) (\x -> happyReturn (happyOut74 x))

pListFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 14# tks) (\x -> happyReturn (happyOut75 x))

pFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 15# tks) (\x -> happyReturn (happyOut76 x))

pListProcsYFuncs tks = happySomeParser where
  happySomeParser = happyThen (happyParse 16# tks) (\x -> happyReturn (happyOut77 x))

pProcsYFuncs tks = happySomeParser where
  happySomeParser = happyThen (happyParse 17# tks) (\x -> happyReturn (happyOut78 x))

pListDecParm tks = happySomeParser where
  happySomeParser = happyThen (happyParse 18# tks) (\x -> happyReturn (happyOut79 x))

pDecParm tks = happySomeParser where
  happySomeParser = happyThen (happyParse 19# tks) (\x -> happyReturn (happyOut80 x))

pBlockProcFun tks = happySomeParser where
  happySomeParser = happyThen (happyParse 20# tks) (\x -> happyReturn (happyOut81 x))

pBody tks = happySomeParser where
  happySomeParser = happyThen (happyParse 21# tks) (\x -> happyReturn (happyOut82 x))

pListInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 22# tks) (\x -> happyReturn (happyOut83 x))

pInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 23# tks) (\x -> happyReturn (happyOut84 x))

pSimpleInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 24# tks) (\x -> happyReturn (happyOut85 x))

pStructuredInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 25# tks) (\x -> happyReturn (happyOut86 x))

pConditionalInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 26# tks) (\x -> happyReturn (happyOut87 x))

pCompositeInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 27# tks) (\x -> happyReturn (happyOut88 x))

pListRamas tks = happySomeParser where
  happySomeParser = happyThen (happyParse 28# tks) (\x -> happyReturn (happyOut89 x))

pRamas tks = happySomeParser where
  happySomeParser = happyThen (happyParse 29# tks) (\x -> happyReturn (happyOut90 x))

pListConstCase tks = happySomeParser where
  happySomeParser = happyThen (happyParse 30# tks) (\x -> happyReturn (happyOut91 x))

pConstCase tks = happySomeParser where
  happySomeParser = happyThen (happyParse 31# tks) (\x -> happyReturn (happyOut92 x))

pCallFunProc tks = happySomeParser where
  happySomeParser = happyThen (happyParse 32# tks) (\x -> happyReturn (happyOut93 x))

pCallProc tks = happySomeParser where
  happySomeParser = happyThen (happyParse 33# tks) (\x -> happyReturn (happyOut94 x))

pExpC tks = happySomeParser where
  happySomeParser = happyThen (happyParse 34# tks) (\x -> happyReturn (happyOut95 x))

pListExpC tks = happySomeParser where
  happySomeParser = happyThen (happyParse 35# tks) (\x -> happyReturn (happyOut96 x))

pListExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 36# tks) (\x -> happyReturn (happyOut97 x))

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 37# tks) (\x -> happyReturn (happyOut98 x))

pExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 38# tks) (\x -> happyReturn (happyOut99 x))

pExp2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 39# tks) (\x -> happyReturn (happyOut100 x))

pExp3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 40# tks) (\x -> happyReturn (happyOut101 x))

pExp4 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 41# tks) (\x -> happyReturn (happyOut102 x))

pListAccId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 42# tks) (\x -> happyReturn (happyOut103 x))

pAccId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 43# tks) (\x -> happyReturn (happyOut104 x))

pArrayAccess tks = happySomeParser where
  happySomeParser = happyThen (happyParse 44# tks) (\x -> happyReturn (happyOut105 x))

pListTypeAccess tks = happySomeParser where
  happySomeParser = happyThen (happyParse 45# tks) (\x -> happyReturn (happyOut106 x))

pTypeAccess tks = happySomeParser where
  happySomeParser = happyThen (happyParse 46# tks) (\x -> happyReturn (happyOut107 x))

pListPointer tks = happySomeParser where
  happySomeParser = happyThen (happyParse 47# tks) (\x -> happyReturn (happyOut108 x))

pPointer tks = happySomeParser where
  happySomeParser = happyThen (happyParse 48# tks) (\x -> happyReturn (happyOut109 x))

pListConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 49# tks) (\x -> happyReturn (happyOut110 x))

pListVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 50# tks) (\x -> happyReturn (happyOut111 x))

pListType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 51# tks) (\x -> happyReturn (happyOut112 x))

pListId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 52# tks) (\x -> happyReturn (happyOut113 x))

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
