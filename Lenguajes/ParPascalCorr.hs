{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParPascalCorr where
import AbsPascalCorr
import LexPascalCorr
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
happyIn29 :: (Integer) -> (HappyAbsSyn )
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> (Integer)
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: (Double) -> (HappyAbsSyn )
happyIn30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn ) -> (Double)
happyOut30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: (String) -> (HappyAbsSyn )
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> (String)
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: (Char) -> (HappyAbsSyn )
happyIn32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> (Char)
happyOut32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: (Id) -> (HappyAbsSyn )
happyIn33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn ) -> (Id)
happyOut33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: (Program) -> (HappyAbsSyn )
happyIn34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn ) -> (Program)
happyOut34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: (Block) -> (HappyAbsSyn )
happyIn35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> (Block)
happyOut35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (Parts) -> (HappyAbsSyn )
happyIn36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (Parts)
happyOut36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (Consts) -> (HappyAbsSyn )
happyIn37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> (Consts)
happyOut37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (Const) -> (HappyAbsSyn )
happyIn38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (Const)
happyOut38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (Literal) -> (HappyAbsSyn )
happyIn39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (Literal)
happyOut39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: (Vars) -> (HappyAbsSyn )
happyIn40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> (Vars)
happyOut40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut40 #-}
happyIn41 :: (Var) -> (HappyAbsSyn )
happyIn41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn ) -> (Var)
happyOut41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut41 #-}
happyIn42 :: (Types) -> (HappyAbsSyn )
happyIn42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn ) -> (Types)
happyOut42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut42 #-}
happyIn43 :: (Type) -> (HappyAbsSyn )
happyIn43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> (Type)
happyOut43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyIn44 :: (CustomType) -> (HappyAbsSyn )
happyIn44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn ) -> (CustomType)
happyOut44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut44 #-}
happyIn45 :: (RangeType) -> (HappyAbsSyn )
happyIn45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn45 #-}
happyOut45 :: (HappyAbsSyn ) -> (RangeType)
happyOut45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut45 #-}
happyIn46 :: (ArrType) -> (HappyAbsSyn )
happyIn46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn46 #-}
happyOut46 :: (HappyAbsSyn ) -> (ArrType)
happyOut46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut46 #-}
happyIn47 :: ([Fields]) -> (HappyAbsSyn )
happyIn47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn47 #-}
happyOut47 :: (HappyAbsSyn ) -> ([Fields])
happyOut47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut47 #-}
happyIn48 :: (Fields) -> (HappyAbsSyn )
happyIn48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn48 #-}
happyOut48 :: (HappyAbsSyn ) -> (Fields)
happyOut48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut48 #-}
happyIn49 :: (Body) -> (HappyAbsSyn )
happyIn49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn49 #-}
happyOut49 :: (HappyAbsSyn ) -> (Body)
happyOut49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut49 #-}
happyIn50 :: ([Instruction]) -> (HappyAbsSyn )
happyIn50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn50 #-}
happyOut50 :: (HappyAbsSyn ) -> ([Instruction])
happyOut50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut50 #-}
happyIn51 :: (Instruction) -> (HappyAbsSyn )
happyIn51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn51 #-}
happyOut51 :: (HappyAbsSyn ) -> (Instruction)
happyOut51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut51 #-}
happyIn52 :: (SimpleInstruction) -> (HappyAbsSyn )
happyIn52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn52 #-}
happyOut52 :: (HappyAbsSyn ) -> (SimpleInstruction)
happyOut52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut52 #-}
happyIn53 :: (Parms) -> (HappyAbsSyn )
happyIn53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn53 #-}
happyOut53 :: (HappyAbsSyn ) -> (Parms)
happyOut53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut53 #-}
happyIn54 :: ([Exps]) -> (HappyAbsSyn )
happyIn54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn ) -> ([Exps])
happyOut54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyIn55 :: (Exps) -> (HappyAbsSyn )
happyIn55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn55 #-}
happyOut55 :: (HappyAbsSyn ) -> (Exps)
happyOut55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut55 #-}
happyIn56 :: ([Const]) -> (HappyAbsSyn )
happyIn56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn ) -> ([Const])
happyOut56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: ([Var]) -> (HappyAbsSyn )
happyIn57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn ) -> ([Var])
happyOut57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyIn58 :: ([Type]) -> (HappyAbsSyn )
happyIn58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn58 #-}
happyOut58 :: (HappyAbsSyn ) -> ([Type])
happyOut58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut58 #-}
happyIn59 :: ([Id]) -> (HappyAbsSyn )
happyIn59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn59 #-}
happyOut59 :: (HappyAbsSyn ) -> ([Id])
happyOut59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut59 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\xed\x00\xeb\x00\xeb\x00\xeb\x00\xe7\x00\x91\x00\xe6\x00\xe4\x00\xe5\x00\xe2\x00\x27\x00\x8c\x00\x8c\x00\xe2\x00\xe2\x00\xe1\x00\xde\x00\xde\x00\xde\x00\xe3\x00\x89\x00\x89\x00\x00\x00\x00\x00\x00\x00\xdd\x00\xdf\x00\x00\x00\xe0\x00\xdb\x00\x00\x00\x99\x00\x99\x00\x99\x00\x00\x00\x00\x00\x00\x00\xdb\x00\x00\x00\xdb\x00\xdc\x00\xd9\x00\x89\x00\x51\x00\xd9\x00\xd9\x00\x00\x00\xd9\x00\xda\x00\xd8\x00\xd4\x00\xd7\x00\xd2\x00\xd2\x00\xd6\x00\x00\x00\x00\x00\x00\x00\xd5\x00\xd1\x00\x00\x00\xd1\x00\x3a\x00\xd1\x00\xd3\x00\xd0\x00\xd0\x00\xcf\x00\xcd\x00\xce\x00\xcb\x00\xcb\x00\x00\x00\xcb\x00\xcc\x00\xc6\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc6\x00\x00\x00\xca\x00\xc5\x00\xc5\x00\x00\x00\xc5\x00\xc2\x00\xc1\x00\xc3\x00\xc0\x00\xb6\x00\xc7\x00\xc9\x00\xbf\x00\xb2\x00\x91\x00\xb2\x00\xb2\x00\xb2\x00\x27\x00\xbe\x00\x84\x00\x00\x00\xc8\x00\x84\x00\x84\x00\xaf\x00\x27\x00\xbb\x00\xae\x00\x00\x00\x7d\x00\xc4\x00\x7d\x00\xbd\x00\xbc\x00\xba\x00\xad\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb8\x00\x00\x00\x00\x00\xb9\x00\x00\x00\xb7\x00\x00\x00\xb3\x00\x00\x00\x00\x00\xb1\x00\x00\x00\xa4\x00\x08\x00\xa3\x00\xab\x00\xa0\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\xb4\x00\xa8\x00\xaa\x00\xb0\x00\x7a\x00\x8a\x00\xac\x00\x13\x00\xa9\x00\x8e\x00\x63\x00\x74\x00\x4b\x00\x6d\x00\x72\x00\xa1\x00\x31\x00\x25\x00\x22\x00\x7e\x00\x07\x00\x0d\x00\x85\x00\x88\x00\x7b\x00\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8d\x00\x10\x00\x79\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x76\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0f\x00\x77\x00\x00\x00\x67\x00\x00\x00\x00\x00\x00\x00\x64\x00\x00\x00\x00\x00\x00\x00\x48\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x42\x00\x00\x00\x1e\x00\x00\x00\x56\x00\x00\x00\x53\x00\x00\x00\x00\x00\x17\x00\x4d\x00\x86\x00\x0c\x00\x15\x00\x8b\x00\x5e\x00\x00\x00\x49\x00\x00\x00\x00\x00\x6c\x00\x65\x00\x2c\x00\x50\x00\x00\x00\x21\x00\x00\x00\x0a\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x0e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa5\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xfe\xff\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\xdd\xff\xdd\xff\xdd\xff\x00\x00\x00\x00\xd6\xff\xad\xff\xd3\xff\x00\x00\x00\x00\x00\x00\x00\x00\xc6\xff\x00\x00\x00\x00\xc1\xff\x00\x00\x00\x00\xbb\xff\xb9\xff\x00\x00\xb3\xff\xb1\xff\xaf\xff\xad\xff\x00\x00\xe5\xff\xac\xff\x00\x00\xe1\xff\x00\x00\xad\xff\x00\x00\xb4\xff\xb6\xff\xb5\xff\x00\x00\xe3\xff\x00\x00\xb8\xff\x00\x00\xb9\xff\xbb\xff\x00\x00\x00\x00\xbe\xff\x00\x00\xc0\xff\x00\x00\xc1\xff\x00\x00\x00\x00\x00\x00\xc5\xff\xc8\xff\xc9\xff\xca\xff\x00\x00\x00\x00\xe2\xff\x00\x00\xca\xff\x00\x00\x00\x00\xad\xff\x00\x00\x00\x00\xc6\xff\x00\x00\x00\x00\x00\x00\xaf\xff\x00\x00\x00\x00\x00\x00\xb1\xff\xda\xff\xd9\xff\xd8\xff\xd7\xff\x00\x00\xe4\xff\x00\x00\x00\x00\x00\x00\xb3\xff\x00\x00\xd3\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd6\xff\x00\x00\x00\x00\xad\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xce\xff\x00\x00\x00\x00\x00\x00\xc6\xff\x00\x00\x00\x00\xc1\xff\xbc\xff\x00\x00\x00\x00\xb9\xff\x00\x00\x00\x00\x00\x00\xad\xff\xab\xff\xae\xff\xb0\xff\xb2\xff\xb7\xff\xba\xff\xbd\xff\xbf\xff\xc2\xff\xc3\xff\xc4\xff\xc7\xff\xcf\xff\xd0\xff\x00\x00\xcc\xff\xd1\xff\x00\x00\xd4\xff\x00\x00\xdb\xff\x00\x00\xde\xff\xdf\xff\xdd\xff\xe0\xff\xdc\xff\xb0\xff\xd2\xff\x00\x00\x00\x00\xcd\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x00\x00\x04\x00\x02\x00\x00\x00\x04\x00\x02\x00\x00\x00\x04\x00\x02\x00\x00\x00\x04\x00\x02\x00\x00\x00\x04\x00\x02\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x0e\x00\x04\x00\x0c\x00\x04\x00\x19\x00\x1a\x00\x0c\x00\x19\x00\x1a\x00\x0c\x00\x19\x00\x1a\x00\x0b\x00\x1b\x00\x1a\x00\x04\x00\x04\x00\x1a\x00\x01\x00\x04\x00\x1e\x00\x0d\x00\x1e\x00\x1e\x00\x1e\x00\x1e\x00\x04\x00\x1e\x00\x04\x00\x0c\x00\x0d\x00\x04\x00\x15\x00\x16\x00\x17\x00\x17\x00\x13\x00\x16\x00\x17\x00\x16\x00\x12\x00\x13\x00\x19\x00\x1a\x00\x08\x00\x15\x00\x16\x00\x17\x00\x15\x00\x16\x00\x17\x00\x00\x00\x10\x00\x00\x00\x03\x00\x04\x00\x03\x00\x04\x00\x00\x00\x04\x00\x01\x00\x03\x00\x04\x00\x1b\x00\x09\x00\x04\x00\x07\x00\x10\x00\x11\x00\x10\x00\x11\x00\x1b\x00\x00\x00\x0f\x00\x10\x00\x03\x00\x04\x00\x00\x00\x1c\x00\x00\x00\x03\x00\x04\x00\x03\x00\x04\x00\x14\x00\x04\x00\x00\x00\x0f\x00\x10\x00\x03\x00\x04\x00\x04\x00\x0f\x00\x10\x00\x00\x00\x10\x00\x04\x00\x03\x00\x04\x00\x12\x00\x13\x00\x04\x00\x10\x00\x04\x00\x04\x00\x12\x00\x13\x00\x1d\x00\x09\x00\x09\x00\x10\x00\x13\x00\x00\x00\x01\x00\x02\x00\x03\x00\x00\x00\x01\x00\x02\x00\x03\x00\x18\x00\x04\x00\x0a\x00\x04\x00\x04\x00\x16\x00\x0a\x00\x18\x00\x18\x00\x1a\x00\x1d\x00\x0e\x00\x16\x00\x0e\x00\x0e\x00\x19\x00\x1a\x00\x16\x00\x1b\x00\x18\x00\x16\x00\x1a\x00\x1c\x00\x19\x00\x1a\x00\x16\x00\x17\x00\x18\x00\x19\x00\x06\x00\x07\x00\x08\x00\x06\x00\x07\x00\x08\x00\x07\x00\x08\x00\x1a\x00\x1b\x00\x14\x00\x0d\x00\x0b\x00\x08\x00\x05\x00\x1a\x00\x08\x00\x11\x00\x1a\x00\x1a\x00\x08\x00\x0f\x00\x08\x00\x08\x00\x0b\x00\x08\x00\x08\x00\x02\x00\x1a\x00\x1a\x00\x1a\x00\x02\x00\x10\x00\x1a\x00\x04\x00\x10\x00\x08\x00\x1a\x00\x0e\x00\x06\x00\x09\x00\x15\x00\xff\xff\x14\x00\x09\x00\x05\x00\x0a\x00\x05\x00\x1b\x00\x1b\x00\x06\x00\x08\x00\x03\x00\x1b\x00\x1b\x00\x08\x00\x03\x00\x01\x00\xff\xff\x1b\x00\x1a\x00\xff\xff\xff\xff\x1a\x00\xff\xff\x1b\x00\x1b\x00\x1a\x00\x0e\x00\xff\xff\xff\xff\xff\xff\x1b\x00\x1b\x00\x16\x00\x1b\x00\x1a\x00\x1a\x00\x14\x00\x0f\x00\x15\x00\x1a\x00\xff\xff\x1a\x00\x12\x00\xff\xff\x1a\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x22\x00\x97\x00\x23\x00\x22\x00\x24\x00\x23\x00\x22\x00\x24\x00\x23\x00\x22\x00\x24\x00\x23\x00\x22\x00\x24\x00\x23\x00\x1c\x00\x24\x00\x1c\x00\x1c\x00\x1c\x00\x1c\x00\xd5\xff\x1c\x00\x8b\x00\x8a\x00\x7c\x00\x28\x00\x75\x00\x72\x00\x28\x00\x49\x00\x27\x00\x28\x00\x8e\x00\xd5\xff\x7e\x00\x2b\x00\x2b\x00\x25\x00\x42\x00\x2b\x00\x4a\x00\x5f\x00\x78\x00\x69\x00\x4a\x00\x1d\x00\x33\x00\x4a\x00\x2b\x00\x43\x00\x44\x00\x2b\x00\x7f\x00\x30\x00\x2e\x00\x2c\x00\x45\x00\x2d\x00\x2e\x00\x1c\x00\x82\x00\x36\x00\x3d\x00\x1f\x00\xcb\xff\x6e\x00\x30\x00\x2e\x00\x2f\x00\x30\x00\x2e\x00\x37\x00\xcb\xff\x37\x00\x38\x00\x39\x00\x38\x00\x39\x00\x37\x00\x53\x00\x2b\x00\x38\x00\x3e\x00\xcb\xff\x8d\x00\x5d\x00\x72\x00\x3a\x00\x86\x00\x3a\x00\x3b\x00\x60\x00\x37\x00\x81\x00\x40\x00\x38\x00\x3e\x00\x37\x00\x62\x00\x37\x00\x38\x00\x3e\x00\x38\x00\x39\x00\x5e\x00\x33\x00\x37\x00\x88\x00\x40\x00\x38\x00\x39\x00\x33\x00\x3f\x00\x40\x00\x37\x00\x83\x00\x33\x00\x38\x00\x39\x00\x66\x00\x36\x00\x68\x00\x84\x00\x53\x00\x53\x00\x35\x00\x36\x00\x64\x00\x74\x00\x54\x00\x3d\x00\x34\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x4d\x00\x4e\x00\x4f\x00\x50\x00\x70\x00\x45\x00\x8c\x00\x45\x00\x45\x00\x1c\x00\x51\x00\x27\x00\x29\x00\x1f\x00\x1f\x00\x89\x00\x1c\x00\x76\x00\x46\x00\x3d\x00\x1f\x00\x1c\x00\x21\x00\x27\x00\x1c\x00\x1f\x00\x20\x00\x3d\x00\x1f\x00\x1c\x00\x53\x00\x27\x00\x3d\x00\x91\x00\x5a\x00\x58\x00\x59\x00\x5a\x00\x58\x00\x57\x00\x58\x00\x1f\x00\xff\xff\x31\x00\x47\x00\x4b\x00\x55\x00\x5b\x00\x1f\x00\x93\x00\x97\x00\xae\xff\xb2\xff\x94\x00\x57\x00\x95\x00\x7a\x00\x96\x00\x7b\x00\x7c\x00\x7e\x00\x1f\x00\x1f\x00\x1f\x00\x86\x00\x81\x00\x1f\x00\x90\x00\x88\x00\x91\x00\x1f\x00\x33\x00\x64\x00\x62\x00\x4d\x00\x00\x00\x49\x00\x66\x00\x6b\x00\x68\x00\x6c\x00\xff\xff\xff\xff\x6e\x00\x6d\x00\x74\x00\xff\xff\xff\xff\x70\x00\x78\x00\x2b\x00\x00\x00\xff\xff\x1f\x00\x00\x00\x00\x00\x1f\x00\x00\x00\xff\xff\xff\xff\x1f\x00\x33\x00\x00\x00\x00\x00\x00\x00\xff\xff\xff\xff\x1c\x00\xff\xff\x1f\x00\x1f\x00\x49\x00\x57\x00\x4d\x00\x1f\x00\x00\x00\x1f\x00\x5d\x00\x00\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (26, 84) [
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
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
	(84 , happyReduce_84)
	]

