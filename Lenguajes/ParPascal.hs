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
happyIn43 :: (Integer) -> (HappyAbsSyn )
happyIn43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> (Integer)
happyOut43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyIn44 :: (Double) -> (HappyAbsSyn )
happyIn44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn ) -> (Double)
happyOut44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut44 #-}
happyIn45 :: (String) -> (HappyAbsSyn )
happyIn45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn45 #-}
happyOut45 :: (HappyAbsSyn ) -> (String)
happyOut45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut45 #-}
happyIn46 :: (Char) -> (HappyAbsSyn )
happyIn46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn46 #-}
happyOut46 :: (HappyAbsSyn ) -> (Char)
happyOut46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut46 #-}
happyIn47 :: (Id) -> (HappyAbsSyn )
happyIn47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn47 #-}
happyOut47 :: (HappyAbsSyn ) -> (Id)
happyOut47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut47 #-}
happyIn48 :: (Program) -> (HappyAbsSyn )
happyIn48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn48 #-}
happyOut48 :: (HappyAbsSyn ) -> (Program)
happyOut48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut48 #-}
happyIn49 :: (Block) -> (HappyAbsSyn )
happyIn49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn49 #-}
happyOut49 :: (HappyAbsSyn ) -> (Block)
happyOut49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut49 #-}
happyIn50 :: (Parts) -> (HappyAbsSyn )
happyIn50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn50 #-}
happyOut50 :: (HappyAbsSyn ) -> (Parts)
happyOut50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut50 #-}
happyIn51 :: (Constants) -> (HappyAbsSyn )
happyIn51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn51 #-}
happyOut51 :: (HappyAbsSyn ) -> (Constants)
happyOut51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut51 #-}
happyIn52 :: ([Const]) -> (HappyAbsSyn )
happyIn52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn52 #-}
happyOut52 :: (HappyAbsSyn ) -> ([Const])
happyOut52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut52 #-}
happyIn53 :: (Const) -> (HappyAbsSyn )
happyIn53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn53 #-}
happyOut53 :: (HappyAbsSyn ) -> (Const)
happyOut53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut53 #-}
happyIn54 :: (Val) -> (HappyAbsSyn )
happyIn54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn ) -> (Val)
happyOut54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyIn55 :: (Types) -> (HappyAbsSyn )
happyIn55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn55 #-}
happyOut55 :: (HappyAbsSyn ) -> (Types)
happyOut55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut55 #-}
happyIn56 :: ([ListTypes]) -> (HappyAbsSyn )
happyIn56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn ) -> ([ListTypes])
happyOut56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: (ListTypes) -> (HappyAbsSyn )
happyIn57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn ) -> (ListTypes)
happyOut57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyIn58 :: (Type) -> (HappyAbsSyn )
happyIn58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn58 #-}
happyOut58 :: (HappyAbsSyn ) -> (Type)
happyOut58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut58 #-}
happyIn59 :: ([ListId]) -> (HappyAbsSyn )
happyIn59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn59 #-}
happyOut59 :: (HappyAbsSyn ) -> ([ListId])
happyOut59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut59 #-}
happyIn60 :: (ListId) -> (HappyAbsSyn )
happyIn60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn60 #-}
happyOut60 :: (HappyAbsSyn ) -> (ListId)
happyOut60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut60 #-}
happyIn61 :: (RangeType) -> (HappyAbsSyn )
happyIn61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn61 #-}
happyOut61 :: (HappyAbsSyn ) -> (RangeType)
happyOut61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut61 #-}
happyIn62 :: ([LType]) -> (HappyAbsSyn )
happyIn62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn62 #-}
happyOut62 :: (HappyAbsSyn ) -> ([LType])
happyOut62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut62 #-}
happyIn63 :: (LType) -> (HappyAbsSyn )
happyIn63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn63 #-}
happyOut63 :: (HappyAbsSyn ) -> (LType)
happyOut63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut63 #-}
happyIn64 :: ([Fields]) -> (HappyAbsSyn )
happyIn64 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn64 #-}
happyOut64 :: (HappyAbsSyn ) -> ([Fields])
happyOut64 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut64 #-}
happyIn65 :: (Fields) -> (HappyAbsSyn )
happyIn65 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn65 #-}
happyOut65 :: (HappyAbsSyn ) -> (Fields)
happyOut65 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut65 #-}
happyIn66 :: (AccessRecord) -> (HappyAbsSyn )
happyIn66 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn66 #-}
happyOut66 :: (HappyAbsSyn ) -> (AccessRecord)
happyOut66 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut66 #-}
happyIn67 :: (Vars) -> (HappyAbsSyn )
happyIn67 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn67 #-}
happyOut67 :: (HappyAbsSyn ) -> (Vars)
happyOut67 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut67 #-}
happyIn68 :: ([ListVars]) -> (HappyAbsSyn )
happyIn68 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn68 #-}
happyOut68 :: (HappyAbsSyn ) -> ([ListVars])
happyOut68 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut68 #-}
happyIn69 :: (ListVars) -> (HappyAbsSyn )
happyIn69 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn69 #-}
happyOut69 :: (HappyAbsSyn ) -> (ListVars)
happyOut69 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut69 #-}
happyIn70 :: (FuncsProcs) -> (HappyAbsSyn )
happyIn70 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn70 #-}
happyOut70 :: (HappyAbsSyn ) -> (FuncsProcs)
happyOut70 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut70 #-}
happyIn71 :: ([Instruction]) -> (HappyAbsSyn )
happyIn71 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn71 #-}
happyOut71 :: (HappyAbsSyn ) -> ([Instruction])
happyOut71 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut71 #-}
happyIn72 :: (Instruction) -> (HappyAbsSyn )
happyIn72 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn72 #-}
happyOut72 :: (HappyAbsSyn ) -> (Instruction)
happyOut72 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut72 #-}
happyIn73 :: (SimpleInstruction) -> (HappyAbsSyn )
happyIn73 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn73 #-}
happyOut73 :: (HappyAbsSyn ) -> (SimpleInstruction)
happyOut73 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut73 #-}
happyIn74 :: ([Parms]) -> (HappyAbsSyn )
happyIn74 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn74 #-}
happyOut74 :: (HappyAbsSyn ) -> ([Parms])
happyOut74 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut74 #-}
happyIn75 :: (Parms) -> (HappyAbsSyn )
happyIn75 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn75 #-}
happyOut75 :: (HappyAbsSyn ) -> (Parms)
happyOut75 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut75 #-}
happyIn76 :: ([Exps]) -> (HappyAbsSyn )
happyIn76 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn76 #-}
happyOut76 :: (HappyAbsSyn ) -> ([Exps])
happyOut76 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut76 #-}
happyIn77 :: (Exps) -> (HappyAbsSyn )
happyIn77 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn77 #-}
happyOut77 :: (HappyAbsSyn ) -> (Exps)
happyOut77 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut77 #-}
happyIn78 :: (Factor) -> (HappyAbsSyn )
happyIn78 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn78 #-}
happyOut78 :: (HappyAbsSyn ) -> (Factor)
happyOut78 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut78 #-}
happyIn79 :: (Terms) -> (HappyAbsSyn )
happyIn79 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn79 #-}
happyOut79 :: (HappyAbsSyn ) -> (Terms)
happyOut79 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut79 #-}
happyIn80 :: (SimpleExp) -> (HappyAbsSyn )
happyIn80 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn80 #-}
happyOut80 :: (HappyAbsSyn ) -> (SimpleExp)
happyOut80 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut80 #-}
happyIn81 :: (Add) -> (HappyAbsSyn )
happyIn81 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn81 #-}
happyOut81 :: (HappyAbsSyn ) -> (Add)
happyOut81 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut81 #-}
happyIn82 :: (Equals) -> (HappyAbsSyn )
happyIn82 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn82 #-}
happyOut82 :: (HappyAbsSyn ) -> (Equals)
happyOut82 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut82 #-}
happyIn83 :: (Minus) -> (HappyAbsSyn )
happyIn83 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn83 #-}
happyOut83 :: (HappyAbsSyn ) -> (Minus)
happyOut83 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut83 #-}
happyIn84 :: (GeneralExp) -> (HappyAbsSyn )
happyIn84 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn84 #-}
happyOut84 :: (HappyAbsSyn ) -> (GeneralExp)
happyOut84 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut84 #-}
happyIn85 :: (CompositeInstruction) -> (HappyAbsSyn )
happyIn85 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn85 #-}
happyOut85 :: (HappyAbsSyn ) -> (CompositeInstruction)
happyOut85 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut85 #-}
happyIn86 :: ([ListInstrs]) -> (HappyAbsSyn )
happyIn86 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn86 #-}
happyOut86 :: (HappyAbsSyn ) -> ([ListInstrs])
happyOut86 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut86 #-}
happyIn87 :: (ListInstrs) -> (HappyAbsSyn )
happyIn87 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn87 #-}
happyOut87 :: (HappyAbsSyn ) -> (ListInstrs)
happyOut87 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut87 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x48\x02\x51\x02\x51\x02\x51\x02\x3e\x02\x3e\x02\x27\x02\x42\x02\x3c\x02\x3c\x02\x51\x01\x7d\x01\x3c\x02\x49\x01\x51\x01\x51\x01\xfa\xff\xfa\xff\x3c\x02\x3f\x02\xfa\xff\xfa\xff\x00\x00\x8f\x01\x92\x01\x39\x02\x11\x00\x5a\x02\x56\x01\x21\x02\x2c\x01\x00\x00\x2c\x01\x2c\x01\x2c\x01\x2c\x01\x00\x00\x65\x00\x5c\x01\x92\x01\x3b\x02\x00\x00\x07\x00\x4f\x02\x00\x00\x00\x00\x00\x00\x33\x02\x36\x02\xa3\x01\x00\x00\x32\x02\x4b\x02\x2f\x02\x2f\x02\x00\x00\x00\x00\x4e\x02\x00\x00\x4d\x02\x2d\x02\x00\x00\x45\x02\x2b\x02\x28\x02\x2a\x02\x06\x00\x2a\x02\x00\x00\x00\x00\x00\x00\x2a\x02\x2a\x02\x2a\x02\x06\x00\x00\x00\x00\x00\x00\x00\x2a\x02\x49\x02\x1f\x02\x93\x00\x1f\x02\x3d\x02\x19\x02\x19\x02\x19\x02\x2c\x02\x0b\x02\xc3\x00\x34\x02\x13\x00\x0a\x02\x0a\x02\x1c\x02\x08\x02\xfa\xff\x15\x02\x04\x02\x11\x02\xf3\x01\xf3\x01\x09\x02\x00\x00\x00\x00\x0e\x02\x00\x00\x07\x02\xe5\x01\x1a\x00\xde\x01\xfc\x01\xfa\xff\x00\x00\xd6\x01\xef\x01\x00\x00\xcc\x01\xcc\x01\xcc\x01\xcc\x01\xe1\x01\xc7\x01\xc7\x01\xdb\x01\xb7\x01\xb3\x01\x00\x00\x00\x00\x00\x00\x00\x00\xaf\x01\x00\x00\xc1\x01\xa6\x01\xa6\x01\xbd\x01\x9b\x01\x99\x01\x93\x01\x98\x01\x82\x01\x8e\x01\x80\x01\x77\x01\x7b\x01\x95\x01\x73\x01\x00\x00\x5f\x01\x27\x02\x00\x00\x5f\x01\x51\x01\x51\x01\x55\x01\x51\x01\x00\x00\x76\x01\x4d\x00\xfa\xff\x51\x01\x3b\x01\x00\x00\xfa\xff\x17\x00\x3b\x01\x8d\x01\x11\x00\x57\x01\x4a\x00\x64\x00\x64\x00\x64\x00\x79\x01\x3a\x01\x48\x01\x71\x01\x00\x00\x71\x01\x00\x00\x00\x00\xf7\x01\x71\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf3\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3d\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x26\x01\x24\x01\x00\x00\x00\x00\x00\x00\x1c\x01\x00\x00\x2e\x00\xee\x01\xee\x01\xf5\x00\x00\x00\x1e\x01\xfd\x00\x67\x01\x67\x01\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x06\x01\x44\x02\xd9\x00\xfc\x00\x35\x02\x40\x00\x22\x02\xed\x00\x26\x02\x10\x00\xf5\x01\x0c\x02\x02\x00\x02\x02\xcb\x01\xe0\x01\xe6\x01\xed\x01\x03\x00\xd6\x00\xaa\x01\x35\x00\xcd\x00\x0d\x01\x1f\x01\x7d\x00\x73\x00\xc9\x00\x34\x00\xac\x00\x4c\x01\xa9\x00\xb3\x00\x0e\x01\xff\x00\xf6\x00\x9f\x00\x9c\x00\xc8\x00\xe0\x00\x00\x00\x00\x00\x91\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xab\x00\xc5\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x54\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfb\x01\x8c\x00\x00\x00\xd8\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x23\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x31\x02\x00\x00\x74\x00\x00\x00\x00\x00\x00\x00\x49\x00\x00\x00\xfe\x00\x59\x00\x00\x00\x2e\x02\x1e\x02\x00\x00\x7a\x01\x89\x01\xc5\x01\x00\x00\xbe\x01\x00\x00\x00\x00\x3f\x00\xd1\x01\x1d\x01\x1c\x00\x00\x00\x43\x01\xf8\x00\x12\x00\xe9\x00\x28\x00\x00\x00\x01\x00\x44\x01\x3f\x01\x3e\x01\xc0\x00\x00\x00\x00\x00\x96\x00\x00\x00\x82\x00\x00\x00\x00\x00\x7a\x00\x66\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe9\xff\x00\x00\xba\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x50\x00\x3c\x00\x0b\x00\x00\x00\x00\x00\x00\x00\x1b\x01\x10\x01\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\xcf\xff\xcf\xff\xcf\xff\xcd\xff\x00\x00\x00\x00\xc5\xff\xc3\xff\x00\x00\x00\x00\xb6\xff\x00\x00\x00\x00\xae\xff\x00\x00\xaa\xff\xb6\xff\x00\x00\xa5\xff\xa3\xff\xb6\xff\x9f\xff\x98\xff\x98\xff\x98\xff\x91\xff\x91\xff\x7c\xff\x7c\xff\x00\x00\x83\xff\x00\x00\x00\x00\x00\x00\x00\x00\x7c\xff\x00\x00\x98\xff\x98\xff\x00\x00\xd7\xff\x91\xff\x00\x00\x75\xff\x9a\xff\x99\xff\x00\x00\x00\x00\x98\xff\xd3\xff\x00\x00\x77\xff\x00\x00\x00\x00\x85\xff\x87\xff\x86\xff\x84\xff\x00\x00\x00\x00\xd5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x82\xff\x81\xff\x80\xff\x00\x00\x00\x00\x00\x00\x8b\xff\x8a\xff\x89\xff\x88\xff\x00\x00\x8e\xff\x00\x00\x7c\xff\x00\x00\x93\xff\x00\x00\x00\x00\x00\x00\x9d\xff\x00\x00\xb2\xff\x00\x00\xb5\xff\x00\x00\x00\x00\xa2\xff\x00\x00\xa3\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa9\xff\xaf\xff\xb0\xff\xba\xff\xab\xff\x00\x00\x00\x00\xb6\xff\x00\x00\x00\x00\xaa\xff\xd4\xff\x00\x00\xad\xff\xb1\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc2\xff\x00\x00\xc3\xff\xc9\xff\xc8\xff\xc7\xff\xc6\xff\x00\x00\xd6\xff\x00\x00\x00\x00\x00\x00\xcc\xff\x00\x00\xcd\xff\x00\x00\xc5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x98\xff\xa5\xff\xce\xff\xcd\xff\x00\x00\xc4\xff\xc3\xff\x00\x00\xae\xff\x00\x00\xae\xff\xbd\xff\x00\x00\x00\x00\xaa\xff\x00\x00\x00\x00\xa4\xff\xa3\xff\xb6\xff\x00\x00\x98\xff\x91\xff\x00\x00\x7c\xff\x00\x00\x00\x00\x00\x00\x98\xff\x00\x00\x00\x00\x7c\xff\x95\xff\x7c\xff\x97\xff\x96\xff\x7c\xff\x7c\xff\x76\xff\x7e\xff\x7d\xff\x7f\xff\x8d\xff\x90\xff\x92\xff\x9c\xff\xa0\xff\xb4\xff\xa1\xff\xa6\xff\xa7\xff\xa8\xff\xbe\xff\xbf\xff\x00\x00\xbb\xff\xac\xff\xc0\xff\xc1\xff\xca\xff\xcb\xff\x9f\xff\x00\x00\xcf\xff\xd2\xff\xd1\xff\xd0\xff\x00\x00\x7b\xff\x00\x00\x7c\xff\x7c\xff\x00\x00\xbc\xff\x00\x00\x00\x00\x98\xff\x98\xff\x7a\xff\x79\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x00\x00\x08\x00\x02\x00\x1b\x00\x04\x00\x04\x00\x04\x00\x01\x00\x03\x00\x00\x00\x05\x00\x02\x00\x06\x00\x04\x00\x04\x00\x09\x00\x0b\x00\x01\x00\x11\x00\x04\x00\x02\x00\x04\x00\x04\x00\x17\x00\x02\x00\x17\x00\x08\x00\x02\x00\x23\x00\x0e\x00\x08\x00\x04\x00\x17\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x00\x00\x24\x00\x02\x00\x24\x00\x04\x00\x04\x00\x23\x00\x24\x00\x00\x00\x23\x00\x02\x00\x00\x00\x04\x00\x13\x00\x03\x00\x04\x00\x04\x00\x10\x00\x11\x00\x1f\x00\x20\x00\x1b\x00\x0a\x00\x17\x00\x02\x00\x04\x00\x04\x00\x1a\x00\x00\x00\x12\x00\x02\x00\x17\x00\x04\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x00\x00\x17\x00\x02\x00\x1f\x00\x04\x00\x21\x00\x1f\x00\x23\x00\x24\x00\x22\x00\x23\x00\x18\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x00\x00\x16\x00\x02\x00\x17\x00\x04\x00\x1a\x00\x0c\x00\x04\x00\x00\x00\x1f\x00\x02\x00\x21\x00\x04\x00\x23\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x04\x00\x17\x00\x1f\x00\x20\x00\x17\x00\x02\x00\x00\x00\x04\x00\x02\x00\x17\x00\x04\x00\x1e\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x00\x00\x17\x00\x02\x00\x04\x00\x04\x00\x20\x00\x1f\x00\x00\x00\x21\x00\x02\x00\x23\x00\x04\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x06\x00\x07\x00\x08\x00\x17\x00\x04\x00\x02\x00\x2a\x00\x04\x00\x29\x00\x04\x00\x17\x00\x08\x00\x04\x00\x24\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x27\x00\x28\x00\x29\x00\x23\x00\x17\x00\x25\x00\x26\x00\x27\x00\x28\x00\x17\x00\x1d\x00\x1e\x00\x17\x00\x07\x00\x08\x00\x1d\x00\x1e\x00\x04\x00\x1d\x00\x1e\x00\x24\x00\x1b\x00\x20\x00\x2a\x00\x2b\x00\x2c\x00\x04\x00\x18\x00\x2a\x00\x2b\x00\x2c\x00\x2a\x00\x2b\x00\x2c\x00\x02\x00\x00\x00\x17\x00\x02\x00\x0c\x00\x04\x00\x08\x00\x04\x00\x1d\x00\x1e\x00\x00\x00\x17\x00\x02\x00\x04\x00\x04\x00\x08\x00\x1c\x00\x1d\x00\x1e\x00\x10\x00\x11\x00\x2a\x00\x05\x00\x2c\x00\x17\x00\x00\x00\x12\x00\x02\x00\x04\x00\x04\x00\x2a\x00\x04\x00\x17\x00\x17\x00\x24\x00\x23\x00\x23\x00\x1c\x00\x1d\x00\x1e\x00\x00\x00\x28\x00\x04\x00\x03\x00\x04\x00\x23\x00\x04\x00\x17\x00\x17\x00\x27\x00\x17\x00\x2a\x00\x1c\x00\x1d\x00\x1e\x00\x0f\x00\x1d\x00\x1e\x00\x12\x00\x12\x00\x23\x00\x17\x00\x17\x00\x26\x00\x11\x00\x17\x00\x2a\x00\x1d\x00\x1e\x00\x2a\x00\x15\x00\x1d\x00\x1e\x00\x00\x00\x00\x00\x02\x00\x02\x00\x04\x00\x04\x00\x00\x00\x2a\x00\x02\x00\x04\x00\x04\x00\x2a\x00\x0d\x00\x1f\x00\x00\x00\x21\x00\x02\x00\x23\x00\x04\x00\x09\x00\x01\x00\x10\x00\x11\x00\x17\x00\x17\x00\x1d\x00\x04\x00\x02\x00\x04\x00\x17\x00\x19\x00\x1a\x00\x23\x00\x0e\x00\x0f\x00\x23\x00\x23\x00\x17\x00\x10\x00\x11\x00\x0a\x00\x23\x00\x1f\x00\x14\x00\x19\x00\x22\x00\x23\x00\x19\x00\x1a\x00\x23\x00\x1f\x00\x0a\x00\x16\x00\x22\x00\x23\x00\x1f\x00\x1a\x00\x21\x00\x02\x00\x23\x00\x24\x00\x0a\x00\x15\x00\x16\x00\x04\x00\x23\x00\x24\x00\x1a\x00\x23\x00\x0a\x00\x1d\x00\x0a\x00\x15\x00\x0d\x00\x0e\x00\x00\x00\x23\x00\x24\x00\x03\x00\x04\x00\x1d\x00\x16\x00\x1f\x00\x1e\x00\x21\x00\x1a\x00\x23\x00\x24\x00\x1d\x00\x0a\x00\x0f\x00\x0a\x00\x23\x00\x12\x00\x23\x00\x24\x00\x10\x00\x0a\x00\x23\x00\x24\x00\x15\x00\x16\x00\x24\x00\x16\x00\x24\x00\x1a\x00\x16\x00\x1a\x00\x15\x00\x16\x00\x1a\x00\x0a\x00\x04\x00\x1a\x00\x23\x00\x24\x00\x23\x00\x24\x00\x1c\x00\x23\x00\x24\x00\x24\x00\x23\x00\x16\x00\x10\x00\x11\x00\x23\x00\x1a\x00\x00\x00\x24\x00\x1d\x00\x03\x00\x04\x00\x19\x00\x1a\x00\x00\x00\x23\x00\x0a\x00\x03\x00\x04\x00\x24\x00\x00\x00\x0b\x00\x0f\x00\x03\x00\x04\x00\x12\x00\x13\x00\x14\x00\x24\x00\x0f\x00\x04\x00\x23\x00\x12\x00\x13\x00\x14\x00\x0f\x00\x24\x00\x04\x00\x12\x00\x13\x00\x14\x00\x00\x00\x10\x00\x11\x00\x03\x00\x04\x00\x0a\x00\x15\x00\x16\x00\x10\x00\x11\x00\x04\x00\x24\x00\x0b\x00\x15\x00\x16\x00\x0f\x00\x24\x00\x04\x00\x12\x00\x04\x00\x14\x00\x00\x00\x10\x00\x11\x00\x03\x00\x04\x00\x24\x00\x15\x00\x16\x00\x10\x00\x11\x00\x04\x00\x12\x00\x23\x00\x00\x00\x16\x00\x0f\x00\x03\x00\x04\x00\x12\x00\x0c\x00\x24\x00\x13\x00\x10\x00\x11\x00\x1f\x00\x07\x00\x21\x00\x04\x00\x23\x00\x1b\x00\x0a\x00\x12\x00\x07\x00\x1f\x00\x24\x00\x21\x00\x08\x00\x23\x00\x06\x00\x10\x00\x11\x00\x00\x00\x01\x00\x02\x00\x03\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0a\x00\x04\x00\x24\x00\x0b\x00\x04\x00\x03\x00\x24\x00\x0b\x00\x24\x00\x24\x00\x0d\x00\x0e\x00\x04\x00\x0d\x00\x0e\x00\x04\x00\x0a\x00\x09\x00\x0a\x00\x04\x00\x09\x00\x0a\x00\x08\x00\x24\x00\x09\x00\x0a\x00\x1f\x00\x04\x00\x21\x00\x24\x00\x23\x00\x24\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x06\x00\x07\x00\x08\x00\x04\x00\x24\x00\x24\x00\x0b\x00\x24\x00\x05\x00\x24\x00\x06\x00\x0a\x00\x24\x00\x24\x00\x09\x00\x23\x00\x1f\x00\x01\x00\x23\x00\x1e\x00\x1c\x00\x23\x00\x18\x00\x23\x00\x11\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x37\x00\xb6\xff\x38\x00\xd4\x00\x39\x00\x59\x00\x61\x00\x52\x00\xac\x00\x37\x00\xad\x00\x38\x00\xa3\x00\x39\x00\xdb\x00\xb4\x00\xae\x00\x52\x00\x76\x00\x79\x00\xb5\xff\xc0\x00\xa6\x00\x3a\x00\xb6\xff\x62\x00\xb5\xff\xb6\xff\x33\x00\x7a\x00\xb6\xff\xc3\x00\x3a\x00\xbc\x00\x4f\x00\x4a\x00\x4b\x00\x4c\x00\x44\x00\x45\x00\x46\x00\x4d\x00\xa9\x00\x4f\x00\x4a\x00\x4b\x00\x4c\x00\x44\x00\x45\x00\x46\x00\x4d\x00\x37\x00\x91\xff\x38\x00\xb5\xff\x39\x00\x59\x00\x33\x00\xb6\xff\x37\x00\x33\x00\x38\x00\x67\x00\x39\x00\xd9\x00\x68\x00\x74\x00\x85\x00\x5a\x00\x5b\x00\xbe\x00\x53\x00\xda\x00\x86\x00\x3a\x00\x7c\xff\x91\x00\x7c\xff\x5c\x00\x37\x00\xc6\x00\x38\x00\x3a\x00\x39\x00\x4e\x00\x4f\x00\x4a\x00\x4b\x00\x4c\x00\x44\x00\x45\x00\x46\x00\x4d\x00\xdc\x00\x4a\x00\x4b\x00\x4c\x00\x44\x00\x45\x00\x46\x00\x4d\x00\x37\x00\x3a\x00\x38\x00\x2a\x00\x39\x00\x3e\x00\x2a\x00\x33\x00\x7c\xff\x72\x00\x33\x00\xcf\x00\xdd\x00\x4a\x00\x4b\x00\x4c\x00\x44\x00\x45\x00\x46\x00\x4d\x00\x37\x00\x31\x00\x38\x00\x3a\x00\x39\x00\x32\x00\x93\x00\x2a\x00\x37\x00\x2a\x00\x38\x00\x3e\x00\x39\x00\x33\x00\xd6\x00\x4a\x00\x4b\x00\x4c\x00\x44\x00\x45\x00\x46\x00\x4d\x00\x9d\x00\x3a\x00\x52\x00\x53\x00\x2b\x00\x7c\xff\x37\x00\x7c\xff\x38\x00\x3a\x00\x39\x00\x54\x00\xd7\x00\x4a\x00\x4b\x00\x4c\x00\x44\x00\x45\x00\x46\x00\x4d\x00\xb4\x00\x4a\x00\x4b\x00\x4c\x00\x44\x00\x45\x00\x46\x00\x4d\x00\x37\x00\x3a\x00\x38\x00\xb0\x00\x39\x00\xb2\x00\x2a\x00\x37\x00\x3e\x00\x38\x00\x33\x00\x39\x00\xb5\x00\x4a\x00\x4b\x00\x4c\x00\x44\x00\x45\x00\x46\x00\x4d\x00\xd2\x00\x8e\x00\x8c\x00\x3a\x00\x2a\x00\xb2\xff\x35\x00\xb2\xff\x36\x00\x2a\x00\x3a\x00\xb2\xff\x2a\x00\x47\x00\x49\x00\x4a\x00\x4b\x00\x4c\x00\x44\x00\x45\x00\x46\x00\x4d\x00\x42\x00\x2b\x00\x43\x00\x44\x00\x45\x00\x46\x00\x2b\x00\x2c\x00\x2d\x00\x2b\x00\x8b\x00\x8c\x00\x2c\x00\x2d\x00\x2a\x00\x2c\x00\x2d\x00\xb2\xff\x58\x00\x50\x00\x2e\x00\xb8\x00\x34\x00\x2a\x00\x5f\x00\x2e\x00\xaf\x00\x34\x00\x2e\x00\x33\x00\x34\x00\xb4\xff\x37\x00\x2b\x00\x38\x00\x7d\x00\x39\x00\xb4\xff\x59\x00\x2c\x00\x2d\x00\x37\x00\x2b\x00\x38\x00\x2a\x00\x39\x00\x89\x00\xbf\x00\x57\x00\x2d\x00\xc1\x00\x5b\x00\x2e\x00\x8f\x00\x2f\x00\x3a\x00\x37\x00\xdf\x00\x38\x00\x2a\x00\x39\x00\x2e\x00\x2a\x00\x2b\x00\x3a\x00\xb4\xff\x33\x00\x3b\x00\xd0\x00\x57\x00\x2d\x00\x67\x00\x3c\x00\x2a\x00\x68\x00\x69\x00\x3e\x00\x2a\x00\x2b\x00\x3a\x00\x3f\x00\x2b\x00\x2e\x00\x56\x00\x57\x00\x2d\x00\xc4\x00\xe0\x00\x2d\x00\x6b\x00\xe0\x00\x40\x00\x2b\x00\xdb\x00\x41\x00\x8b\x00\x2b\x00\x2e\x00\xe1\x00\x2d\x00\x2e\x00\xd4\x00\x55\x00\x2d\x00\x37\x00\x37\x00\x38\x00\x38\x00\x39\x00\x39\x00\x37\x00\x2e\x00\x38\x00\x59\x00\x39\x00\x2e\x00\xd6\x00\x2a\x00\x37\x00\x3e\x00\x38\x00\x33\x00\x39\x00\xb7\x00\x6e\x00\x5a\x00\x5b\x00\x3a\x00\x3a\x00\xb8\x00\x59\x00\xbe\x00\x7c\xff\x3a\x00\xc2\x00\x5e\x00\x33\x00\x6f\x00\x70\x00\xb9\x00\xba\x00\x3a\x00\x5a\x00\x5b\x00\x98\xff\xbb\x00\x2a\x00\xca\x00\x71\x00\x72\x00\x33\x00\xa3\x00\x5e\x00\x48\x00\x2a\x00\x98\xff\x31\x00\x72\x00\x33\x00\x2a\x00\x32\x00\x3e\x00\xc8\x00\x33\x00\x7c\xff\x7c\xff\x98\xff\x31\x00\x79\x00\x33\x00\x78\xff\x32\x00\x33\x00\x98\xff\x98\xff\xd2\x00\x7c\xff\xcc\x00\x7c\x00\x67\x00\x33\x00\x98\xff\x68\x00\x69\x00\x7c\xff\x31\x00\x2a\x00\x61\x00\x3e\x00\x32\x00\x33\x00\x7c\xff\x78\xff\x98\xff\xcb\x00\x98\xff\x33\x00\x6b\x00\x33\x00\x78\xff\x93\x00\x98\xff\x33\x00\xb6\xff\x98\xff\x31\x00\xff\xff\x31\x00\xff\xff\x32\x00\x31\x00\x32\x00\x98\xff\x31\x00\x32\x00\x98\xff\x59\x00\x32\x00\x33\x00\x98\xff\x33\x00\x98\xff\x7f\x00\x33\x00\x98\xff\xff\xff\x33\x00\x31\x00\x5a\x00\x5b\x00\x33\x00\x32\x00\x67\x00\xff\xff\x78\xff\x68\x00\x69\x00\x5d\x00\x5e\x00\x67\x00\x33\x00\x96\x00\x68\x00\x69\x00\xff\xff\x67\x00\x97\x00\x6a\x00\x68\x00\x69\x00\x6b\x00\xc8\x00\x73\x00\xff\xff\x6a\x00\x59\x00\x33\x00\x6b\x00\xca\x00\x73\x00\x6a\x00\xff\xff\x59\x00\x6b\x00\x72\x00\x73\x00\x67\x00\x63\x00\x5b\x00\x68\x00\x69\x00\x99\x00\xc5\x00\x66\x00\x63\x00\x5b\x00\x59\x00\xff\xff\x9a\x00\x9b\x00\x66\x00\x6a\x00\xff\xff\x59\x00\x6b\x00\x9b\x00\x6c\x00\x67\x00\x63\x00\x5b\x00\x68\x00\x69\x00\xff\xff\x65\x00\x66\x00\x63\x00\x5b\x00\x59\x00\x7c\xff\x33\x00\x67\x00\x64\x00\x78\x00\x68\x00\x74\x00\x6b\x00\x9d\x00\xff\xff\x7c\xff\x9e\x00\x5b\x00\x2a\x00\xa0\x00\x3e\x00\x59\x00\x33\x00\x7c\xff\xa1\x00\x75\x00\xb1\xff\x2a\x00\xff\xff\x3e\x00\xa2\x00\x33\x00\xa3\x00\x77\x00\x5b\x00\x7f\x00\x80\x00\x81\x00\x82\x00\x7f\x00\x80\x00\x81\x00\x82\x00\xa5\x00\x79\x00\xff\xff\xcd\x00\x79\x00\xac\x00\xff\xff\x83\x00\xff\xff\xff\xff\x97\x00\x7c\x00\x85\x00\x7b\x00\x7c\x00\x85\x00\xa8\x00\xce\x00\x88\x00\x85\x00\x94\x00\x88\x00\xa7\x00\xff\xff\x87\x00\x88\x00\x2a\x00\xa9\x00\x3e\x00\xff\xff\x33\x00\x7c\xff\x2a\x00\x85\x00\x3e\x00\x72\x00\x8d\x00\x8e\x00\x8c\x00\xab\x00\xff\xff\xff\xff\xae\x00\xff\xff\xad\x00\xff\xff\xa3\x00\xaf\x00\xff\xff\xff\xff\xb2\x00\x33\x00\x2a\x00\x52\x00\x33\x00\x61\x00\x7f\x00\x33\x00\x91\x00\x33\x00\x8b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (40, 138) [
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
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
	(138 , happyReduce_138)
	]

