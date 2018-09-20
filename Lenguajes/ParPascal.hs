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
happyIn36 :: (Integer) -> (HappyAbsSyn )
happyIn36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (Integer)
happyOut36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (Double) -> (HappyAbsSyn )
happyIn37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> (Double)
happyOut37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (String) -> (HappyAbsSyn )
happyIn38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (String)
happyOut38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (Char) -> (HappyAbsSyn )
happyIn39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (Char)
happyOut39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: (Id) -> (HappyAbsSyn )
happyIn40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> (Id)
happyOut40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut40 #-}
happyIn41 :: (Program) -> (HappyAbsSyn )
happyIn41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn ) -> (Program)
happyOut41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut41 #-}
happyIn42 :: (Block) -> (HappyAbsSyn )
happyIn42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn ) -> (Block)
happyOut42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut42 #-}
happyIn43 :: (Parts) -> (HappyAbsSyn )
happyIn43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> (Parts)
happyOut43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyIn44 :: (Consts) -> (HappyAbsSyn )
happyIn44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn ) -> (Consts)
happyOut44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut44 #-}
happyIn45 :: (Const) -> (HappyAbsSyn )
happyIn45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn45 #-}
happyOut45 :: (HappyAbsSyn ) -> (Const)
happyOut45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut45 #-}
happyIn46 :: (Literal) -> (HappyAbsSyn )
happyIn46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn46 #-}
happyOut46 :: (HappyAbsSyn ) -> (Literal)
happyOut46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut46 #-}
happyIn47 :: (Vars) -> (HappyAbsSyn )
happyIn47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn47 #-}
happyOut47 :: (HappyAbsSyn ) -> (Vars)
happyOut47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut47 #-}
happyIn48 :: (Var) -> (HappyAbsSyn )
happyIn48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn48 #-}
happyOut48 :: (HappyAbsSyn ) -> (Var)
happyOut48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut48 #-}
happyIn49 :: (Types) -> (HappyAbsSyn )
happyIn49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn49 #-}
happyOut49 :: (HappyAbsSyn ) -> (Types)
happyOut49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut49 #-}
happyIn50 :: (Type) -> (HappyAbsSyn )
happyIn50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn50 #-}
happyOut50 :: (HappyAbsSyn ) -> (Type)
happyOut50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut50 #-}
happyIn51 :: (CustomType) -> (HappyAbsSyn )
happyIn51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn51 #-}
happyOut51 :: (HappyAbsSyn ) -> (CustomType)
happyOut51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut51 #-}
happyIn52 :: (RangeType) -> (HappyAbsSyn )
happyIn52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn52 #-}
happyOut52 :: (HappyAbsSyn ) -> (RangeType)
happyOut52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut52 #-}
happyIn53 :: (ArrType) -> (HappyAbsSyn )
happyIn53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn53 #-}
happyOut53 :: (HappyAbsSyn ) -> (ArrType)
happyOut53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut53 #-}
happyIn54 :: ([Fields]) -> (HappyAbsSyn )
happyIn54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn ) -> ([Fields])
happyOut54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyIn55 :: (Fields) -> (HappyAbsSyn )
happyIn55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn55 #-}
happyOut55 :: (HappyAbsSyn ) -> (Fields)
happyOut55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut55 #-}
happyIn56 :: (Body) -> (HappyAbsSyn )
happyIn56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn ) -> (Body)
happyOut56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: ([Instruction]) -> (HappyAbsSyn )
happyIn57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn ) -> ([Instruction])
happyOut57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyIn58 :: (Instruction) -> (HappyAbsSyn )
happyIn58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn58 #-}
happyOut58 :: (HappyAbsSyn ) -> (Instruction)
happyOut58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut58 #-}
happyIn59 :: (SimpleInstruction) -> (HappyAbsSyn )
happyIn59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn59 #-}
happyOut59 :: (HappyAbsSyn ) -> (SimpleInstruction)
happyOut59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut59 #-}
happyIn60 :: (CompositeInstruction) -> (HappyAbsSyn )
happyIn60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn60 #-}
happyOut60 :: (HappyAbsSyn ) -> (CompositeInstruction)
happyOut60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut60 #-}
happyIn61 :: (Parms) -> (HappyAbsSyn )
happyIn61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn61 #-}
happyOut61 :: (HappyAbsSyn ) -> (Parms)
happyOut61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut61 #-}
happyIn62 :: ([Exp]) -> (HappyAbsSyn )
happyIn62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn62 #-}
happyOut62 :: (HappyAbsSyn ) -> ([Exp])
happyOut62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut62 #-}
happyIn63 :: (Exp) -> (HappyAbsSyn )
happyIn63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn63 #-}
happyOut63 :: (HappyAbsSyn ) -> (Exp)
happyOut63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut63 #-}
happyIn64 :: (Factor) -> (HappyAbsSyn )
happyIn64 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn64 #-}
happyOut64 :: (HappyAbsSyn ) -> (Factor)
happyOut64 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut64 #-}
happyIn65 :: (Term) -> (HappyAbsSyn )
happyIn65 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn65 #-}
happyOut65 :: (HappyAbsSyn ) -> (Term)
happyOut65 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut65 #-}
happyIn66 :: (SimpleExp) -> (HappyAbsSyn )
happyIn66 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn66 #-}
happyOut66 :: (HappyAbsSyn ) -> (SimpleExp)
happyOut66 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut66 #-}
happyIn67 :: (ExpGral) -> (HappyAbsSyn )
happyIn67 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn67 #-}
happyOut67 :: (HappyAbsSyn ) -> (ExpGral)
happyOut67 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut67 #-}
happyIn68 :: ([AccId]) -> (HappyAbsSyn )
happyIn68 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn68 #-}
happyOut68 :: (HappyAbsSyn ) -> ([AccId])
happyOut68 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut68 #-}
happyIn69 :: (AccId) -> (HappyAbsSyn )
happyIn69 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn69 #-}
happyOut69 :: (HappyAbsSyn ) -> (AccId)
happyOut69 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut69 #-}
happyIn70 :: ([Const]) -> (HappyAbsSyn )
happyIn70 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn70 #-}
happyOut70 :: (HappyAbsSyn ) -> ([Const])
happyOut70 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut70 #-}
happyIn71 :: ([Var]) -> (HappyAbsSyn )
happyIn71 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn71 #-}
happyOut71 :: (HappyAbsSyn ) -> ([Var])
happyOut71 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut71 #-}
happyIn72 :: ([Type]) -> (HappyAbsSyn )
happyIn72 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn72 #-}
happyOut72 :: (HappyAbsSyn ) -> ([Type])
happyOut72 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut72 #-}
happyIn73 :: ([Id]) -> (HappyAbsSyn )
happyIn73 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn73 #-}
happyOut73 :: (HappyAbsSyn ) -> ([Id])
happyOut73 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut73 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\xdb\x01\xe2\x01\xe2\x01\xe2\x01\xd6\x01\x9b\x01\xd2\x01\xd1\x01\xd3\x01\xd0\x01\x04\x00\x96\x01\x96\x01\xd0\x01\xd0\x01\xdd\x01\x60\x01\x7f\x01\xcb\x01\x95\x01\xe4\x01\x90\x01\x90\x01\x90\x01\x90\x01\x90\x01\x90\x01\xca\x01\xca\x01\x00\x00\x00\x00\x00\x00\xca\x01\xcd\x01\x00\x00\xe5\x01\xc6\x01\x00\x00\xce\x00\xce\x00\xce\x00\x00\x00\xc6\x01\xc6\x01\xe1\x01\x00\x00\x00\x00\x00\x00\x00\x00\xe0\x01\x00\x00\x78\x00\x00\x00\x00\x00\xf9\xff\x00\x00\x00\x00\x00\x00\xc5\x01\x00\x00\xc5\x01\xc5\x01\xc5\x01\xd9\x01\xc4\x01\xdf\x01\xc2\x01\x90\x01\xc2\x01\xbd\x01\x90\x01\x79\x01\x01\x00\xbb\x01\xd7\x01\xb8\x01\x00\x00\x00\x00\xb8\x01\xd5\x01\xb7\x01\x6d\x01\xd4\x01\xb5\x01\xb5\x01\xcf\x01\x00\x00\x00\x00\x00\x00\xce\x01\xb4\x01\xb4\x01\x0c\x01\xb4\x01\xcc\x01\xb3\x01\xb3\x01\xc8\x01\xb2\x01\xc7\x01\xb0\x01\xb0\x01\x00\x00\xb0\x01\xc3\x01\xab\x01\x00\x00\xab\x01\xc1\x01\xaa\x01\xaa\x01\x00\x00\xaa\x01\xb1\x01\xa8\x01\xba\x01\xa7\x01\xa4\x01\xbe\x01\xbf\x01\xa6\x01\xa2\x01\x9b\x01\xa2\x01\xa2\x01\xa2\x01\x04\x00\xaf\x01\x96\x01\x00\x00\xc0\x01\x96\x01\x96\x01\x9c\x01\x04\x00\xae\x01\x44\x01\x90\x01\x00\x00\xa1\x01\x9d\x01\xad\x01\xac\x01\x90\x01\x90\x01\x90\x01\x90\x01\x93\x01\x93\x01\xa3\x01\xa0\x01\x99\x01\x77\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x92\x01\x00\x00\x00\x00\x90\x01\x7f\x01\x90\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x84\x01\x00\x00\x00\x00\x91\x01\x00\x00\x73\x01\x00\x00\x66\x01\x00\x00\x00\x00\x54\x01\x00\x00\x57\x01\x1a\x00\x55\x01\x4e\x01\x00\x00\x50\x01\x5f\x00\x90\x01\x90\x01\x7f\x01\x33\x01\x00\x00\x00\x00\x4c\x01\x4a\x01\x7f\x01\x7f\x01\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x4f\x01\xa5\x00\xc9\x00\x39\x01\x8a\x01\xa5\x01\x35\x01\x0b\x00\x28\x01\x0a\x00\x71\x01\x89\x01\x68\x01\x40\x01\x2e\x00\x1b\x01\xfb\x00\x22\x01\x2b\x00\x0b\x01\x09\x01\x44\x00\xba\x00\x4b\x01\xeb\x00\xe0\x00\xca\x00\x10\x01\x28\x00\xfe\x00\xdd\x00\xd6\x00\x09\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x03\x00\x08\x00\x4d\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x39\x00\x00\x00\xed\x00\x9a\x00\xee\x00\xc1\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe1\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x06\x00\xc4\x00\x00\x00\xf7\x00\x00\x00\x00\x00\x00\x00\x38\x00\x00\x00\x00\x00\x00\x00\xa2\x00\x00\x00\x00\x00\x00\x00\x00\x00\x67\x00\x00\x00\x4c\x00\x00\x00\xf4\xff\x00\x00\x49\x00\x00\x00\x00\x00\x3f\x00\x1d\x00\x9f\x01\xfd\xff\x3b\x00\x02\x00\x6f\x01\x00\x00\x5d\x01\x00\x00\x00\x00\x87\x01\xcf\x00\x9c\x00\x15\x01\x00\x00\x3a\x00\x95\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x19\x00\xbf\x00\x46\x01\x3b\x01\xec\x00\xa6\x00\x00\x00\x00\x00\x00\x00\xff\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8a\x00\x16\x01\x74\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x9b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x69\x00\x64\x00\x13\x01\x2d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x01\x59\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\xd6\xff\xd6\xff\xd6\xff\x00\x00\x00\x00\xcf\xff\x95\xff\xcc\xff\x00\x00\x00\x00\x00\x00\x00\x00\xbf\xff\x00\x00\x00\x00\x9f\xff\x9f\xff\x9f\xff\x00\x00\xae\xff\xac\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x9f\xff\x00\x00\x9b\xff\x99\xff\x97\xff\x95\xff\x00\x00\xde\xff\x94\xff\x00\x00\xda\xff\x00\x00\x95\xff\x00\x00\x9c\xff\x00\x00\x00\x00\x9e\xff\xd3\xff\xd2\xff\xd1\xff\xd0\xff\xa7\xff\xa8\xff\xa5\xff\xa4\xff\xa1\xff\x00\x00\xdd\xff\xdc\xff\xdb\xff\x00\x00\xa5\xff\x00\x00\x00\x00\x00\x00\xa9\xff\x00\x00\xab\xff\x00\x00\xac\xff\x00\x00\x00\x00\x00\x00\x9f\xff\x9c\xff\x00\x00\x00\x00\x00\x00\xb7\xff\xb6\xff\x00\x00\xb9\xff\x00\x00\x9f\xff\x00\x00\x00\x00\x00\x00\xbe\xff\xc1\xff\xc2\xff\xc3\xff\x00\x00\x00\x00\x00\x00\xc3\xff\x00\x00\x00\x00\x95\xff\x00\x00\x00\x00\xbf\xff\x00\x00\x00\x00\x00\x00\x97\xff\x00\x00\x00\x00\x00\x00\x99\xff\x00\x00\x00\x00\x00\x00\x00\x00\x9b\xff\x00\x00\xcc\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcf\xff\x00\x00\x00\x00\x95\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc7\xff\x00\x00\x00\x00\x00\x00\xbf\xff\x00\x00\x00\x00\x9f\xff\x00\x00\xb4\xff\x00\x00\x00\x00\x00\x00\x00\x00\xac\xff\x00\x00\x00\x00\x00\x00\x9f\xff\x9f\xff\x00\x00\x00\x00\x00\x00\x95\xff\x93\xff\x96\xff\x98\xff\x9a\xff\x9d\xff\xa6\xff\xa2\xff\xa3\xff\xa0\xff\xaa\xff\xad\xff\x00\x00\x9f\xff\x00\x00\xb5\xff\xb8\xff\xbb\xff\xbc\xff\xbd\xff\xc0\xff\xc8\xff\xc9\xff\x00\x00\xc5\xff\xca\xff\x00\x00\xcd\xff\x00\x00\xd4\xff\x00\x00\xd7\xff\xd8\xff\xd6\xff\xd9\xff\xd5\xff\x98\xff\xcb\xff\x00\x00\xb1\xff\xb3\xff\x00\x00\x00\x00\x00\x00\x9f\xff\x00\x00\xc6\xff\xb2\xff\x00\x00\x00\x00\x9f\xff\x9f\xff\xb0\xff\xaf\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x04\x00\x01\x00\x04\x00\x0b\x00\x01\x00\x04\x00\x04\x00\x14\x00\x0c\x00\x04\x00\x0a\x00\x04\x00\x04\x00\x04\x00\x04\x00\x0e\x00\x0e\x00\x0e\x00\x0f\x00\x0c\x00\x14\x00\x15\x00\x0c\x00\x0e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x26\x00\x1f\x00\x04\x00\x25\x00\x0a\x00\x25\x00\x21\x00\x09\x00\x26\x00\x24\x00\x25\x00\x10\x00\x25\x00\x04\x00\x25\x00\x25\x00\x04\x00\x25\x00\x04\x00\x04\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\x04\x00\x26\x00\x13\x00\x17\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x21\x00\x0b\x00\x20\x00\x21\x00\x04\x00\x0a\x00\x15\x00\x16\x00\x17\x00\x18\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x0d\x00\x20\x00\x21\x00\x24\x00\x04\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x16\x00\x17\x00\x18\x00\x13\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x20\x00\x21\x00\x03\x00\x1d\x00\x05\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x22\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x04\x00\x06\x00\x07\x00\x08\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x04\x00\x06\x00\x07\x00\x08\x00\x12\x00\x13\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x23\x00\x20\x00\x21\x00\x04\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x07\x00\x08\x00\x03\x00\x04\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x19\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\x1c\x00\x1d\x00\x1e\x00\x1f\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\x04\x00\x04\x00\x25\x00\x26\x00\x0a\x00\x15\x00\x16\x00\x17\x00\x18\x00\x24\x00\x04\x00\x1c\x00\x1d\x00\x1e\x00\x04\x00\x23\x00\x20\x00\x21\x00\x15\x00\x16\x00\x17\x00\x18\x00\x1c\x00\x1d\x00\x12\x00\x13\x00\x04\x00\x20\x00\x21\x00\x20\x00\x21\x00\x15\x00\x16\x00\x17\x00\x18\x00\x04\x00\x00\x00\x0a\x00\x04\x00\x03\x00\x04\x00\x04\x00\x20\x00\x21\x00\x16\x00\x17\x00\x18\x00\x22\x00\x15\x00\x19\x00\x18\x00\x0f\x00\x10\x00\x04\x00\x20\x00\x21\x00\x16\x00\x17\x00\x18\x00\x16\x00\x17\x00\x18\x00\x14\x00\x20\x00\x21\x00\x26\x00\x20\x00\x21\x00\x0d\x00\x20\x00\x21\x00\x16\x00\x17\x00\x18\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0b\x00\x08\x00\x20\x00\x21\x00\x04\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x04\x00\x12\x00\x13\x00\x05\x00\x0a\x00\x09\x00\x1c\x00\x25\x00\x15\x00\x16\x00\x17\x00\x12\x00\x00\x00\x12\x00\x1b\x00\x03\x00\x04\x00\x1c\x00\x1f\x00\x14\x00\x11\x00\x18\x00\x1c\x00\x00\x00\x25\x00\x26\x00\x03\x00\x04\x00\x10\x00\x11\x00\x00\x00\x0a\x00\x00\x00\x03\x00\x04\x00\x03\x00\x04\x00\x16\x00\x17\x00\x10\x00\x11\x00\x25\x00\x1b\x00\x25\x00\x0a\x00\x0f\x00\x10\x00\x0f\x00\x10\x00\x15\x00\x16\x00\x17\x00\x25\x00\x26\x00\x00\x00\x1b\x00\x00\x00\x03\x00\x04\x00\x03\x00\x04\x00\x04\x00\x16\x00\x17\x00\x0d\x00\x25\x00\x09\x00\x1b\x00\x16\x00\x17\x00\x10\x00\x1f\x00\x10\x00\x1b\x00\x0a\x00\x25\x00\x0b\x00\x25\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0a\x00\x25\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0a\x00\x0a\x00\x16\x00\x17\x00\x0a\x00\x02\x00\x0a\x00\x1b\x00\x21\x00\x22\x00\x23\x00\x24\x00\x25\x00\x09\x00\x21\x00\x25\x00\x1c\x00\x24\x00\x25\x00\x21\x00\x22\x00\x23\x00\x24\x00\x1f\x00\x25\x00\x02\x00\x15\x00\x15\x00\x06\x00\x20\x00\x25\x00\x0a\x00\x25\x00\x10\x00\x08\x00\x0b\x00\x26\x00\x26\x00\x1e\x00\x26\x00\x26\x00\x0b\x00\x07\x00\x0c\x00\x07\x00\x26\x00\x25\x00\x25\x00\x0a\x00\x26\x00\x26\x00\x08\x00\x26\x00\x26\x00\x0a\x00\x09\x00\x26\x00\x25\x00\x04\x00\x0b\x00\x01\x00\x06\x00\x06\x00\x26\x00\x04\x00\x26\x00\x26\x00\x26\x00\x10\x00\x21\x00\x25\x00\x25\x00\x1e\x00\x20\x00\x11\x00\x19\x00\x25\x00\x25\x00\xff\xff\xff\xff\xff\xff\xff\xff\x25\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x23\x00\x44\x00\x23\x00\x91\x00\x60\x00\x63\x00\x63\x00\x77\x00\xb4\x00\x23\x00\xae\xff\x23\x00\x23\x00\x63\x00\x23\x00\xb2\x00\x97\x00\x61\x00\x62\x00\x96\x00\xae\xff\xae\xff\x67\x00\x64\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x63\x00\xff\xff\xae\xff\x6c\x00\x68\x00\x32\x00\x99\x00\x23\x00\xb6\x00\xae\xff\x3a\x00\x26\x00\xce\xff\x82\x00\x29\x00\x68\x00\x24\x00\x48\x00\x68\x00\xc6\x00\x52\x00\xa2\x00\x41\x00\x33\x00\x34\x00\x35\x00\x3f\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x48\x00\xb3\x00\xce\xff\x53\x00\x49\x00\x32\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x2a\x00\xb7\x00\x4a\x00\x2c\x00\x76\x00\x32\x00\xa8\x00\x4f\x00\x4c\x00\x4d\x00\x8e\x00\x41\x00\x33\x00\x34\x00\x35\x00\x3f\x00\x78\x00\x4a\x00\x2c\x00\x7d\x00\x48\x00\x40\x00\x41\x00\x33\x00\x34\x00\x35\x00\x3f\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\xcc\x00\x4c\x00\x4d\x00\xc3\x00\x32\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x4a\x00\x2c\x00\x92\x00\xc4\x00\x93\x00\x32\x00\xc8\x00\x33\x00\x34\x00\x35\x00\x3f\x00\xc9\x00\x33\x00\x34\x00\x35\x00\x3f\x00\x79\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xbf\x00\x33\x00\x34\x00\x35\x00\x3f\x00\x32\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x52\x00\xba\x00\x73\x00\x71\x00\x32\x00\xc1\x00\x33\x00\x34\x00\x35\x00\x3f\x00\x29\x00\x72\x00\x73\x00\x71\x00\xab\x00\x55\x00\xa7\x00\x33\x00\x34\x00\x35\x00\x3f\x00\x8c\x00\x33\x00\x34\x00\x35\x00\x3f\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x7b\x00\x9d\x00\x2c\x00\x81\x00\x32\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x56\x00\x70\x00\x71\x00\x57\x00\x58\x00\x32\x00\x3e\x00\x33\x00\x34\x00\x35\x00\x3f\x00\x8a\x00\x33\x00\x34\x00\x35\x00\xa1\x00\xac\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x48\x00\x33\x00\x34\x00\x35\x00\x36\x00\x32\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x29\x00\x8d\x00\x48\x00\x26\x00\xff\xff\x32\x00\x87\x00\x4f\x00\x4c\x00\x4d\x00\x26\x00\x52\x00\x33\x00\x34\x00\x3a\x00\x48\x00\x27\x00\x4a\x00\x2c\x00\x8b\x00\x4f\x00\x4c\x00\x4d\x00\x3b\x00\x3c\x00\x7f\x00\x55\x00\x48\x00\x9e\x00\x2c\x00\x4a\x00\x2c\x00\x4e\x00\x4f\x00\x4c\x00\x4d\x00\x29\x00\x56\x00\xc4\xff\x48\x00\x57\x00\x5c\x00\x48\x00\x4a\x00\x2c\x00\xcd\x00\x4c\x00\x4d\x00\x28\x00\xc4\xff\x42\x00\x44\x00\xaa\x00\x5e\x00\x48\x00\x4a\x00\x2c\x00\xc7\x00\x4c\x00\x4d\x00\xc0\x00\x4c\x00\x4d\x00\x50\x00\x2b\x00\x2c\x00\xc4\xff\x4a\x00\x2c\x00\x65\x00\x4a\x00\x2c\x00\x4b\x00\x4c\x00\x4d\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x69\x00\x6e\x00\x4a\x00\x2c\x00\x52\x00\x32\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x6c\x00\x54\x00\x55\x00\x74\x00\x32\x00\x95\x00\x9f\x00\x26\x00\xba\xff\x46\x00\x47\x00\xcb\x00\x56\x00\xcc\x00\x48\x00\x57\x00\x58\x00\xa0\x00\xba\xff\xc5\x00\x70\x00\xc6\x00\x3d\x00\x56\x00\x26\x00\xba\xff\x57\x00\x58\x00\x59\x00\xaf\x00\x56\x00\xbc\x00\x56\x00\x57\x00\x5c\x00\x57\x00\x5c\x00\x46\x00\x47\x00\x59\x00\x5a\x00\x96\xff\x48\x00\x9a\xff\xbd\x00\xb1\x00\x5e\x00\x5d\x00\x5e\x00\xba\xff\x46\x00\x47\x00\x26\x00\xba\xff\x56\x00\x48\x00\x56\x00\x57\x00\x58\x00\x57\x00\x58\x00\x6c\x00\x46\x00\x47\x00\xbf\x00\x26\x00\x6d\x00\x48\x00\x46\x00\x47\x00\xad\x00\xba\xff\x5b\x00\x48\x00\xbe\x00\x26\x00\x91\x00\x26\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x9b\x00\x26\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xb5\x00\x9c\x00\x46\x00\x47\x00\x9d\x00\xa4\x00\x6b\x00\x48\x00\x23\x00\x38\x00\x39\x00\x3a\x00\x26\x00\xa5\x00\x23\x00\x26\x00\xa6\x00\x3a\x00\x26\x00\x23\x00\x38\x00\x39\x00\x3a\x00\xa7\x00\x26\x00\xaf\x00\xaa\x00\xb1\x00\xb9\x00\x6b\x00\x26\x00\xba\x00\x26\x00\x52\x00\x7d\x00\x7b\x00\xff\xff\xff\xff\x67\x00\xff\xff\xff\xff\x7f\x00\x84\x00\x81\x00\x85\x00\xff\xff\x26\x00\x26\x00\x86\x00\xff\xff\xff\xff\x87\x00\xff\xff\xff\xff\x89\x00\x8a\x00\xff\xff\x26\x00\x90\x00\x91\x00\x44\x00\x94\x00\x95\x00\xff\xff\x99\x00\xff\xff\xff\xff\xff\xff\x52\x00\x23\x00\x26\x00\x26\x00\x67\x00\x6b\x00\x70\x00\x76\x00\x26\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (33, 108) [
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
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
	(108 , happyReduce_108)
	]