happy_n_terms = 28 :: Int
happy_n_nonterms = 31 :: Int

happyReduce_26 = happySpecReduce_1  0# happyReduction_26
happyReduction_26 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn29
		 ((read ( happy_var_1)) :: Integer
	)}

happyReduce_27 = happySpecReduce_1  1# happyReduction_27
happyReduction_27 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn30
		 ((read ( happy_var_1)) :: Double
	)}

happyReduce_28 = happySpecReduce_1  2# happyReduction_28
happyReduction_28 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn31
		 (happy_var_1
	)}

happyReduce_29 = happySpecReduce_1  3# happyReduction_29
happyReduction_29 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn32
		 ((read ( happy_var_1)) :: Char
	)}

happyReduce_30 = happySpecReduce_1  4# happyReduction_30
happyReduction_30 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Id happy_var_1)) -> 
	happyIn33
		 (Id (happy_var_1)
	)}

happyReduce_31 = happyReduce 4# 5# happyReduction_31
happyReduction_31 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut33 happy_x_2 of { happy_var_2 -> 
	case happyOut35 happy_x_4 of { happy_var_4 -> 
	happyIn34
		 (AbsPascalCorr.PProgram happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_32 = happySpecReduce_3  6# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_2 of { happy_var_2 -> 
	happyIn35
		 (AbsPascalCorr.PBlock happy_var_1 happy_var_2
	)}}

happyReduce_33 = happySpecReduce_3  7# happyReduction_33
happyReduction_33 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	case happyOut42 happy_x_2 of { happy_var_2 -> 
	case happyOut40 happy_x_3 of { happy_var_3 -> 
	happyIn36
		 (AbsPascalCorr.PPart happy_var_1 happy_var_2 happy_var_3
	)}}}