happy_n_terms = 37 :: Int
happy_n_nonterms = 45 :: Int

happyReduce_40 = happySpecReduce_1  0# happyReduction_40
happyReduction_40 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn43
		 ((read ( happy_var_1)) :: Integer
	)}

happyReduce_41 = happySpecReduce_1  1# happyReduction_41
happyReduction_41 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn44
		 ((read ( happy_var_1)) :: Double
	)}

happyReduce_42 = happySpecReduce_1  2# happyReduction_42
happyReduction_42 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn45
		 (happy_var_1
	)}

happyReduce_43 = happySpecReduce_1  3# happyReduction_43
happyReduction_43 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn46
		 ((read ( happy_var_1)) :: Char
	)}

happyReduce_44 = happySpecReduce_1  4# happyReduction_44
happyReduction_44 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Id happy_var_1)) -> 
	happyIn47
		 (Id (happy_var_1)
	)}

happyReduce_45 = happyReduce 4# 5# happyReduction_45
happyReduction_45 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut47 happy_x_2 of { happy_var_2 -> 
	case happyOut49 happy_x_4 of { happy_var_4 -> 
	happyIn48
		 (AbsPascal.PProgram happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_46 = happyReduce 4# 6# happyReduction_46
happyReduction_46 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut50 happy_x_1 of { happy_var_1 -> 
	case happyOut71 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (AbsPascal.PBlock happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_47 = happyReduce 4# 7# happyReduction_47
happyReduction_47 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut55 happy_x_2 of { happy_var_2 -> 
	case happyOut67 happy_x_3 of { happy_var_3 -> 
	case happyOut70 happy_x_4 of { happy_var_4 -> 
	happyIn50
		 (AbsPascal.PPart happy_var_1 happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest}}}}

happyReduce_48 = happySpecReduce_0  8# happyReduction_48
happyReduction_48  =  happyIn51
		 (AbsPascal.PPartConstEmpty
	)

happyReduce_49 = happySpecReduce_2  8# happyReduction_49
happyReduction_49 happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_2 of { happy_var_2 -> 
	happyIn51
		 (AbsPascal.PPartConst happy_var_2
	)}

happyReduce_50 = happySpecReduce_0  9# happyReduction_50
happyReduction_50  =  happyIn52
		 ([]
	)

happyReduce_51 = happySpecReduce_1  9# happyReduction_51
happyReduction_51 happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 ((:[]) happy_var_1
	)}

happyReduce_52 = happySpecReduce_3  9# happyReduction_52
happyReduction_52 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_53 = happySpecReduce_3  10# happyReduction_53
happyReduction_53 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 (AbsPascal.PListConst happy_var_1 happy_var_3
	)}}

happyReduce_54 = happySpecReduce_1  11# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOut43 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 (AbsPascal.PValInteger happy_var_1
	)}