happy_n_terms = 39 :: Int
happy_n_nonterms = 38 :: Int

happyReduce_33 = happySpecReduce_1  0# happyReduction_33
happyReduction_33 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn36
		 ((read ( happy_var_1)) :: Integer
	)}

happyReduce_34 = happySpecReduce_1  1# happyReduction_34
happyReduction_34 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn37
		 ((read ( happy_var_1)) :: Double
	)}

happyReduce_35 = happySpecReduce_1  2# happyReduction_35
happyReduction_35 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn38
		 (happy_var_1
	)}

happyReduce_36 = happySpecReduce_1  3# happyReduction_36
happyReduction_36 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn39
		 ((read ( happy_var_1)) :: Char
	)}

happyReduce_37 = happySpecReduce_1  4# happyReduction_37
happyReduction_37 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Id happy_var_1)) -> 
	happyIn40
		 (Id (happy_var_1)
	)}

happyReduce_38 = happyReduce 4# 5# happyReduction_38
happyReduction_38 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut40 happy_x_2 of { happy_var_2 -> 
	case happyOut42 happy_x_4 of { happy_var_4 -> 
	happyIn41
		 (AbsPascal.PProgram happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_39 = happySpecReduce_3  6# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut43 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_2 of { happy_var_2 -> 
	happyIn42
		 (AbsPascal.PBlock happy_var_1 happy_var_2
	)}}

happyReduce_40 = happySpecReduce_3  7# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_2 of { happy_var_2 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn43
		 (AbsPascal.PPart happy_var_1 happy_var_2 happy_var_3
	)}}}