happyReduce_34 = happySpecReduce_0  8# happyReduction_34
happyReduction_34  =  happyIn37
		 (AbsPascalCorr.PPartConstEmpty
	)

happyReduce_35 = happyReduce 4# 8# happyReduction_35
happyReduction_35 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut56 happy_x_2 of { happy_var_2 -> 
	case happyOut38 happy_x_3 of { happy_var_3 -> 
	happyIn37
		 (AbsPascalCorr.PPartConst (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_36 = happySpecReduce_3  9# happyReduction_36
happyReduction_36 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	case happyOut39 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (AbsPascalCorr.PConst happy_var_1 happy_var_3
	)}}

happyReduce_37 = happySpecReduce_1  10# happyReduction_37
happyReduction_37 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn39
		 (AbsPascalCorr.PValInteger happy_var_1
	)}

happyReduce_38 = happySpecReduce_1  10# happyReduction_38
happyReduction_38 happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	happyIn39
		 (AbsPascalCorr.PValDouble happy_var_1
	)}

happyReduce_39 = happySpecReduce_1  10# happyReduction_39
happyReduction_39 happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	happyIn39
		 (AbsPascalCorr.PValString happy_var_1
	)}

happyReduce_40 = happySpecReduce_1  10# happyReduction_40
happyReduction_40 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn39
		 (AbsPascalCorr.PValChar happy_var_1
	)}

