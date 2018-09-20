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
happyIn31 :: (Integer) -> (HappyAbsSyn )
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> (Integer)
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: (Double) -> (HappyAbsSyn )
happyIn32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> (Double)
happyOut32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: (String) -> (HappyAbsSyn )
happyIn33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn ) -> (String)
happyOut33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: (Char) -> (HappyAbsSyn )
happyIn34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn ) -> (Char)
happyOut34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: (Id) -> (HappyAbsSyn )
happyIn35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> (Id)
happyOut35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (Program) -> (HappyAbsSyn )
happyIn36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (Program)
happyOut36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (Block) -> (HappyAbsSyn )
happyIn37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> (Block)
happyOut37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (Parts) -> (HappyAbsSyn )
happyIn38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (Parts)
happyOut38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (Consts) -> (HappyAbsSyn )
happyIn39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (Consts)
happyOut39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: (Const) -> (HappyAbsSyn )
happyIn40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> (Const)
happyOut40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut40 #-}
happyIn41 :: (Literal) -> (HappyAbsSyn )
happyIn41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn ) -> (Literal)
happyOut41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut41 #-}
happyIn42 :: (Vars) -> (HappyAbsSyn )
happyIn42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn ) -> (Vars)
happyOut42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut42 #-}
happyIn43 :: (Var) -> (HappyAbsSyn )
happyIn43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> (Var)
happyOut43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyIn44 :: (Types) -> (HappyAbsSyn )
happyIn44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn ) -> (Types)
happyOut44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut44 #-}
happyIn45 :: (Type) -> (HappyAbsSyn )
happyIn45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn45 #-}
happyOut45 :: (HappyAbsSyn ) -> (Type)
happyOut45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut45 #-}
happyIn46 :: (CustomType) -> (HappyAbsSyn )
happyIn46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn46 #-}
happyOut46 :: (HappyAbsSyn ) -> (CustomType)
happyOut46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut46 #-}
happyIn47 :: (RangeType) -> (HappyAbsSyn )
happyIn47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn47 #-}
happyOut47 :: (HappyAbsSyn ) -> (RangeType)
happyOut47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut47 #-}
happyIn48 :: (ArrType) -> (HappyAbsSyn )
happyIn48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn48 #-}
happyOut48 :: (HappyAbsSyn ) -> (ArrType)
happyOut48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut48 #-}
happyIn49 :: ([Fields]) -> (HappyAbsSyn )
happyIn49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn49 #-}
happyOut49 :: (HappyAbsSyn ) -> ([Fields])
happyOut49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut49 #-}
happyIn50 :: (Fields) -> (HappyAbsSyn )
happyIn50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn50 #-}
happyOut50 :: (HappyAbsSyn ) -> (Fields)
happyOut50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut50 #-}
happyIn51 :: (Body) -> (HappyAbsSyn )
happyIn51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn51 #-}
happyOut51 :: (HappyAbsSyn ) -> (Body)
happyOut51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut51 #-}
happyIn52 :: ([Instruction]) -> (HappyAbsSyn )
happyIn52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn52 #-}
happyOut52 :: (HappyAbsSyn ) -> ([Instruction])
happyOut52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut52 #-}
happyIn53 :: (Instruction) -> (HappyAbsSyn )
happyIn53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn53 #-}
happyOut53 :: (HappyAbsSyn ) -> (Instruction)
happyOut53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut53 #-}
happyIn54 :: (SimpleInstruction) -> (HappyAbsSyn )
happyIn54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn ) -> (SimpleInstruction)
happyOut54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyIn55 :: ([AccId]) -> (HappyAbsSyn )
happyIn55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn55 #-}
happyOut55 :: (HappyAbsSyn ) -> ([AccId])
happyOut55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut55 #-}
happyIn56 :: (AccId) -> (HappyAbsSyn )
happyIn56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn ) -> (AccId)
happyOut56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: (Parms) -> (HappyAbsSyn )
happyIn57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn ) -> (Parms)
happyOut57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyIn58 :: ([Exps]) -> (HappyAbsSyn )
happyIn58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn58 #-}
happyOut58 :: (HappyAbsSyn ) -> ([Exps])
happyOut58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut58 #-}
happyIn59 :: (Exps) -> (HappyAbsSyn )
happyIn59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn59 #-}
happyOut59 :: (HappyAbsSyn ) -> (Exps)
happyOut59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut59 #-}
happyIn60 :: ([Const]) -> (HappyAbsSyn )
happyIn60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn60 #-}
happyOut60 :: (HappyAbsSyn ) -> ([Const])
happyOut60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut60 #-}
happyIn61 :: ([Var]) -> (HappyAbsSyn )
happyIn61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn61 #-}
happyOut61 :: (HappyAbsSyn ) -> ([Var])
happyOut61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut61 #-}
happyIn62 :: ([Type]) -> (HappyAbsSyn )
happyIn62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn62 #-}
happyOut62 :: (HappyAbsSyn ) -> ([Type])
happyOut62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut62 #-}
happyIn63 :: ([Id]) -> (HappyAbsSyn )
happyIn63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn63 #-}
happyOut63 :: (HappyAbsSyn ) -> ([Id])
happyOut63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut63 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x0c\x01\x0e\x01\x0e\x01\x0e\x01\x0a\x01\xad\x00\x0b\x01\x07\x01\x08\x01\x05\x01\x29\x00\xa8\x00\xa8\x00\x05\x01\x05\x01\x04\x01\xb3\x00\x01\x01\x01\x01\x01\x01\x01\x01\x09\x01\xa3\x00\xa3\x00\x00\x00\x00\x00\x00\x00\xff\x00\xfe\x00\x00\x00\x06\x01\xfd\x00\x00\x00\x45\x00\x45\x00\x45\x00\x00\x00\x00\x00\x03\x01\xfc\x00\x00\x00\xfc\x00\x02\x01\xf8\x00\xa3\x00\x00\x00\xf8\x00\xf8\x00\x00\x01\x23\x00\xf6\x00\xfa\x00\xf4\x00\x00\x00\xf4\x00\xfb\x00\xf3\x00\x80\x00\xf9\x00\xf1\x00\xf1\x00\xf5\x00\x00\x00\x00\x00\x00\x00\xf7\x00\xf0\x00\x00\x00\xf0\x00\x59\x00\xf0\x00\xf2\x00\xee\x00\xee\x00\xef\x00\xec\x00\xed\x00\xe7\x00\xe7\x00\x00\x00\xe7\x00\xe6\x00\xe5\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe5\x00\x00\x00\xeb\x00\xe3\x00\xe3\x00\x00\x00\xe3\x00\xe1\x00\xe0\x00\xe2\x00\xdf\x00\xde\x00\xe9\x00\xea\x00\xda\x00\xd1\x00\xad\x00\xd1\x00\xd1\x00\xd1\x00\x29\x00\xdd\x00\x9e\x00\x00\x00\xe8\x00\x9e\x00\x9e\x00\xcf\x00\x29\x00\xd8\x00\x1d\x00\x9b\x00\x00\x00\xcd\x00\xe4\x00\x9b\x00\xcb\x00\xdc\x00\xdb\x00\xd9\x00\xc8\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd5\x00\x00\x00\x00\x00\xd7\x00\x00\x00\xd6\x00\x00\x00\xd0\x00\x00\x00\x00\x00\xcc\x00\x00\x00\xc3\x00\x42\x00\xc2\x00\xc9\x00\xbf\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\xd2\x00\xc4\x00\xb8\x00\xce\x00\xa9\x00\xa4\x00\xca\x00\x0f\x00\xc7\x00\x8b\x00\x85\x00\x98\x00\x76\x00\x99\x00\x2e\x00\xbe\x00\x3c\x00\x40\x00\x4b\x00\x5a\x00\x21\x00\xb9\x00\x07\x00\x0d\x00\xb4\x00\xb2\x00\xb0\x00\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x57\x00\x0e\x00\xa6\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa2\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x35\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\xb6\x00\x00\x00\x71\x00\x00\x00\x00\x00\x00\x00\x97\x00\x00\x00\x00\x00\x00\x00\x92\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x65\x00\x00\x00\x5f\x00\x00\x00\x68\x00\x00\x00\x62\x00\x00\x00\x00\x00\x32\x00\x64\x00\x9f\x00\x0c\x00\x37\x00\x13\x00\x7d\x00\x00\x00\x67\x00\x00\x00\x00\x00\x93\x00\x8e\x00\x15\x00\x7b\x00\x00\x00\x30\x00\x0a\x00\x00\x00\x58\x00\x00\x00\x01\x00\x56\x00\x00\x00\x00\x00\x00\x00\xfe\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc1\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x12\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\xdb\xff\xdb\xff\xdb\xff\x00\x00\x00\x00\xd4\xff\xa6\xff\xd1\xff\x00\x00\x00\x00\x00\x00\x00\x00\xc4\xff\x00\x00\x00\x00\xb9\xff\xb9\xff\xb9\xff\xb9\xff\x00\x00\xb5\xff\xb3\xff\x00\x00\xac\xff\xaa\xff\xa8\xff\xa6\xff\x00\x00\xe3\xff\xa5\xff\x00\x00\xdf\xff\x00\x00\xa6\xff\x00\x00\xaf\xff\xb0\xff\xae\xff\x00\x00\xe1\xff\x00\x00\xb2\xff\x00\x00\xb3\xff\xb6\xff\x00\x00\x00\x00\xb8\xff\xb6\xff\x00\x00\x00\x00\x00\x00\xbc\xff\x00\x00\xbe\xff\x00\x00\xb9\xff\x00\x00\x00\x00\x00\x00\xc3\xff\xc6\xff\xc7\xff\xc8\xff\x00\x00\x00\x00\xe0\xff\x00\x00\xc8\xff\x00\x00\x00\x00\xa6\xff\x00\x00\x00\x00\xc4\xff\x00\x00\x00\x00\x00\x00\xa8\xff\x00\x00\x00\x00\x00\x00\xaa\xff\xd8\xff\xd7\xff\xd6\xff\xd5\xff\x00\x00\xe2\xff\x00\x00\x00\x00\x00\x00\xac\xff\x00\x00\xd1\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd4\xff\x00\x00\x00\x00\xa6\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcc\xff\x00\x00\x00\x00\x00\x00\xc4\xff\x00\x00\x00\x00\xb9\xff\x00\x00\xba\xff\xb9\xff\x00\x00\xb3\xff\xb9\xff\x00\x00\x00\x00\x00\x00\xa6\xff\xa4\xff\xa7\xff\xa9\xff\xab\xff\xad\xff\xb1\xff\xb4\xff\xb7\xff\xbb\xff\xbd\xff\xc0\xff\xc1\xff\xc2\xff\xc5\xff\xcd\xff\xce\xff\x00\x00\xca\xff\xcf\xff\x00\x00\xd2\xff\x00\x00\xd9\xff\x00\x00\xdc\xff\xdd\xff\xdb\xff\xde\xff\xda\xff\xa9\xff\xd0\xff\x00\x00\x00\x00\xcb\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x00\x00\x04\x00\x02\x00\x00\x00\x04\x00\x02\x00\x00\x00\x04\x00\x02\x00\x00\x00\x04\x00\x02\x00\x00\x00\x04\x00\x02\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x04\x00\x0c\x00\x04\x00\x0c\x00\x0c\x00\x1b\x00\x1c\x00\x20\x00\x1b\x00\x1c\x00\x0e\x00\x1b\x00\x1c\x00\x01\x00\x04\x00\x1c\x00\x12\x00\x13\x00\x1c\x00\x01\x00\x08\x00\x20\x00\x10\x00\x20\x00\x20\x00\x20\x00\x20\x00\x04\x00\x10\x00\x04\x00\x0c\x00\x0d\x00\x1a\x00\x1b\x00\x04\x00\x19\x00\x04\x00\x13\x00\x0b\x00\x1b\x00\x16\x00\x04\x00\x13\x00\x19\x00\x1a\x00\x04\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x04\x00\x0e\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x16\x00\x17\x00\x18\x00\x19\x00\x04\x00\x04\x00\x04\x00\x1b\x00\x04\x00\x1a\x00\x1b\x00\x08\x00\x17\x00\x18\x00\x19\x00\x0e\x00\x04\x00\x00\x00\x04\x00\x10\x00\x03\x00\x04\x00\x0d\x00\x09\x00\x18\x00\x19\x00\x18\x00\x19\x00\x18\x00\x19\x00\x1b\x00\x04\x00\x00\x00\x10\x00\x11\x00\x03\x00\x04\x00\x00\x00\x14\x00\x00\x00\x03\x00\x04\x00\x03\x00\x04\x00\x1d\x00\x12\x00\x13\x00\x00\x00\x10\x00\x11\x00\x03\x00\x04\x00\x0f\x00\x10\x00\x0f\x00\x10\x00\x00\x00\x04\x00\x10\x00\x03\x00\x04\x00\x00\x00\x0f\x00\x10\x00\x03\x00\x04\x00\x00\x00\x0e\x00\x1a\x00\x03\x00\x04\x00\x04\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x10\x00\x0a\x00\x04\x00\x12\x00\x13\x00\x04\x00\x0a\x00\x09\x00\x1e\x00\x16\x00\x09\x00\x18\x00\x16\x00\x1a\x00\x1f\x00\x19\x00\x1a\x00\x16\x00\x04\x00\x18\x00\x1a\x00\x1a\x00\x16\x00\x07\x00\x08\x00\x19\x00\x1a\x00\x16\x00\x17\x00\x18\x00\x19\x00\x06\x00\x07\x00\x08\x00\x06\x00\x07\x00\x08\x00\x1a\x00\x1b\x00\x1f\x00\x1e\x00\x1d\x00\x14\x00\x1a\x00\x0d\x00\x0b\x00\x08\x00\x05\x00\x08\x00\x1a\x00\x11\x00\x0f\x00\x1a\x00\x1a\x00\x08\x00\x08\x00\x0b\x00\x08\x00\x1a\x00\x08\x00\x08\x00\x1a\x00\x02\x00\x1a\x00\x10\x00\x1a\x00\x02\x00\x1a\x00\x06\x00\x10\x00\x04\x00\x15\x00\x0e\x00\x08\x00\xff\xff\xff\xff\x09\x00\x14\x00\x09\x00\x05\x00\x1a\x00\x0a\x00\x1b\x00\x1b\x00\x05\x00\x08\x00\x1b\x00\x06\x00\x1b\x00\x07\x00\x1b\x00\x08\x00\x04\x00\x03\x00\x1a\x00\x04\x00\x1a\x00\x03\x00\x01\x00\x1b\x00\x1b\x00\xff\xff\x1b\x00\x1b\x00\xff\xff\x1b\x00\x0e\x00\x1b\x00\x16\x00\xff\xff\xff\xff\x1b\x00\x1b\x00\x1a\x00\xff\xff\x1a\x00\x14\x00\x0f\x00\x12\x00\x1a\x00\x15\x00\x1a\x00\xff\xff\xff\xff\x1a\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x24\x00\x1e\x00\x25\x00\x24\x00\x26\x00\x25\x00\x24\x00\x26\x00\x25\x00\x24\x00\x26\x00\x25\x00\x24\x00\x26\x00\x25\x00\x1e\x00\x26\x00\x1e\x00\x1e\x00\x1e\x00\x1e\x00\xa2\x00\x4c\x00\x96\x00\x3a\x00\x7e\x00\x50\x00\x86\x00\x2a\x00\x81\x00\x7a\x00\x2a\x00\x94\x00\x29\x00\x2a\x00\x2d\x00\x2d\x00\x89\x00\x8d\x00\x3d\x00\x27\x00\x49\x00\xb5\xff\x51\x00\xbf\xff\x51\x00\x51\x00\x70\x00\x1f\x00\x3a\x00\xb5\xff\x31\x00\x4a\x00\x4b\x00\x21\x00\xbf\xff\x31\x00\x2e\x00\x95\x00\x4c\x00\x99\x00\xb5\xff\x1e\x00\x31\x00\x3b\x00\x44\x00\x21\x00\x31\x00\x8a\x00\x37\x00\x35\x00\x33\x00\x30\x00\x75\x00\x37\x00\x35\x00\x33\x00\x30\x00\x31\x00\xd3\xff\x36\x00\x37\x00\x35\x00\x33\x00\x30\x00\x34\x00\x35\x00\x33\x00\x30\x00\x2d\x00\x4c\x00\x2d\x00\xd3\xff\x2d\x00\x21\x00\xff\xff\xc9\xff\x32\x00\x33\x00\x30\x00\x7f\x00\x64\x00\x3e\x00\x5a\x00\xc9\xff\x3f\x00\x40\x00\x66\x00\x98\x00\x85\x00\x30\x00\x88\x00\x30\x00\x2f\x00\x30\x00\xc9\xff\x3a\x00\x3e\x00\x41\x00\x91\x00\x3f\x00\x40\x00\x3e\x00\x65\x00\x3e\x00\x3f\x00\x45\x00\x3f\x00\x45\x00\x67\x00\x6d\x00\x3d\x00\x3e\x00\x41\x00\x42\x00\x3f\x00\x45\x00\x8c\x00\x47\x00\x93\x00\x47\x00\x3e\x00\x4c\x00\xbf\xff\x3f\x00\x40\x00\x3e\x00\x46\x00\x47\x00\x3f\x00\x40\x00\x3e\x00\x4d\x00\x21\x00\x3f\x00\x40\x00\x3a\x00\x8e\x00\x54\x00\x55\x00\x56\x00\x57\x00\x8f\x00\x54\x00\x55\x00\x56\x00\x57\x00\x44\x00\x97\x00\x5a\x00\x3c\x00\x3d\x00\x5a\x00\x58\x00\x7d\x00\x69\x00\x1e\x00\x5b\x00\x29\x00\x1e\x00\x21\x00\x6b\x00\x44\x00\x21\x00\x1e\x00\x6f\x00\x29\x00\x78\x00\x21\x00\x1e\x00\x5e\x00\x5f\x00\x44\x00\x21\x00\x1e\x00\x5a\x00\x29\x00\x44\x00\x9c\x00\x61\x00\x5f\x00\x60\x00\x61\x00\x5f\x00\x21\x00\xbf\xff\x21\x00\x22\x00\x23\x00\x38\x00\x2b\x00\x4e\x00\x52\x00\x5c\x00\x62\x00\x9e\x00\x21\x00\xa2\x00\x5e\x00\xa7\xff\xab\xff\x9f\x00\xa0\x00\xa1\x00\x83\x00\x21\x00\x84\x00\x85\x00\x21\x00\x88\x00\x21\x00\x8c\x00\x21\x00\x91\x00\x21\x00\x6b\x00\x93\x00\x9b\x00\x54\x00\x3a\x00\x9c\x00\x00\x00\x00\x00\x69\x00\x50\x00\x6d\x00\x72\x00\x21\x00\x6f\x00\xff\xff\xff\xff\x73\x00\x74\x00\xff\xff\x75\x00\xff\xff\x78\x00\xff\xff\x77\x00\x7a\x00\x7c\x00\x21\x00\x7d\x00\x21\x00\x81\x00\x2d\x00\xff\xff\xff\xff\x00\x00\xff\xff\xff\xff\x00\x00\xff\xff\x3a\x00\xff\xff\x1e\x00\x00\x00\x00\x00\xff\xff\xff\xff\x21\x00\x00\x00\x21\x00\x50\x00\x5e\x00\x64\x00\x21\x00\x54\x00\x21\x00\x00\x00\x00\x00\x21\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (28, 91) [
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
	(84 , happyReduce_84),
	(85 , happyReduce_85),
	(86 , happyReduce_86),
	(87 , happyReduce_87),
	(88 , happyReduce_88),
	(89 , happyReduce_89),
	(90 , happyReduce_90),
	(91 , happyReduce_91)
	]