happyReduce_41 = happySpecReduce_0  8# happyReduction_41
happyReduction_41  =  happyIn44
		 (AbsPascal.PPartConstEmpty
	)

happyReduce_42 = happyReduce 4# 8# happyReduction_42
happyReduction_42 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut70 happy_x_2 of { happy_var_2 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 (AbsPascal.PPartConst (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_43 = happySpecReduce_3  9# happyReduction_43
happyReduction_43 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn45
		 (AbsPascal.PConst happy_var_1 happy_var_3
	)}}

happyReduce_44 = happySpecReduce_1  10# happyReduction_44
happyReduction_44 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 (AbsPascal.PValInteger happy_var_1
	)}

happyReduce_45 = happySpecReduce_1  10# happyReduction_45
happyReduction_45 happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 (AbsPascal.PValDouble happy_var_1
	)}

happyReduce_46 = happySpecReduce_1  10# happyReduction_46
happyReduction_46 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 (AbsPascal.PValString happy_var_1
	)}

happyReduce_47 = happySpecReduce_1  10# happyReduction_47
happyReduction_47 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 (AbsPascal.PValChar happy_var_1
	)}

happyReduce_48 = happySpecReduce_0  11# happyReduction_48
happyReduction_48  =  happyIn47
		 (AbsPascal.PPartVarsEmpty
	)