happyReduce_41 = happySpecReduce_0  11# happyReduction_41
happyReduction_41  =  happyIn40
		 (AbsPascalCorr.PPartVarsEmpty
	)

happyReduce_42 = happyReduce 4# 11# happyReduction_42
happyReduction_42 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut57 happy_x_2 of { happy_var_2 -> 
	case happyOut41 happy_x_3 of { happy_var_3 -> 
	happyIn40
		 (AbsPascalCorr.PPartVars (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_43 = happySpecReduce_3  12# happyReduction_43
happyReduction_43 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut59 happy_x_1 of { happy_var_1 -> 
	case happyOut33 happy_x_3 of { happy_var_3 -> 
	happyIn41
		 (AbsPascalCorr.PVar happy_var_1 happy_var_3
	)}}

happyReduce_44 = happySpecReduce_0  13# happyReduction_44
happyReduction_44  =  happyIn42
		 (AbsPascalCorr.PPartTypesEmpty
	)

happyReduce_45 = happyReduce 4# 13# happyReduction_45
happyReduction_45 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut58 happy_x_2 of { happy_var_2 -> 
	case happyOut43 happy_x_3 of { happy_var_3 -> 
	happyIn42
		 (AbsPascalCorr.PPartTypes (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_46 = happySpecReduce_3  14# happyReduction_46
happyReduction_46 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	case happyOut44 happy_x_3 of { happy_var_3 -> 
	happyIn43
		 (AbsPascalCorr.PType happy_var_1 happy_var_3
	)}}

happyReduce_47 = happySpecReduce_3  15# happyReduction_47
happyReduction_47 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut59 happy_x_2 of { happy_var_2 -> 
	happyIn44
		 (AbsPascalCorr.PCustomTypeEnum happy_var_2
	)}

happyReduce_48 = happySpecReduce_3  15# happyReduction_48
happyReduction_48 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 (AbsPascalCorr.PCustomTypeSubRange happy_var_1 happy_var_3
	)}}

happyReduce_49 = happySpecReduce_2  15# happyReduction_49
happyReduction_49 happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_2 of { happy_var_2 -> 
	happyIn44
		 (AbsPascalCorr.PCustomTypePointer happy_var_2
	)}

happyReduce_50 = happyReduce 6# 15# happyReduction_50
happyReduction_50 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut46 happy_x_3 of { happy_var_3 -> 
	case happyOut33 happy_x_6 of { happy_var_6 -> 
	happyIn44
		 (AbsPascalCorr.PTypeArray happy_var_3 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_51 = happySpecReduce_3  15# happyReduction_51
happyReduction_51 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_2 of { happy_var_2 -> 
	happyIn44
		 (AbsPascalCorr.PTypeRecord happy_var_2
	)}

happyReduce_52 = happySpecReduce_1  15# happyReduction_52
happyReduction_52 happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn44
		 (AbsPascalCorr.PCustomTypeId happy_var_1
	)}

happyReduce_53 = happySpecReduce_1  16# happyReduction_53
happyReduction_53 happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 (AbsPascalCorr.PRangeTypeId happy_var_1
	)}

happyReduce_54 = happySpecReduce_1  16# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 (AbsPascalCorr.PRangeTypeChar happy_var_1
	)}

happyReduce_55 = happySpecReduce_1  16# happyReduction_55
happyReduction_55 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 (AbsPascalCorr.PRangeTypeInteger happy_var_1
	)}

happyReduce_56 = happySpecReduce_3  17# happyReduction_56
happyReduction_56 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 (AbsPascalCorr.PTypeArrayLType happy_var_1 happy_var_3
	)}}

happyReduce_57 = happySpecReduce_0  18# happyReduction_57
happyReduction_57  =  happyIn47
		 ([]
	)

happyReduce_58 = happySpecReduce_1  18# happyReduction_58
happyReduction_58 happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	happyIn47
		 ((:[]) happy_var_1
	)}