happy_n_terms = 28 :: Int
happy_n_nonterms = 33 :: Int

happyReduce_28 = happySpecReduce_1  0# happyReduction_28
happyReduction_28 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn31
		 ((read ( happy_var_1)) :: Integer
	)}

happyReduce_29 = happySpecReduce_1  1# happyReduction_29
happyReduction_29 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn32
		 ((read ( happy_var_1)) :: Double
	)}

happyReduce_30 = happySpecReduce_1  2# happyReduction_30
happyReduction_30 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn33
		 (happy_var_1
	)}

happyReduce_31 = happySpecReduce_1  3# happyReduction_31
happyReduction_31 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn34
		 ((read ( happy_var_1)) :: Char
	)}

happyReduce_32 = happySpecReduce_1  4# happyReduction_32
happyReduction_32 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Id happy_var_1)) -> 
	happyIn35
		 (Id (happy_var_1)
	)}

happyReduce_33 = happyReduce 4# 5# happyReduction_33
happyReduction_33 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut35 happy_x_2 of { happy_var_2 -> 
	case happyOut37 happy_x_4 of { happy_var_4 -> 
	happyIn36
		 (AbsPascal.PProgram happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_34 = happySpecReduce_3  6# happyReduction_34
happyReduction_34 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_2 of { happy_var_2 -> 
	happyIn37
		 (AbsPascal.PBlock happy_var_1 happy_var_2
	)}}

happyReduce_35 = happySpecReduce_3  7# happyReduction_35
happyReduction_35 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	case happyOut44 happy_x_2 of { happy_var_2 -> 
	case happyOut42 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (AbsPascal.PPart happy_var_1 happy_var_2 happy_var_3
	)}}}