happyReduce_49 = happyReduce 4# 11# happyReduction_49
happyReduction_49 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut71 happy_x_2 of { happy_var_2 -> 
	case happyOut48 happy_x_3 of { happy_var_3 -> 
	happyIn47
		 (AbsPascal.PPartVars (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_50 = happySpecReduce_3  12# happyReduction_50
happyReduction_50 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut73 happy_x_1 of { happy_var_1 -> 
	case happyOut40 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (AbsPascal.PVar happy_var_1 happy_var_3
	)}}

happyReduce_51 = happySpecReduce_0  13# happyReduction_51
happyReduction_51  =  happyIn49
		 (AbsPascal.PPartTypesEmpty
	)

happyReduce_52 = happyReduce 4# 13# happyReduction_52
happyReduction_52 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut72 happy_x_2 of { happy_var_2 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (AbsPascal.PPartTypes (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_53 = happySpecReduce_3  14# happyReduction_53
happyReduction_53 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	happyIn50
		 (AbsPascal.PType happy_var_1 happy_var_3
	)}}

happyReduce_54 = happySpecReduce_3  15# happyReduction_54
happyReduction_54 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut73 happy_x_2 of { happy_var_2 -> 
	happyIn51
		 (AbsPascal.PCustomTypeEnum happy_var_2
	)}

happyReduce_55 = happySpecReduce_3  15# happyReduction_55
happyReduction_55 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn51
		 (AbsPascal.PCustomTypeSubRange happy_var_1 happy_var_3
	)}}

happyReduce_56 = happySpecReduce_2  15# happyReduction_56
happyReduction_56 happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_2 of { happy_var_2 -> 
	happyIn51
		 (AbsPascal.PCustomTypePointer happy_var_2
	)}

happyReduce_57 = happyReduce 6# 15# happyReduction_57
happyReduction_57 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut53 happy_x_3 of { happy_var_3 -> 
	case happyOut40 happy_x_6 of { happy_var_6 -> 
	happyIn51
		 (AbsPascal.PTypeArray happy_var_3 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_58 = happySpecReduce_3  15# happyReduction_58
happyReduction_58 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut54 happy_x_2 of { happy_var_2 -> 
	happyIn51
		 (AbsPascal.PTypeRecord happy_var_2
	)}

happyReduce_59 = happySpecReduce_1  15# happyReduction_59
happyReduction_59 happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (AbsPascal.PCustomTypeId happy_var_1
	)}

happyReduce_60 = happySpecReduce_1  16# happyReduction_60
happyReduction_60 happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 (AbsPascal.PRangeTypeId happy_var_1
	)}

happyReduce_61 = happySpecReduce_1  16# happyReduction_61
happyReduction_61 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 (AbsPascal.PRangeTypeChar happy_var_1
	)}

happyReduce_62 = happySpecReduce_1  16# happyReduction_62
happyReduction_62 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 (AbsPascal.PRangeTypeInteger happy_var_1
	)}

happyReduce_63 = happySpecReduce_3  17# happyReduction_63
happyReduction_63 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 (AbsPascal.PTypeArrayLType happy_var_1 happy_var_3
	)}}