happyReduce_59 = happySpecReduce_3  18# happyReduction_59
happyReduction_59 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn47
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_60 = happySpecReduce_3  19# happyReduction_60
happyReduction_60 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	case happyOut44 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (AbsPascalCorr.PRecordFields happy_var_1 happy_var_3
	)}}

happyReduce_61 = happySpecReduce_3  20# happyReduction_61
happyReduction_61 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut50 happy_x_2 of { happy_var_2 -> 
	happyIn49
		 (AbsPascalCorr.PBody happy_var_2
	)}

happyReduce_62 = happySpecReduce_0  21# happyReduction_62
happyReduction_62  =  happyIn50
		 ([]
	)

happyReduce_63 = happySpecReduce_1  21# happyReduction_63
happyReduction_63 happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 ((:[]) happy_var_1
	)}

happyReduce_64 = happySpecReduce_3  21# happyReduction_64
happyReduction_64 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn50
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_65 = happySpecReduce_1  22# happyReduction_65
happyReduction_65 happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (AbsPascalCorr.PListSimpleInstruction happy_var_1
	)}

happyReduce_66 = happySpecReduce_3  23# happyReduction_66
happyReduction_66 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	case happyOut55 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (AbsPascalCorr.PSimpleInstructionAssignment happy_var_1 happy_var_3
	)}}