happyReduce_36 = happySpecReduce_0  8# happyReduction_36
happyReduction_36  =  happyIn39
		 (AbsPascal.PPartConstEmpty
	)

happyReduce_37 = happyReduce 4# 8# happyReduction_37
happyReduction_37 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut60 happy_x_2 of { happy_var_2 -> 
	case happyOut40 happy_x_3 of { happy_var_3 -> 
	happyIn39
		 (AbsPascal.PPartConst (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_38 = happySpecReduce_3  9# happyReduction_38
happyReduction_38 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOut41 happy_x_3 of { happy_var_3 -> 
	happyIn40
		 (AbsPascal.PConst happy_var_1 happy_var_3
	)}}

happyReduce_39 = happySpecReduce_1  10# happyReduction_39
happyReduction_39 happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (AbsPascal.PValInteger happy_var_1
	)}

happyReduce_40 = happySpecReduce_1  10# happyReduction_40
happyReduction_40 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (AbsPascal.PValDouble happy_var_1
	)}

happyReduce_41 = happySpecReduce_1  10# happyReduction_41
happyReduction_41 happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (AbsPascal.PValString happy_var_1
	)}

happyReduce_42 = happySpecReduce_1  10# happyReduction_42
happyReduction_42 happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (AbsPascal.PValChar happy_var_1
	)}