happyReduce_55 = happySpecReduce_1  11# happyReduction_55
happyReduction_55 happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 (AbsPascal.PValDouble happy_var_1
	)}

happyReduce_56 = happySpecReduce_1  11# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 (AbsPascal.PValString happy_var_1
	)}

happyReduce_57 = happySpecReduce_1  11# happyReduction_57
happyReduction_57 happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 (AbsPascal.PValChar happy_var_1
	)}

happyReduce_58 = happySpecReduce_0  12# happyReduction_58
happyReduction_58  =  happyIn55
		 (AbsPascal.PPartTypesEmpty
	)

happyReduce_59 = happySpecReduce_2  12# happyReduction_59
happyReduction_59 happy_x_2
	happy_x_1
	 =  case happyOut56 happy_x_2 of { happy_var_2 -> 
	happyIn55
		 (AbsPascal.PPartTypes happy_var_2
	)}

happyReduce_60 = happySpecReduce_0  13# happyReduction_60
happyReduction_60  =  happyIn56
		 ([]
	)

happyReduce_61 = happySpecReduce_1  13# happyReduction_61
happyReduction_61 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn56
		 ((:[]) happy_var_1
	)}

happyReduce_62 = happySpecReduce_3  13# happyReduction_62
happyReduction_62 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_3 of { happy_var_3 -> 
	happyIn56
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_63 = happySpecReduce_3  14# happyReduction_63
happyReduction_63 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut58 happy_x_3 of { happy_var_3 -> 
	happyIn57
		 (AbsPascal.PListTypes happy_var_1 happy_var_3
	)}}