happyReduce_64 = happySpecReduce_0  18# happyReduction_64
happyReduction_64  =  happyIn54
		 ([]
	)

happyReduce_65 = happySpecReduce_1  18# happyReduction_65
happyReduction_65 happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 ((:[]) happy_var_1
	)}

happyReduce_66 = happySpecReduce_3  18# happyReduction_66
happyReduction_66 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn54
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_67 = happySpecReduce_3  19# happyReduction_67
happyReduction_67 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	happyIn55
		 (AbsPascal.PRecordFields happy_var_1 happy_var_3
	)}}

happyReduce_68 = happySpecReduce_3  20# happyReduction_68
happyReduction_68 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_2 of { happy_var_2 -> 
	happyIn56
		 (AbsPascal.PBody happy_var_2
	)}

happyReduce_69 = happySpecReduce_0  21# happyReduction_69
happyReduction_69  =  happyIn57
		 ([]
	)

happyReduce_70 = happySpecReduce_1  21# happyReduction_70
happyReduction_70 happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	happyIn57
		 ((:[]) happy_var_1
	)}

happyReduce_71 = happySpecReduce_3  21# happyReduction_71
happyReduction_71 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	case happyOut57 happy_x_3 of { happy_var_3 -> 
	happyIn57
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_72 = happySpecReduce_1  22# happyReduction_72
happyReduction_72 happy_x_1
	 =  case happyOut59 happy_x_1 of { happy_var_1 -> 
	happyIn58
		 (AbsPascal.PListSimpleInstruction happy_var_1
	)}

happyReduce_73 = happySpecReduce_1  22# happyReduction_73
happyReduction_73 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn58
		 (AbsPascal.PListCompositeInstruction happy_var_1
	)}