happyReduce_43 = happySpecReduce_0  11# happyReduction_43
happyReduction_43  =  happyIn42
		 (AbsPascal.PPartVarsEmpty
	)

happyReduce_44 = happyReduce 4# 11# happyReduction_44
happyReduction_44 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut61 happy_x_2 of { happy_var_2 -> 
	case happyOut43 happy_x_3 of { happy_var_3 -> 
	happyIn42
		 (AbsPascal.PPartVars (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_45 = happySpecReduce_3  12# happyReduction_45
happyReduction_45 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	case happyOut35 happy_x_3 of { happy_var_3 -> 
	happyIn43
		 (AbsPascal.PVar happy_var_1 happy_var_3
	)}}

happyReduce_46 = happySpecReduce_0  13# happyReduction_46
happyReduction_46  =  happyIn44
		 (AbsPascal.PPartTypesEmpty
	)

happyReduce_47 = happyReduce 4# 13# happyReduction_47
happyReduction_47 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut62 happy_x_2 of { happy_var_2 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 (AbsPascal.PPartTypes (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_48 = happySpecReduce_3  14# happyReduction_48
happyReduction_48 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn45
		 (AbsPascal.PType happy_var_1 happy_var_3
	)}}

happyReduce_49 = happySpecReduce_3  15# happyReduction_49
happyReduction_49 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut63 happy_x_2 of { happy_var_2 -> 
	happyIn46
		 (AbsPascal.PCustomTypeEnum happy_var_2
	)}

happyReduce_50 = happySpecReduce_3  15# happyReduction_50
happyReduction_50 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 (AbsPascal.PCustomTypeSubRange happy_var_1 happy_var_3
	)}}

happyReduce_51 = happySpecReduce_2  15# happyReduction_51
happyReduction_51 happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_2 of { happy_var_2 -> 
	happyIn46
		 (AbsPascal.PCustomTypePointer happy_var_2
	)}

happyReduce_52 = happyReduce 6# 15# happyReduction_52
happyReduction_52 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut48 happy_x_3 of { happy_var_3 -> 
	case happyOut35 happy_x_6 of { happy_var_6 -> 
	happyIn46
		 (AbsPascal.PTypeArray happy_var_3 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_53 = happySpecReduce_3  15# happyReduction_53
happyReduction_53 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut49 happy_x_2 of { happy_var_2 -> 
	happyIn46
		 (AbsPascal.PTypeRecord happy_var_2
	)}

happyReduce_54 = happySpecReduce_1  15# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 (AbsPascal.PCustomTypeId happy_var_1
	)}

happyReduce_55 = happySpecReduce_1  16# happyReduction_55
happyReduction_55 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn47
		 (AbsPascal.PRangeTypeId happy_var_1
	)}

happyReduce_56 = happySpecReduce_1  16# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	happyIn47
		 (AbsPascal.PRangeTypeChar happy_var_1
	)}

happyReduce_57 = happySpecReduce_1  16# happyReduction_57
happyReduction_57 happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	happyIn47
		 (AbsPascal.PRangeTypeInteger happy_var_1
	)}