happyReduce_64 = happySpecReduce_3  15# happyReduction_64
happyReduction_64 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut59 happy_x_2 of { happy_var_2 -> 
	happyIn58
		 (AbsPascal.PTypeEnum happy_var_2
	)}

happyReduce_65 = happySpecReduce_3  15# happyReduction_65
happyReduction_65 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut61 happy_x_1 of { happy_var_1 -> 
	case happyOut61 happy_x_3 of { happy_var_3 -> 
	happyIn58
		 (AbsPascal.PTypeSubRange happy_var_1 happy_var_3
	)}}

happyReduce_66 = happySpecReduce_2  15# happyReduction_66
happyReduction_66 happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_2 of { happy_var_2 -> 
	happyIn58
		 (AbsPascal.PTypePointer happy_var_2
	)}

happyReduce_67 = happyReduce 6# 15# happyReduction_67
happyReduction_67 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut62 happy_x_3 of { happy_var_3 -> 
	case happyOut47 happy_x_6 of { happy_var_6 -> 
	happyIn58
		 (AbsPascal.PTypeArray happy_var_3 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_68 = happySpecReduce_3  15# happyReduction_68
happyReduction_68 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_2 of { happy_var_2 -> 
	happyIn58
		 (AbsPascal.PTypeRecord happy_var_2
	)}

happyReduce_69 = happySpecReduce_1  15# happyReduction_69
happyReduction_69 happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	happyIn58
		 (AbsPascal.PTypeIdentifier happy_var_1
	)}

happyReduce_70 = happySpecReduce_0  16# happyReduction_70
happyReduction_70  =  happyIn59
		 ([]
	)

happyReduce_71 = happySpecReduce_1  16# happyReduction_71
happyReduction_71 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn59
		 ((:[]) happy_var_1
	)}

happyReduce_72 = happySpecReduce_3  16# happyReduction_72
happyReduction_72 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut59 happy_x_3 of { happy_var_3 -> 
	happyIn59
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_73 = happySpecReduce_0  16# happyReduction_73
happyReduction_73  =  happyIn59
		 ([]
	)

happyReduce_74 = happySpecReduce_1  16# happyReduction_74
happyReduction_74 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn59
		 ((:[]) happy_var_1
	)}

happyReduce_75 = happySpecReduce_3  16# happyReduction_75
happyReduction_75 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut59 happy_x_3 of { happy_var_3 -> 
	happyIn59
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_76 = happySpecReduce_1  17# happyReduction_76
happyReduction_76 happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	happyIn60
		 (AbsPascal.PListId happy_var_1
	)}

happyReduce_77 = happySpecReduce_1  17# happyReduction_77
happyReduction_77 happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	happyIn60
		 (AbsPascal.PListId happy_var_1
	)}