happyReduce_74 = happySpecReduce_3  23# happyReduction_74
happyReduction_74 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut68 happy_x_1 of { happy_var_1 -> 
	case happyOut63 happy_x_3 of { happy_var_3 -> 
	happyIn59
		 (AbsPascal.PSimpleInstructionAssignment happy_var_1 happy_var_3
	)}}

happyReduce_75 = happySpecReduce_2  23# happyReduction_75
happyReduction_75 happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	case happyOut61 happy_x_2 of { happy_var_2 -> 
	happyIn59
		 (AbsPascal.PSimpleInstructionProcFunc happy_var_1 happy_var_2
	)}}

happyReduce_76 = happyReduce 4# 24# happyReduction_76
happyReduction_76 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut63 happy_x_2 of { happy_var_2 -> 
	case happyOut58 happy_x_4 of { happy_var_4 -> 
	happyIn60
		 (AbsPascal.PCompositeInstructionIf happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_77 = happyReduce 6# 24# happyReduction_77
happyReduction_77 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut63 happy_x_2 of { happy_var_2 -> 
	case happyOut58 happy_x_4 of { happy_var_4 -> 
	case happyOut58 happy_x_6 of { happy_var_6 -> 
	happyIn60
		 (AbsPascal.PCompositeInstructionIfElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_78 = happyReduce 4# 24# happyReduction_78
happyReduction_78 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut57 happy_x_2 of { happy_var_2 -> 
	case happyOut63 happy_x_4 of { happy_var_4 -> 
	happyIn60
		 (AbsPascal.PCompositeInstructionRepeat happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_79 = happyReduce 8# 24# happyReduction_79
happyReduction_79 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut40 happy_x_2 of { happy_var_2 -> 
	case happyOut63 happy_x_4 of { happy_var_4 -> 
	case happyOut63 happy_x_6 of { happy_var_6 -> 
	case happyOut58 happy_x_8 of { happy_var_8 -> 
	happyIn60
		 (AbsPascal.PCompositeInstructionForTo happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_80 = happyReduce 8# 24# happyReduction_80
happyReduction_80 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut40 happy_x_2 of { happy_var_2 -> 
	case happyOut63 happy_x_4 of { happy_var_4 -> 
	case happyOut63 happy_x_6 of { happy_var_6 -> 
	case happyOut58 happy_x_8 of { happy_var_8 -> 
	happyIn60
		 (AbsPascal.PCompositeInstructionForDownTo happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_81 = happySpecReduce_0  25# happyReduction_81
happyReduction_81  =  happyIn61
		 (AbsPascal.PParamsEmpty
	)

happyReduce_82 = happySpecReduce_3  25# happyReduction_82
happyReduction_82 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut62 happy_x_2 of { happy_var_2 -> 
	happyIn61
		 (AbsPascal.PParms happy_var_2
	)}

happyReduce_83 = happySpecReduce_0  26# happyReduction_83
happyReduction_83  =  happyIn62
		 ([]
	)

happyReduce_84 = happySpecReduce_1  26# happyReduction_84
happyReduction_84 happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	happyIn62
		 ((:[]) happy_var_1
	)}

happyReduce_85 = happySpecReduce_3  26# happyReduction_85
happyReduction_85 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn62
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_86 = happySpecReduce_1  27# happyReduction_86
happyReduction_86 happy_x_1
	 =  case happyOut67 happy_x_1 of { happy_var_1 -> 
	happyIn63
		 (AbsPascal.PExpGeneral happy_var_1
	)}

happyReduce_87 = happySpecReduce_1  28# happyReduction_87
happyReduction_87 happy_x_1
	 =  case happyOut46 happy_x_1 of { happy_var_1 -> 
	happyIn64
		 (AbsPascal.PFactorLit happy_var_1
	)}

happyReduce_88 = happySpecReduce_1  28# happyReduction_88
happyReduction_88 happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn64
		 (AbsPascal.PFactorId happy_var_1
	)}

happyReduce_89 = happySpecReduce_3  28# happyReduction_89
happyReduction_89 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	case happyOut68 happy_x_3 of { happy_var_3 -> 
	happyIn64
		 (AbsPascal.PFactorAccId happy_var_1 happy_var_3
	)}}

happyReduce_90 = happySpecReduce_1  29# happyReduction_90
happyReduction_90 happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	happyIn65
		 (AbsPascal.PTermFactor happy_var_1
	)}

happyReduce_91 = happySpecReduce_1  30# happyReduction_91
happyReduction_91 happy_x_1
	 =  case happyOut65 happy_x_1 of { happy_var_1 -> 
	happyIn66
		 (AbsPascal.PSimpleExpTerm happy_var_1
	)}

happyReduce_92 = happySpecReduce_3  30# happyReduction_92
happyReduction_92 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	case happyOut64 happy_x_3 of { happy_var_3 -> 
	happyIn66
		 (AbsPascal.PSimpleExpAdd happy_var_1 happy_var_3
	)}}

happyReduce_93 = happySpecReduce_3  30# happyReduction_93
happyReduction_93 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	case happyOut64 happy_x_3 of { happy_var_3 -> 
	happyIn66
		 (AbsPascal.PSimpleExpMinus happy_var_1 happy_var_3
	)}}

happyReduce_94 = happySpecReduce_1  31# happyReduction_94
happyReduction_94 happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	happyIn67
		 (AbsPascal.PGeneralExpSimple happy_var_1
	)}

happyReduce_95 = happySpecReduce_3  31# happyReduction_95
happyReduction_95 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut67 happy_x_1 of { happy_var_1 -> 
	case happyOut67 happy_x_3 of { happy_var_3 -> 
	happyIn67
		 (AbsPascal.PGeneralExpEqual happy_var_1 happy_var_3
	)}}

happyReduce_96 = happySpecReduce_0  32# happyReduction_96
happyReduction_96  =  happyIn68
		 ([]
	)

happyReduce_97 = happySpecReduce_1  32# happyReduction_97
happyReduction_97 happy_x_1
	 =  case happyOut69 happy_x_1 of { happy_var_1 -> 
	happyIn68
		 ((:[]) happy_var_1
	)}

happyReduce_98 = happySpecReduce_3  32# happyReduction_98
happyReduction_98 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut69 happy_x_1 of { happy_var_1 -> 
	case happyOut68 happy_x_3 of { happy_var_3 -> 
	happyIn68
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_99 = happySpecReduce_1  33# happyReduction_99
happyReduction_99 happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn69
		 (AbsPascal.PAccId happy_var_1
	)}

happyReduce_100 = happySpecReduce_0  34# happyReduction_100
happyReduction_100  =  happyIn70
		 ([]
	)

happyReduce_101 = happySpecReduce_3  34# happyReduction_101
happyReduction_101 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut70 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_2 of { happy_var_2 -> 
	happyIn70
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_102 = happySpecReduce_0  35# happyReduction_102
happyReduction_102  =  happyIn71
		 ([]
	)

happyReduce_103 = happySpecReduce_3  35# happyReduction_103
happyReduction_103 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut71 happy_x_1 of { happy_var_1 -> 
	case happyOut48 happy_x_2 of { happy_var_2 -> 
	happyIn71
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_104 = happySpecReduce_0  36# happyReduction_104
happyReduction_104  =  happyIn72
		 ([]
	)

happyReduce_105 = happySpecReduce_3  36# happyReduction_105
happyReduction_105 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut72 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_2 of { happy_var_2 -> 
	happyIn72
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_106 = happySpecReduce_0  37# happyReduction_106
happyReduction_106  =  happyIn73
		 ([]
	)

happyReduce_107 = happySpecReduce_1  37# happyReduction_107
happyReduction_107 happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn73
		 ((:[]) happy_var_1
	)}

happyReduce_108 = happySpecReduce_3  37# happyReduction_108
happyReduction_108 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	case happyOut73 happy_x_3 of { happy_var_3 -> 
	happyIn73
		 ((:) happy_var_1 happy_var_3
	)}}

happyNewToken action sts stk [] =
	happyDoAction 38# notHappyAtAll action sts stk []

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
	PT _ (TI happy_dollar_dollar) -> cont 33#;
	PT _ (TD happy_dollar_dollar) -> cont 34#;
	PT _ (TL happy_dollar_dollar) -> cont 35#;
	PT _ (TC happy_dollar_dollar) -> cont 36#;
	PT _ (T_Id happy_dollar_dollar) -> cont 37#;
	_ -> happyError' (tk:tks)
	}

happyError_ 38# tk tks = happyError' tks
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
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut41 x))

pBlock tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut42 x))

pParts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut43 x))

pConsts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut44 x))

pConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (happyOut45 x))

pLiteral tks = happySomeParser where
  happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (happyOut46 x))

pVars tks = happySomeParser where
  happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (happyOut47 x))

pVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (happyOut48 x))

pTypes tks = happySomeParser where
  happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (happyOut49 x))

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (happyOut50 x))

pCustomType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (happyOut51 x))