happyReduce_58 = happySpecReduce_3  17# happyReduction_58
happyReduction_58 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (AbsPascal.PTypeArrayLType happy_var_1 happy_var_3
	)}}

happyReduce_59 = happySpecReduce_0  18# happyReduction_59
happyReduction_59  =  happyIn49
		 ([]
	)

happyReduce_60 = happySpecReduce_1  18# happyReduction_60
happyReduction_60 happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	happyIn49
		 ((:[]) happy_var_1
	)}

happyReduce_61 = happySpecReduce_3  18# happyReduction_61
happyReduction_61 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_62 = happySpecReduce_3  19# happyReduction_62
happyReduction_62 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn50
		 (AbsPascal.PRecordFields happy_var_1 happy_var_3
	)}}

happyReduce_63 = happySpecReduce_3  20# happyReduction_63
happyReduction_63 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_2 of { happy_var_2 -> 
	happyIn51
		 (AbsPascal.PBody happy_var_2
	)}

happyReduce_64 = happySpecReduce_0  21# happyReduction_64
happyReduction_64  =  happyIn52
		 ([]
	)

happyReduce_65 = happySpecReduce_1  21# happyReduction_65
happyReduction_65 happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 ((:[]) happy_var_1
	)}

happyReduce_66 = happySpecReduce_3  21# happyReduction_66
happyReduction_66 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_67 = happySpecReduce_1  22# happyReduction_67
happyReduction_67 happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (AbsPascal.PListSimpleInstruction happy_var_1
	)}