happyReduce_78 = happySpecReduce_1  18# happyReduction_78
happyReduction_78 happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	happyIn61
		 (AbsPascal.PRangeTypeId happy_var_1
	)}

happyReduce_79 = happySpecReduce_1  18# happyReduction_79
happyReduction_79 happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	happyIn61
		 (AbsPascal.PRangeTypeChar happy_var_1
	)}

happyReduce_80 = happySpecReduce_1  18# happyReduction_80
happyReduction_80 happy_x_1
	 =  case happyOut43 happy_x_1 of { happy_var_1 -> 
	happyIn61
		 (AbsPascal.PRangeTypeInteger happy_var_1
	)}

happyReduce_81 = happySpecReduce_0  19# happyReduction_81
happyReduction_81  =  happyIn62
		 ([]
	)

happyReduce_82 = happySpecReduce_1  19# happyReduction_82
happyReduction_82 happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	happyIn62
		 ((:[]) happy_var_1
	)}

happyReduce_83 = happySpecReduce_3  19# happyReduction_83
happyReduction_83 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn62
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_84 = happySpecReduce_1  20# happyReduction_84
happyReduction_84 happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	happyIn63
		 (AbsPascal.PTypeArrayLType happy_var_1
	)}

happyReduce_85 = happySpecReduce_0  21# happyReduction_85
happyReduction_85  =  happyIn64
		 ([]
	)