happyReduce_67 = happySpecReduce_2  23# happyReduction_67
happyReduction_67 happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	case happyOut53 happy_x_2 of { happy_var_2 -> 
	happyIn52
		 (AbsPascalCorr.PSimpleInstructionProcFunc happy_var_1 happy_var_2
	)}}

happyReduce_68 = happySpecReduce_0  24# happyReduction_68
happyReduction_68  =  happyIn53
		 (AbsPascalCorr.PParamsEmpty
	)

happyReduce_69 = happySpecReduce_3  24# happyReduction_69
happyReduction_69 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut54 happy_x_2 of { happy_var_2 -> 
	happyIn53
		 (AbsPascalCorr.PParms happy_var_2
	)}

happyReduce_70 = happySpecReduce_0  25# happyReduction_70
happyReduction_70  =  happyIn54
		 ([]
	)

happyReduce_71 = happySpecReduce_1  25# happyReduction_71
happyReduction_71 happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 ((:[]) happy_var_1
	)}

happyReduce_72 = happySpecReduce_3  25# happyReduction_72
happyReduction_72 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn54
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_73 = happySpecReduce_1  26# happyReduction_73
happyReduction_73 happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (AbsPascalCorr.PFactorString happy_var_1
	)}

happyReduce_74 = happySpecReduce_1  26# happyReduction_74
happyReduction_74 happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (AbsPascalCorr.PFactorId happy_var_1
	)}