happyReduce_68 = happySpecReduce_3  23# happyReduction_68
happyReduction_68 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut55 happy_x_1 of { happy_var_1 -> 
	case happyOut59 happy_x_3 of { happy_var_3 -> 
	happyIn54
		 (AbsPascal.PSimpleInstructionAssignment happy_var_1 happy_var_3
	)}}

happyReduce_69 = happySpecReduce_2  23# happyReduction_69
happyReduction_69 happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOut57 happy_x_2 of { happy_var_2 -> 
	happyIn54
		 (AbsPascal.PSimpleInstructionProcFunc happy_var_1 happy_var_2
	)}}

happyReduce_70 = happySpecReduce_0  24# happyReduction_70
happyReduction_70  =  happyIn55
		 ([]
	)

happyReduce_71 = happySpecReduce_1  24# happyReduction_71
happyReduction_71 happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 ((:[]) happy_var_1
	)}

happyReduce_72 = happySpecReduce_3  24# happyReduction_72
happyReduction_72 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	case happyOut55 happy_x_3 of { happy_var_3 -> 
	happyIn55
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_73 = happySpecReduce_1  25# happyReduction_73
happyReduction_73 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn56
		 (AbsPascal.PAccId happy_var_1
	)}

happyReduce_74 = happySpecReduce_0  26# happyReduction_74
happyReduction_74  =  happyIn57
		 (AbsPascal.PParamsEmpty
	)