happyReduce_86 = happySpecReduce_1  21# happyReduction_86
happyReduction_86 happy_x_1
	 =  case happyOut65 happy_x_1 of { happy_var_1 -> 
	happyIn64
		 ((:[]) happy_var_1
	)}

happyReduce_87 = happySpecReduce_3  21# happyReduction_87
happyReduction_87 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut65 happy_x_1 of { happy_var_1 -> 
	case happyOut64 happy_x_3 of { happy_var_3 -> 
	happyIn64
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_88 = happySpecReduce_3  22# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut59 happy_x_1 of { happy_var_1 -> 
	case happyOut58 happy_x_3 of { happy_var_3 -> 
	happyIn65
		 (AbsPascal.PRecordFields happy_var_1 happy_var_3
	)}}

happyReduce_89 = happySpecReduce_3  23# happyReduction_89
happyReduction_89 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn66
		 (AbsPascal.PAccessRecord happy_var_1 happy_var_3
	)}}

happyReduce_90 = happySpecReduce_0  24# happyReduction_90
happyReduction_90  =  happyIn67
		 (AbsPascal.PPartVarsEmpty
	)

happyReduce_91 = happySpecReduce_2  24# happyReduction_91
happyReduction_91 happy_x_2
	happy_x_1
	 =  case happyOut68 happy_x_2 of { happy_var_2 -> 
	happyIn67
		 (AbsPascal.PPartVars happy_var_2
	)}

happyReduce_92 = happySpecReduce_0  25# happyReduction_92
happyReduction_92  =  happyIn68
		 ([]
	)

happyReduce_93 = happySpecReduce_1  25# happyReduction_93
happyReduction_93 happy_x_1
	 =  case happyOut69 happy_x_1 of { happy_var_1 -> 
	happyIn68
		 ((:[]) happy_var_1
	)}