happyReduce_75 = happySpecReduce_1  26# happyReduction_75
happyReduction_75 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 (AbsPascalCorr.PFactorInteger happy_var_1
	)}

happyReduce_76 = happySpecReduce_0  27# happyReduction_76
happyReduction_76  =  happyIn56
		 ([]
	)

happyReduce_77 = happySpecReduce_3  27# happyReduction_77
happyReduction_77 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn56
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_78 = happySpecReduce_0  28# happyReduction_78
happyReduction_78  =  happyIn57
		 ([]
	)

happyReduce_79 = happySpecReduce_3  28# happyReduction_79
happyReduction_79 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	case happyOut41 happy_x_2 of { happy_var_2 -> 
	happyIn57
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_80 = happySpecReduce_0  29# happyReduction_80
happyReduction_80  =  happyIn58
		 ([]
	)

happyReduce_81 = happySpecReduce_3  29# happyReduction_81
happyReduction_81 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	case happyOut43 happy_x_2 of { happy_var_2 -> 
	happyIn58
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_82 = happySpecReduce_0  30# happyReduction_82
happyReduction_82  =  happyIn59
		 ([]
	)

happyReduce_83 = happySpecReduce_1  30# happyReduction_83
happyReduction_83 happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn59
		 ((:[]) happy_var_1
	)}

happyReduce_84 = happySpecReduce_3  30# happyReduction_84
happyReduction_84 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	case happyOut59 happy_x_3 of { happy_var_3 -> 
	happyIn59
		 ((:) happy_var_1 happy_var_3
	)}}