happyReduce_75 = happySpecReduce_3  26# happyReduction_75
happyReduction_75 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut58 happy_x_2 of { happy_var_2 -> 
	happyIn57
		 (AbsPascal.PParms happy_var_2
	)}

happyReduce_76 = happySpecReduce_0  27# happyReduction_76
happyReduction_76  =  happyIn58
		 ([]
	)

happyReduce_77 = happySpecReduce_1  27# happyReduction_77
happyReduction_77 happy_x_1
	 =  case happyOut59 happy_x_1 of { happy_var_1 -> 
	happyIn58
		 ((:[]) happy_var_1
	)}

happyReduce_78 = happySpecReduce_3  27# happyReduction_78
happyReduction_78 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut59 happy_x_1 of { happy_var_1 -> 
	case happyOut58 happy_x_3 of { happy_var_3 -> 
	happyIn58
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_79 = happySpecReduce_1  28# happyReduction_79
happyReduction_79 happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn59
		 (AbsPascal.PFactorString happy_var_1
	)}

happyReduce_80 = happySpecReduce_1  28# happyReduction_80
happyReduction_80 happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	happyIn59
		 (AbsPascal.PFactorInteger happy_var_1
	)}

happyReduce_81 = happySpecReduce_1  28# happyReduction_81
happyReduction_81 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn59
		 (AbsPascal.PFactorId happy_var_1
	)}