happyReduce_94 = happySpecReduce_3  25# happyReduction_94
happyReduction_94 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut69 happy_x_1 of { happy_var_1 -> 
	case happyOut68 happy_x_3 of { happy_var_3 -> 
	happyIn68
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_95 = happySpecReduce_3  26# happyReduction_95
happyReduction_95 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut59 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn69
		 (AbsPascal.PListVars happy_var_1 happy_var_3
	)}}

happyReduce_96 = happySpecReduce_0  27# happyReduction_96
happyReduction_96  =  happyIn70
		 (AbsPascal.PPartFuncsProcs
	)

happyReduce_97 = happySpecReduce_0  28# happyReduction_97
happyReduction_97  =  happyIn71
		 ([]
	)

happyReduce_98 = happySpecReduce_1  28# happyReduction_98
happyReduction_98 happy_x_1
	 =  case happyOut72 happy_x_1 of { happy_var_1 -> 
	happyIn71
		 ((:[]) happy_var_1
	)}

happyReduce_99 = happySpecReduce_3  28# happyReduction_99
happyReduction_99 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut72 happy_x_1 of { happy_var_1 -> 
	case happyOut71 happy_x_3 of { happy_var_3 -> 
	happyIn71
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_100 = happySpecReduce_0  29# happyReduction_100
happyReduction_100  =  happyIn72
		 (AbsPascal.PListInstructionEmpty
	)

happyReduce_101 = happySpecReduce_1  29# happyReduction_101
happyReduction_101 happy_x_1
	 =  case happyOut73 happy_x_1 of { happy_var_1 -> 
	happyIn72
		 (AbsPascal.PListSimpleInstruction happy_var_1
	)}

happyReduce_102 = happySpecReduce_1  29# happyReduction_102
happyReduction_102 happy_x_1
	 =  case happyOut85 happy_x_1 of { happy_var_1 -> 
	happyIn72
		 (AbsPascal.PListCompositeInstruction happy_var_1
	)}

happyReduce_103 = happySpecReduce_0  30# happyReduction_103
happyReduction_103  =  happyIn73
		 (AbsPascal.PSimpleInstructionEmpty
	)

happyReduce_104 = happySpecReduce_3  30# happyReduction_104
happyReduction_104 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut77 happy_x_3 of { happy_var_3 -> 
	happyIn73
		 (AbsPascal.PSimpleInstructionAssignment happy_var_1 happy_var_3
	)}}

happyReduce_105 = happySpecReduce_3  30# happyReduction_105
happyReduction_105 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	case happyOut77 happy_x_3 of { happy_var_3 -> 
	happyIn73
		 (AbsPascal.PSimpleInstructionAssignmentAccRecord happy_var_1 happy_var_3
	)}}

happyReduce_106 = happySpecReduce_2  30# happyReduction_106
happyReduction_106 happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut75 happy_x_2 of { happy_var_2 -> 
	happyIn73
		 (AbsPascal.PSimpleInstructionProcFunc happy_var_1 happy_var_2
	)}}

happyReduce_107 = happySpecReduce_0  31# happyReduction_107
happyReduction_107  =  happyIn74
		 ([]
	)

happyReduce_108 = happySpecReduce_1  31# happyReduction_108
happyReduction_108 happy_x_1
	 =  case happyOut75 happy_x_1 of { happy_var_1 -> 
	happyIn74
		 ((:[]) happy_var_1
	)}