pRangeType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (happyOut52 x))

pArrType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (happyOut53 x))

pListFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 13# tks) (\x -> happyReturn (happyOut54 x))

pFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 14# tks) (\x -> happyReturn (happyOut55 x))

pBody tks = happySomeParser where
  happySomeParser = happyThen (happyParse 15# tks) (\x -> happyReturn (happyOut56 x))

pListInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 16# tks) (\x -> happyReturn (happyOut57 x))

pInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 17# tks) (\x -> happyReturn (happyOut58 x))

pSimpleInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 18# tks) (\x -> happyReturn (happyOut59 x))

pCompositeInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 19# tks) (\x -> happyReturn (happyOut60 x))

pParms tks = happySomeParser where
  happySomeParser = happyThen (happyParse 20# tks) (\x -> happyReturn (happyOut61 x))

pListExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 21# tks) (\x -> happyReturn (happyOut62 x))

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 22# tks) (\x -> happyReturn (happyOut63 x))

pFactor tks = happySomeParser where
  happySomeParser = happyThen (happyParse 23# tks) (\x -> happyReturn (happyOut64 x))

pTerm tks = happySomeParser where
  happySomeParser = happyThen (happyParse 24# tks) (\x -> happyReturn (happyOut65 x))

pSimpleExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 25# tks) (\x -> happyReturn (happyOut66 x))

pExpGral tks = happySomeParser where
  happySomeParser = happyThen (happyParse 26# tks) (\x -> happyReturn (happyOut67 x))

pListAccId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 27# tks) (\x -> happyReturn (happyOut68 x))

pAccId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 28# tks) (\x -> happyReturn (happyOut69 x))

pListConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 29# tks) (\x -> happyReturn (happyOut70 x))

pListVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 30# tks) (\x -> happyReturn (happyOut71 x))

pListType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 31# tks) (\x -> happyReturn (happyOut72 x))

pListId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 32# tks) (\x -> happyReturn (happyOut73 x))

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