happyReduce_82 = happySpecReduce_3  28# happyReduction_82
happyReduction_82 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOut55 happy_x_3 of { happy_var_3 -> 
	happyIn59
		 (AbsPascal.PFactorAccId happy_var_1 happy_var_3
	)}}

happyReduce_83 = happySpecReduce_0  29# happyReduction_83
happyReduction_83  =  happyIn60
		 ([]
	)

happyReduce_84 = happySpecReduce_3  29# happyReduction_84
happyReduction_84 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	case happyOut40 happy_x_2 of { happy_var_2 -> 
	happyIn60
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_85 = happySpecReduce_0  30# happyReduction_85
happyReduction_85  =  happyIn61
		 ([]
	)

happyReduce_86 = happySpecReduce_3  30# happyReduction_86
happyReduction_86 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut61 happy_x_1 of { happy_var_1 -> 
	case happyOut43 happy_x_2 of { happy_var_2 -> 
	happyIn61
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_87 = happySpecReduce_0  31# happyReduction_87
happyReduction_87  =  happyIn62
		 ([]
	)

happyReduce_88 = happySpecReduce_3  31# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut62 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_2 of { happy_var_2 -> 
	happyIn62
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_89 = happySpecReduce_0  32# happyReduction_89
happyReduction_89  =  happyIn63
		 ([]
	)

happyReduce_90 = happySpecReduce_1  32# happyReduction_90
happyReduction_90 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn63
		 ((:[]) happy_var_1
	)}

happyReduce_91 = happySpecReduce_3  32# happyReduction_91
happyReduction_91 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOut63 happy_x_3 of { happy_var_3 -> 
	happyIn63
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
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut36 x))

pBlock tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut37 x))

pParts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut38 x))

pConsts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut39 x))

pConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (happyOut40 x))

pLiteral tks = happySomeParser where
  happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (happyOut41 x))

pVars tks = happySomeParser where
  happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (happyOut42 x))

pVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (happyOut43 x))

pTypes tks = happySomeParser where
  happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (happyOut44 x))

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (happyOut45 x))

pCustomType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (happyOut46 x))

pRangeType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (happyOut47 x))

pArrType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (happyOut48 x))

pListFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 13# tks) (\x -> happyReturn (happyOut49 x))

pFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 14# tks) (\x -> happyReturn (happyOut50 x))

pBody tks = happySomeParser where
  happySomeParser = happyThen (happyParse 15# tks) (\x -> happyReturn (happyOut51 x))

pListInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 16# tks) (\x -> happyReturn (happyOut52 x))

pInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 17# tks) (\x -> happyReturn (happyOut53 x))

pSimpleInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 18# tks) (\x -> happyReturn (happyOut54 x))

pListAccId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 19# tks) (\x -> happyReturn (happyOut55 x))

pAccId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 20# tks) (\x -> happyReturn (happyOut56 x))

pParms tks = happySomeParser where
  happySomeParser = happyThen (happyParse 21# tks) (\x -> happyReturn (happyOut57 x))

pListExps tks = happySomeParser where
  happySomeParser = happyThen (happyParse 22# tks) (\x -> happyReturn (happyOut58 x))

pExps tks = happySomeParser where
  happySomeParser = happyThen (happyParse 23# tks) (\x -> happyReturn (happyOut59 x))

pListConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 24# tks) (\x -> happyReturn (happyOut60 x))

pListVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 25# tks) (\x -> happyReturn (happyOut61 x))

pListType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 26# tks) (\x -> happyReturn (happyOut62 x))

pListId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 27# tks) (\x -> happyReturn (happyOut63 x))

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