happyReduce_109 = happySpecReduce_3  31# happyReduction_109
happyReduction_109 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut75 happy_x_1 of { happy_var_1 -> 
	case happyOut74 happy_x_3 of { happy_var_3 -> 
	happyIn74
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_110 = happySpecReduce_0  32# happyReduction_110
happyReduction_110  =  happyIn75
		 (AbsPascal.PParmsEmpty
	)

happyReduce_111 = happySpecReduce_3  32# happyReduction_111
happyReduction_111 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut76 happy_x_2 of { happy_var_2 -> 
	happyIn75
		 (AbsPascal.PParms happy_var_2
	)}

happyReduce_112 = happySpecReduce_0  33# happyReduction_112
happyReduction_112  =  happyIn76
		 ([]
	)

happyReduce_113 = happySpecReduce_1  33# happyReduction_113
happyReduction_113 happy_x_1
	 =  case happyOut77 happy_x_1 of { happy_var_1 -> 
	happyIn76
		 ((:[]) happy_var_1
	)}

happyReduce_114 = happySpecReduce_3  33# happyReduction_114
happyReduction_114 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut77 happy_x_1 of { happy_var_1 -> 
	case happyOut76 happy_x_3 of { happy_var_3 -> 
	happyIn76
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_115 = happySpecReduce_0  34# happyReduction_115
happyReduction_115  =  happyIn77
		 (AbsPascal.PExpsEmpty
	)

happyReduce_116 = happySpecReduce_1  34# happyReduction_116
happyReduction_116 happy_x_1
	 =  case happyOut78 happy_x_1 of { happy_var_1 -> 
	happyIn77
		 (AbsPascal.PExpsFactor happy_var_1
	)}

happyReduce_117 = happySpecReduce_1  34# happyReduction_117
happyReduction_117 happy_x_1
	 =  case happyOut79 happy_x_1 of { happy_var_1 -> 
	happyIn77
		 (AbsPascal.PExpsTerms happy_var_1
	)}

happyReduce_118 = happySpecReduce_1  34# happyReduction_118
happyReduction_118 happy_x_1
	 =  case happyOut80 happy_x_1 of { happy_var_1 -> 
	happyIn77
		 (AbsPascal.PExpsSimple happy_var_1
	)}

happyReduce_119 = happySpecReduce_1  34# happyReduction_119
happyReduction_119 happy_x_1
	 =  case happyOut84 happy_x_1 of { happy_var_1 -> 
	happyIn77
		 (AbsPascal.PExpGeneral happy_var_1
	)}

happyReduce_120 = happySpecReduce_1  35# happyReduction_120
happyReduction_120 happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	happyIn78
		 (AbsPascal.PFactorString happy_var_1
	)}

happyReduce_121 = happySpecReduce_1  35# happyReduction_121
happyReduction_121 happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	happyIn78
		 (AbsPascal.PFactorId happy_var_1
	)}

happyReduce_122 = happySpecReduce_1  35# happyReduction_122
happyReduction_122 happy_x_1
	 =  case happyOut43 happy_x_1 of { happy_var_1 -> 
	happyIn78
		 (AbsPascal.PFactorInteger happy_var_1
	)}

happyReduce_123 = happySpecReduce_1  35# happyReduction_123
happyReduction_123 happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	happyIn78
		 (AbsPascal.PFactorAccRecord happy_var_1
	)}

happyReduce_124 = happySpecReduce_0  36# happyReduction_124
happyReduction_124  =  happyIn79
		 (AbsPascal.PTerms
	)

happyReduce_125 = happySpecReduce_1  37# happyReduction_125
happyReduction_125 happy_x_1
	 =  case happyOut81 happy_x_1 of { happy_var_1 -> 
	happyIn80
		 (AbsPascal.PSimpleExpAdd happy_var_1
	)}

happyReduce_126 = happySpecReduce_1  37# happyReduction_126
happyReduction_126 happy_x_1
	 =  case happyOut82 happy_x_1 of { happy_var_1 -> 
	happyIn80
		 (AbsPascal.PSimpleExpEquals happy_var_1
	)}

happyReduce_127 = happySpecReduce_1  37# happyReduction_127
happyReduction_127 happy_x_1
	 =  case happyOut83 happy_x_1 of { happy_var_1 -> 
	happyIn80
		 (AbsPascal.PSimpleExpMinus happy_var_1
	)}

happyReduce_128 = happySpecReduce_3  38# happyReduction_128
happyReduction_128 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut78 happy_x_1 of { happy_var_1 -> 
	case happyOut78 happy_x_3 of { happy_var_3 -> 
	happyIn81
		 (AbsPascal.PAdd happy_var_1 happy_var_3
	)}}

happyReduce_129 = happySpecReduce_3  39# happyReduction_129
happyReduction_129 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut78 happy_x_1 of { happy_var_1 -> 
	case happyOut78 happy_x_3 of { happy_var_3 -> 
	happyIn82
		 (AbsPascal.PEquals happy_var_1 happy_var_3
	)}}

happyReduce_130 = happySpecReduce_3  40# happyReduction_130
happyReduction_130 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut78 happy_x_1 of { happy_var_1 -> 
	case happyOut78 happy_x_3 of { happy_var_3 -> 
	happyIn83
		 (AbsPascal.PMinus happy_var_1 happy_var_3
	)}}

happyReduce_131 = happySpecReduce_0  41# happyReduction_131
happyReduction_131  =  happyIn84
		 (AbsPascal.PGeneralExp
	)

happyReduce_132 = happyReduce 4# 42# happyReduction_132
happyReduction_132 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut86 happy_x_2 of { happy_var_2 -> 
	case happyOut77 happy_x_4 of { happy_var_4 -> 
	happyIn85
		 (AbsPascal.PCompositeInstructionRepeat happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_133 = happyReduce 8# 42# happyReduction_133
happyReduction_133 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut47 happy_x_2 of { happy_var_2 -> 
	case happyOut77 happy_x_4 of { happy_var_4 -> 
	case happyOut77 happy_x_6 of { happy_var_6 -> 
	case happyOut72 happy_x_8 of { happy_var_8 -> 
	happyIn85
		 (AbsPascal.PCompositeInstructionForTo happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_134 = happyReduce 8# 42# happyReduction_134
happyReduction_134 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut47 happy_x_2 of { happy_var_2 -> 
	case happyOut77 happy_x_4 of { happy_var_4 -> 
	case happyOut77 happy_x_6 of { happy_var_6 -> 
	case happyOut72 happy_x_8 of { happy_var_8 -> 
	happyIn85
		 (AbsPascal.PCompositeInstructionForDownTo happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_135 = happySpecReduce_0  43# happyReduction_135
happyReduction_135  =  happyIn86
		 ([]
	)

happyReduce_136 = happySpecReduce_1  43# happyReduction_136
happyReduction_136 happy_x_1
	 =  case happyOut87 happy_x_1 of { happy_var_1 -> 
	happyIn86
		 ((:[]) happy_var_1
	)}

happyReduce_137 = happySpecReduce_3  43# happyReduction_137
happyReduction_137 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut87 happy_x_1 of { happy_var_1 -> 
	case happyOut86 happy_x_3 of { happy_var_3 -> 
	happyIn86
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_138 = happySpecReduce_1  44# happyReduction_138
happyReduction_138 happy_x_1
	 =  case happyOut72 happy_x_1 of { happy_var_1 -> 
	happyIn87
		 (AbsPascal.PRepeatListInstrs happy_var_1
	)}

happyNewToken action sts stk [] =
	happyDoAction 36# notHappyAtAll action sts stk []

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
	PT _ (TI happy_dollar_dollar) -> cont 31#;
	PT _ (TD happy_dollar_dollar) -> cont 32#;
	PT _ (TL happy_dollar_dollar) -> cont 33#;
	PT _ (TC happy_dollar_dollar) -> cont 34#;
	PT _ (T_Id happy_dollar_dollar) -> cont 35#;
	_ -> happyError' (tk:tks)
	}

happyError_ 36# tk tks = happyError' tks
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
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut48 x))

pBlock tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut49 x))

pParts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut50 x))

pConstants tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut51 x))

pListConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (happyOut52 x))

pConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (happyOut53 x))

pVal tks = happySomeParser where
  happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (happyOut54 x))

pTypes tks = happySomeParser where
  happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (happyOut55 x))

pListListTypes tks = happySomeParser where
  happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (happyOut56 x))

pListTypes tks = happySomeParser where
  happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (happyOut57 x))

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (happyOut58 x))

pListListId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (happyOut59 x))

pListId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (happyOut60 x))

pRangeType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 13# tks) (\x -> happyReturn (happyOut61 x))

pListLType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 14# tks) (\x -> happyReturn (happyOut62 x))

pLType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 15# tks) (\x -> happyReturn (happyOut63 x))

pListFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 16# tks) (\x -> happyReturn (happyOut64 x))

pFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 17# tks) (\x -> happyReturn (happyOut65 x))

pAccessRecord tks = happySomeParser where
  happySomeParser = happyThen (happyParse 18# tks) (\x -> happyReturn (happyOut66 x))

pVars tks = happySomeParser where
  happySomeParser = happyThen (happyParse 19# tks) (\x -> happyReturn (happyOut67 x))

pListListVars tks = happySomeParser where
  happySomeParser = happyThen (happyParse 20# tks) (\x -> happyReturn (happyOut68 x))

pListVars tks = happySomeParser where
  happySomeParser = happyThen (happyParse 21# tks) (\x -> happyReturn (happyOut69 x))

pFuncsProcs tks = happySomeParser where
  happySomeParser = happyThen (happyParse 22# tks) (\x -> happyReturn (happyOut70 x))

pListInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 23# tks) (\x -> happyReturn (happyOut71 x))

pInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 24# tks) (\x -> happyReturn (happyOut72 x))

pSimpleInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 25# tks) (\x -> happyReturn (happyOut73 x))

pListParms tks = happySomeParser where
  happySomeParser = happyThen (happyParse 26# tks) (\x -> happyReturn (happyOut74 x))

pParms tks = happySomeParser where
  happySomeParser = happyThen (happyParse 27# tks) (\x -> happyReturn (happyOut75 x))

pListExps tks = happySomeParser where
  happySomeParser = happyThen (happyParse 28# tks) (\x -> happyReturn (happyOut76 x))

pExps tks = happySomeParser where
  happySomeParser = happyThen (happyParse 29# tks) (\x -> happyReturn (happyOut77 x))

pFactor tks = happySomeParser where
  happySomeParser = happyThen (happyParse 30# tks) (\x -> happyReturn (happyOut78 x))

pTerms tks = happySomeParser where
  happySomeParser = happyThen (happyParse 31# tks) (\x -> happyReturn (happyOut79 x))

pSimpleExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 32# tks) (\x -> happyReturn (happyOut80 x))

pAdd tks = happySomeParser where
  happySomeParser = happyThen (happyParse 33# tks) (\x -> happyReturn (happyOut81 x))

pEquals tks = happySomeParser where
  happySomeParser = happyThen (happyParse 34# tks) (\x -> happyReturn (happyOut82 x))

pMinus tks = happySomeParser where
  happySomeParser = happyThen (happyParse 35# tks) (\x -> happyReturn (happyOut83 x))

pGeneralExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 36# tks) (\x -> happyReturn (happyOut84 x))

pCompositeInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 37# tks) (\x -> happyReturn (happyOut85 x))

pListListInstrs tks = happySomeParser where
  happySomeParser = happyThen (happyParse 38# tks) (\x -> happyReturn (happyOut86 x))

pListInstrs tks = happySomeParser where
  happySomeParser = happyThen (happyParse 39# tks) (\x -> happyReturn (happyOut87 x))

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