happyNewToken action sts stk [] =
	happyDoAction 27# notHappyAtAll action sts stk []

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
	PT _ (TI happy_dollar_dollar) -> cont 22#;
	PT _ (TD happy_dollar_dollar) -> cont 23#;
	PT _ (TL happy_dollar_dollar) -> cont 24#;
	PT _ (TC happy_dollar_dollar) -> cont 25#;
	PT _ (T_Id happy_dollar_dollar) -> cont 26#;
	_ -> happyError' (tk:tks)
	}

happyError_ 27# tk tks = happyError' tks
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
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut34 x))

pBlock tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut35 x))

pParts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut36 x))

pConsts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut37 x))

pConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (happyOut38 x))

pLiteral tks = happySomeParser where
  happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (happyOut39 x))

pVars tks = happySomeParser where
  happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (happyOut40 x))

pVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (happyOut41 x))

pTypes tks = happySomeParser where
  happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (happyOut42 x))

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (happyOut43 x))

pCustomType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (happyOut44 x))

pRangeType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (happyOut45 x))

pArrType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (happyOut46 x))

pListFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 13# tks) (\x -> happyReturn (happyOut47 x))

pFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 14# tks) (\x -> happyReturn (happyOut48 x))

pBody tks = happySomeParser where
  happySomeParser = happyThen (happyParse 15# tks) (\x -> happyReturn (happyOut49 x))

pListInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 16# tks) (\x -> happyReturn (happyOut50 x))

pInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 17# tks) (\x -> happyReturn (happyOut51 x))

pSimpleInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 18# tks) (\x -> happyReturn (happyOut52 x))

pParms tks = happySomeParser where
  happySomeParser = happyThen (happyParse 19# tks) (\x -> happyReturn (happyOut53 x))

pListExps tks = happySomeParser where
  happySomeParser = happyThen (happyParse 20# tks) (\x -> happyReturn (happyOut54 x))

pExps tks = happySomeParser where
  happySomeParser = happyThen (happyParse 21# tks) (\x -> happyReturn (happyOut55 x))

pListConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 22# tks) (\x -> happyReturn (happyOut56 x))

pListVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 23# tks) (\x -> happyReturn (happyOut57 x))

pListType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 24# tks) (\x -> happyReturn (happyOut58 x))

pListId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 25# tks) (\x -> happyReturn (happyOut59 x))

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
