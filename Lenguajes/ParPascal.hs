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
happyIn35 :: (Integer) -> (HappyAbsSyn )
happyIn35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> (Integer)
happyOut35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (Double) -> (HappyAbsSyn )
happyIn36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (Double)
happyOut36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (String) -> (HappyAbsSyn )
happyIn37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> (String)
happyOut37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (Char) -> (HappyAbsSyn )
happyIn38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (Char)
happyOut38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (Id) -> (HappyAbsSyn )
happyIn39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (Id)
happyOut39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: (Program) -> (HappyAbsSyn )
happyIn40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> (Program)
happyOut40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut40 #-}
happyIn41 :: (Block) -> (HappyAbsSyn )
happyIn41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn ) -> (Block)
happyOut41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut41 #-}
happyIn42 :: (Parts) -> (HappyAbsSyn )
happyIn42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn ) -> (Parts)
happyOut42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut42 #-}
happyIn43 :: (Consts) -> (HappyAbsSyn )
happyIn43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> (Consts)
happyOut43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyIn44 :: (Const) -> (HappyAbsSyn )
happyIn44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn ) -> (Const)
happyOut44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut44 #-}
happyIn45 :: (Literal) -> (HappyAbsSyn )
happyIn45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn45 #-}
happyOut45 :: (HappyAbsSyn ) -> (Literal)
happyOut45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut45 #-}
happyIn46 :: (Vars) -> (HappyAbsSyn )
happyIn46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn46 #-}
happyOut46 :: (HappyAbsSyn ) -> (Vars)
happyOut46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut46 #-}
happyIn47 :: (Var) -> (HappyAbsSyn )
happyIn47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn47 #-}
happyOut47 :: (HappyAbsSyn ) -> (Var)
happyOut47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut47 #-}
happyIn48 :: (Types) -> (HappyAbsSyn )
happyIn48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn48 #-}
happyOut48 :: (HappyAbsSyn ) -> (Types)
happyOut48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut48 #-}
happyIn49 :: (Type) -> (HappyAbsSyn )
happyIn49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn49 #-}
happyOut49 :: (HappyAbsSyn ) -> (Type)
happyOut49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut49 #-}
happyIn50 :: (CustomType) -> (HappyAbsSyn )
happyIn50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn50 #-}
happyOut50 :: (HappyAbsSyn ) -> (CustomType)
happyOut50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut50 #-}
happyIn51 :: (RangeType) -> (HappyAbsSyn )
happyIn51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn51 #-}
happyOut51 :: (HappyAbsSyn ) -> (RangeType)
happyOut51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut51 #-}
happyIn52 :: (ArrType) -> (HappyAbsSyn )
happyIn52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn52 #-}
happyOut52 :: (HappyAbsSyn ) -> (ArrType)
happyOut52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut52 #-}
happyIn53 :: ([Fields]) -> (HappyAbsSyn )
happyIn53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn53 #-}
happyOut53 :: (HappyAbsSyn ) -> ([Fields])
happyOut53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut53 #-}
happyIn54 :: (Fields) -> (HappyAbsSyn )
happyIn54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn ) -> (Fields)
happyOut54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyIn55 :: (Body) -> (HappyAbsSyn )
happyIn55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn55 #-}
happyOut55 :: (HappyAbsSyn ) -> (Body)
happyOut55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut55 #-}
happyIn56 :: ([Instruction]) -> (HappyAbsSyn )
happyIn56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn ) -> ([Instruction])
happyOut56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: (Instruction) -> (HappyAbsSyn )
happyIn57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn ) -> (Instruction)
happyOut57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyIn58 :: (SimpleInstruction) -> (HappyAbsSyn )
happyIn58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn58 #-}
happyOut58 :: (HappyAbsSyn ) -> (SimpleInstruction)
happyOut58 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut58 #-}
happyIn59 :: (CompositeInstruction) -> (HappyAbsSyn )
happyIn59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn59 #-}
happyOut59 :: (HappyAbsSyn ) -> (CompositeInstruction)
happyOut59 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut59 #-}
happyIn60 :: (Parms) -> (HappyAbsSyn )
happyIn60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn60 #-}
happyOut60 :: (HappyAbsSyn ) -> (Parms)
happyOut60 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut60 #-}
happyIn61 :: ([Exp]) -> (HappyAbsSyn )
happyIn61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn61 #-}
happyOut61 :: (HappyAbsSyn ) -> ([Exp])
happyOut61 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut61 #-}
happyIn62 :: (Exp) -> (HappyAbsSyn )
happyIn62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn62 #-}
happyOut62 :: (HappyAbsSyn ) -> (Exp)
happyOut62 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut62 #-}
happyIn63 :: (Exp) -> (HappyAbsSyn )
happyIn63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn63 #-}
happyOut63 :: (HappyAbsSyn ) -> (Exp)
happyOut63 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut63 #-}
happyIn64 :: (Exp) -> (HappyAbsSyn )
happyIn64 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn64 #-}
happyOut64 :: (HappyAbsSyn ) -> (Exp)
happyOut64 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut64 #-}
happyIn65 :: (Exp) -> (HappyAbsSyn )
happyIn65 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn65 #-}
happyOut65 :: (HappyAbsSyn ) -> (Exp)
happyOut65 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut65 #-}
happyIn66 :: ([AccId]) -> (HappyAbsSyn )
happyIn66 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn66 #-}
happyOut66 :: (HappyAbsSyn ) -> ([AccId])
happyOut66 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut66 #-}
happyIn67 :: (AccId) -> (HappyAbsSyn )
happyIn67 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn67 #-}
happyOut67 :: (HappyAbsSyn ) -> (AccId)
happyOut67 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut67 #-}
happyIn68 :: ([Const]) -> (HappyAbsSyn )
happyIn68 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn68 #-}
happyOut68 :: (HappyAbsSyn ) -> ([Const])
happyOut68 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut68 #-}
happyIn69 :: ([Var]) -> (HappyAbsSyn )
happyIn69 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn69 #-}
happyOut69 :: (HappyAbsSyn ) -> ([Var])
happyOut69 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut69 #-}
happyIn70 :: ([Type]) -> (HappyAbsSyn )
happyIn70 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn70 #-}
happyOut70 :: (HappyAbsSyn ) -> ([Type])
happyOut70 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut70 #-}
happyIn71 :: ([Id]) -> (HappyAbsSyn )
happyIn71 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn71 #-}
happyOut71 :: (HappyAbsSyn ) -> ([Id])
happyOut71 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut71 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x82\x02\x8a\x02\x8a\x02\x8a\x02\x6b\x02\xe3\x00\x6e\x02\x67\x02\x6d\x02\x55\x02\x96\x00\xc1\x00\xc1\x00\x55\x02\x55\x02\x7f\x02\x8f\x02\x0e\x02\x52\x02\x8a\x00\x7e\x02\x9d\x00\x9d\x00\xa5\x00\xa5\x00\x9d\x00\x47\x02\x47\x02\x00\x00\x00\x00\x00\x00\x47\x02\x49\x02\x00\x00\x6c\x02\x42\x02\x00\x00\x65\x00\x65\x00\x65\x00\x00\x00\x42\x02\x42\x02\x64\x02\x00\x00\x00\x00\x00\x00\x00\x00\x5f\x02\x00\x00\x06\x00\x58\x00\x39\x02\x9d\x00\x9d\x00\x00\x00\x00\x00\x00\x00\x30\x00\x9f\x00\x39\x02\xc8\x00\x7e\x00\x39\x02\xe5\x00\x39\x02\x9d\x00\x39\x02\x31\x02\x9d\x00\xaf\x02\x01\x00\x38\x02\x54\x02\x1e\x02\x00\x00\x00\x00\x1e\x02\x41\x02\x1a\x02\x8b\x02\x3f\x02\x13\x02\x13\x02\x35\x02\x00\x00\x00\x00\x00\x00\x34\x02\xff\x01\xff\x01\xfb\xff\xff\x01\x1f\x02\xf5\x01\xf5\x01\x0f\x02\xf0\x01\x02\x02\xe1\x01\xe1\x01\x00\x00\xe1\x01\xf7\x01\xd0\x01\x00\x00\xd0\x01\xef\x01\xce\x01\xce\x01\x00\x00\xce\x01\xd2\x01\xc9\x01\xcc\x01\xc8\x01\xbe\x01\xd7\x01\xdb\x01\xb4\x01\xb1\x01\xe3\x00\xb1\x01\xb1\x01\xb1\x01\x88\x00\xbc\x01\xc1\x00\x00\x00\xd1\x01\xc1\x00\xc1\x00\xa3\x01\x88\x00\xb3\x01\x88\x02\x90\x00\x00\x00\xa1\x01\x90\x02\xad\x01\xb5\x01\x90\x00\x90\x00\x90\x00\x90\x00\x90\x00\x90\x00\x90\x00\xa5\x00\xa5\x00\xa5\x00\xa5\x00\xa5\x00\x00\x00\xb3\x02\xa5\x00\xa5\x00\xa5\x00\x87\x01\x87\x01\xa9\x01\x99\x01\x6a\x01\x70\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcb\x01\xcb\x01\xcb\x01\xcb\x01\xcb\x01\xfd\x02\xfd\x02\xfd\x02\xfd\x02\xfd\x02\xfd\x02\x00\x00\x00\x00\x90\x00\x0e\x02\x90\x00\xfd\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x60\x01\x00\x00\x00\x00\x67\x01\x00\x00\x66\x01\x00\x00\x65\x01\x00\x00\x00\x00\x57\x01\x00\x00\x32\x01\xf9\xff\x2c\x01\x10\x01\xfd\x02\x13\x01\x7d\x02\x90\x00\x90\x00\x0e\x02\x00\x01\x00\x00\x00\x00\xe8\x02\xd9\x02\x0e\x02\x0e\x02\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x29\x01\xd5\x00\xfc\xff\x25\x01\x68\x00\xff\x02\x21\x01\x4c\x00\x0a\x01\xb6\x01\xc7\x02\xe1\x02\x3b\x02\xb4\x00\x69\x00\x02\x01\x4d\x02\x7c\x02\x81\x00\xfd\x00\xfb\x00\x03\x01\xa0\x01\x57\x02\x14\x02\xbf\x01\x43\x00\xfd\xff\xf2\x00\xcf\x00\xca\x00\x21\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x74\x00\x24\x00\x4b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x90\x01\xaf\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe4\x00\x00\x00\xe7\x00\x8b\x01\x3e\x02\xc5\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x30\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x17\x00\xc9\x00\x00\x00\xb0\x00\x00\x00\x00\x00\x00\x00\xab\x00\x00\x00\x00\x00\x00\x00\x5b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4e\x00\x00\x00\x4f\x00\x00\x00\x20\x00\x00\x00\x67\x00\x00\x00\x00\x00\xfa\xff\x40\x00\xfb\x02\x02\x00\x51\x00\x2a\x00\xb9\x02\x00\x00\xeb\x01\x00\x00\x00\x00\xdc\x02\xcd\x02\x80\x00\x77\x00\x00\x00\xb0\x01\x80\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xdf\x00\x7b\x01\x6b\x01\x5c\x01\x4c\x01\x47\x01\x3c\x01\x09\x02\x04\x02\xf3\x01\xe6\x01\xd5\x01\x00\x00\x00\x00\x36\x02\x28\x02\x19\x02\x3f\x00\x33\x00\x00\x00\x00\x00\x00\x00\x16\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x37\x01\x71\x02\x27\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x18\x01\x08\x01\x66\x02\x0c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x63\x02\x58\x02\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\xd7\xff\xd7\xff\xd7\xff\x00\x00\x00\x00\xd0\xff\x87\xff\xcd\xff\x00\x00\x00\x00\x00\x00\x00\x00\xc0\xff\x00\x00\x00\x00\x91\xff\x91\xff\x91\xff\x00\x00\xaf\xff\xad\xff\x00\x00\x00\x00\x00\x00\x00\x00\x91\xff\x00\x00\x8d\xff\x8b\xff\x89\xff\x87\xff\x00\x00\xdf\xff\x86\xff\x00\x00\xdb\xff\x00\x00\x87\xff\x00\x00\x8e\xff\x00\x00\x00\x00\x90\xff\xd4\xff\xd3\xff\xd2\xff\xd1\xff\xa1\xff\xa2\xff\x98\xff\x92\xff\x00\x00\x00\x00\x00\x00\xde\xff\xdd\xff\xdc\xff\x98\xff\x00\x00\x00\x00\x00\x00\xa3\xff\x00\x00\xac\xff\x00\x00\xad\xff\x00\x00\x00\x00\x00\x00\x91\xff\x8e\xff\x00\x00\x00\x00\x00\x00\xb8\xff\xb7\xff\x00\x00\xba\xff\x00\x00\x91\xff\x00\x00\x00\x00\x00\x00\xbf\xff\xc2\xff\xc3\xff\xc4\xff\x00\x00\x00\x00\x00\x00\xc4\xff\x00\x00\x00\x00\x87\xff\x00\x00\x00\x00\xc0\xff\x00\x00\x00\x00\x00\x00\x89\xff\x00\x00\x00\x00\x00\x00\x8b\xff\x00\x00\x00\x00\x00\x00\x00\x00\x8d\xff\x00\x00\xcd\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd0\xff\x00\x00\x00\x00\x87\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc8\xff\x00\x00\x00\x00\x00\x00\xc0\xff\x00\x00\x00\x00\x91\xff\x00\x00\xb5\xff\x00\x00\x00\x00\x00\x00\x00\x00\xad\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x93\xff\x00\x00\x00\x00\x00\x00\x00\x00\x91\xff\x91\xff\x00\x00\x00\x00\x00\x00\x87\xff\x85\xff\x88\xff\x8a\xff\x8c\xff\x8f\xff\xa0\xff\x95\xff\x94\xff\x96\xff\x9f\xff\x9a\xff\x9b\xff\x99\xff\x9c\xff\x9d\xff\xa6\xff\xa9\xff\xa7\xff\xa4\xff\xa5\xff\xa8\xff\xab\xff\xae\xff\x00\x00\x91\xff\x00\x00\xb6\xff\xb9\xff\xbc\xff\xbd\xff\xbe\xff\xc1\xff\xc9\xff\xca\xff\x00\x00\xc6\xff\xcb\xff\x00\x00\xce\xff\x00\x00\xd5\xff\x00\x00\xd8\xff\xd9\xff\xd7\xff\xda\xff\xd6\xff\x8a\xff\xcc\xff\x00\x00\xb2\xff\xb4\xff\x00\x00\x00\x00\x00\x00\x91\xff\x00\x00\xc7\xff\xb3\xff\x00\x00\x00\x00\x91\xff\x91\xff\xb1\xff\xb0\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x04\x00\x01\x00\x07\x00\x08\x00\x0b\x00\x04\x00\x0c\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x0c\x00\x0c\x00\x09\x00\x04\x00\x18\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x1e\x00\x04\x00\x04\x00\x16\x00\x20\x00\x1d\x00\x1e\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x04\x00\x24\x00\x21\x00\x04\x00\x30\x00\x29\x00\x30\x00\x26\x00\x27\x00\x04\x00\x29\x00\x0c\x00\x30\x00\x02\x00\x03\x00\x14\x00\x05\x00\x30\x00\x04\x00\x0e\x00\x09\x00\x24\x00\x24\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x04\x00\x04\x00\x24\x00\x16\x00\x04\x00\x24\x00\x09\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x04\x00\x04\x00\x21\x00\x1f\x00\x20\x00\x09\x00\x04\x00\x26\x00\x27\x00\x0c\x00\x29\x00\x02\x00\x03\x00\x0d\x00\x05\x00\x1f\x00\x20\x00\x30\x00\x09\x00\x1f\x00\x20\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x04\x00\x04\x00\x04\x00\x16\x00\x21\x00\x24\x00\x09\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x00\x00\x04\x00\x21\x00\x03\x00\x04\x00\x13\x00\x22\x00\x26\x00\x27\x00\x02\x00\x29\x00\x0e\x00\x05\x00\x04\x00\x04\x00\x0f\x00\x10\x00\x30\x00\x01\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x01\x00\x12\x00\x13\x00\x2f\x00\x30\x00\x06\x00\x01\x00\x17\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x15\x00\x01\x00\x17\x00\x1f\x00\x20\x00\x03\x00\x06\x00\x26\x00\x27\x00\x01\x00\x29\x00\x09\x00\x1f\x00\x20\x00\x15\x00\x24\x00\x17\x00\x30\x00\x25\x00\x06\x00\x07\x00\x08\x00\x2b\x00\x04\x00\x16\x00\x2e\x00\x2f\x00\x04\x00\x1a\x00\x24\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x21\x00\x2b\x00\x12\x00\x13\x00\x2e\x00\x2f\x00\x12\x00\x13\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x04\x00\x23\x00\x30\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x06\x00\x07\x00\x08\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x05\x00\x04\x00\x2b\x00\x23\x00\x0a\x00\x2e\x00\x2f\x00\x22\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x30\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x0a\x00\x21\x00\x19\x00\x18\x00\x14\x00\x0d\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0b\x00\x08\x00\x05\x00\x2f\x00\x1d\x00\x0a\x00\x22\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2f\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x19\x00\x0c\x00\x0c\x00\x0c\x00\x14\x00\x0a\x00\x0c\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0c\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\x0c\x00\x2f\x00\x02\x00\x0b\x00\x0a\x00\x04\x00\x1b\x00\x1c\x00\x1d\x00\x1e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0e\x00\x15\x00\x16\x00\x17\x00\x18\x00\x0a\x00\x29\x00\x1c\x00\x1d\x00\x1e\x00\x03\x00\x1f\x00\x20\x00\x1e\x00\x2f\x00\x02\x00\x09\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1e\x00\x1c\x00\x1d\x00\x1e\x00\x2a\x00\x0a\x00\x2f\x00\x16\x00\x07\x00\x0c\x00\x18\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x21\x00\x2f\x00\x03\x00\x04\x00\x0a\x00\x1c\x00\x1d\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x30\x00\x30\x00\x28\x00\x10\x00\x11\x00\x0a\x00\x30\x00\x10\x00\x30\x00\x0a\x00\x1c\x00\x1d\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x1c\x00\x1d\x00\x30\x00\x10\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x2f\x00\x1c\x00\x1d\x00\x13\x00\x0a\x00\x2f\x00\x1c\x00\x1d\x00\x08\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1f\x00\x20\x00\x30\x00\x1c\x00\x1d\x00\x0a\x00\x25\x00\x04\x00\x1c\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x08\x00\x2f\x00\x03\x00\x04\x00\x0a\x00\x0c\x00\x04\x00\x30\x00\x1c\x00\x15\x00\x16\x00\x17\x00\x18\x00\x0a\x00\x30\x00\x10\x00\x11\x00\x0c\x00\x30\x00\x1f\x00\x20\x00\x04\x00\x1c\x00\x15\x00\x16\x00\x17\x00\x18\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\x1f\x00\x20\x00\x0b\x00\x2f\x00\x0a\x00\x15\x00\x16\x00\x17\x00\x18\x00\x07\x00\x04\x00\x30\x00\x30\x00\x04\x00\x07\x00\x1f\x00\x20\x00\x16\x00\x17\x00\x18\x00\x05\x00\x30\x00\x1c\x00\x2b\x00\x04\x00\x2f\x00\x1f\x00\x20\x00\x16\x00\x17\x00\x18\x00\x16\x00\x17\x00\x18\x00\x01\x00\x04\x00\x2f\x00\x1f\x00\x20\x00\x2f\x00\x1f\x00\x20\x00\x16\x00\x17\x00\x18\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x1f\x00\x20\x00\x16\x00\x17\x00\x18\x00\x28\x00\x2f\x00\x18\x00\x2a\x00\x1c\x00\x2f\x00\x1f\x00\x20\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x19\x00\x27\x00\x23\x00\x1e\x00\x1f\x00\x20\x00\x1e\x00\x1f\x00\x20\x00\xff\xff\x25\x00\x1f\x00\x20\x00\x25\x00\x29\x00\xff\xff\xff\xff\x25\x00\x02\x00\x26\x00\x2f\x00\x30\x00\x00\x00\x2f\x00\xff\xff\x03\x00\x04\x00\x2f\x00\x30\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\xff\xff\x00\x00\x0f\x00\x10\x00\x03\x00\x04\x00\xff\xff\x00\x00\x1f\x00\x20\x00\x03\x00\x04\x00\xff\xff\xff\xff\x25\x00\xff\xff\x0f\x00\x10\x00\x29\x00\xff\xff\xff\xff\xff\xff\x00\x00\x10\x00\x2f\x00\x03\x00\x04\x00\x00\x00\xff\xff\xff\xff\x03\x00\x04\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x10\x00\xff\xff\xff\xff\xff\xff\xff\xff\x10\x00\xff\xff\xff\xff\x1b\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x00\x00\x01\x00\x02\x00\x03\x00\x00\x00\x01\x00\x02\x00\x03\x00\x1b\x00\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\x0a\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x28\x00\x43\x00\x6f\x00\x70\x00\xcf\x00\x22\x00\xc5\xff\x98\xff\x98\xff\x9d\x00\x98\xff\x9e\x00\xaf\xff\xcc\x00\x98\xff\xde\x00\xcf\xff\x98\xff\x98\xff\x98\xff\x98\xff\x9f\x00\x98\xff\x98\xff\xc5\xff\x22\x00\x22\x00\x98\xff\x29\x00\xaf\xff\xaf\xff\x98\xff\x98\xff\x98\xff\x98\xff\x98\xff\x22\x00\x67\x00\x98\xff\x22\x00\xcf\xff\xaf\xff\xc5\xff\x98\xff\x98\xff\x62\x00\x98\xff\xa2\x00\xaf\xff\x98\xff\x98\xff\x76\x00\x98\xff\x98\xff\x28\x00\xca\x00\x98\xff\xa5\x00\x81\x00\x98\xff\x98\xff\x98\xff\x98\xff\x98\xff\x98\xff\x98\xff\x28\x00\x6b\x00\x23\x00\x98\xff\x28\x00\x67\x00\xce\x00\x98\xff\x98\xff\x98\xff\x98\xff\x98\xff\x6b\x00\x22\x00\x98\xff\xa9\x00\x2b\x00\xa1\x00\xcb\x00\x98\xff\x98\xff\x66\x00\x98\xff\x92\xff\x96\x00\x77\x00\x92\xff\xaa\x00\x2b\x00\x98\xff\x97\x00\x2a\x00\x2b\x00\x92\xff\x92\xff\x92\xff\x92\xff\x92\xff\x92\xff\x92\xff\x75\x00\x6b\x00\x51\x00\x98\x00\x78\x00\x67\x00\x6c\x00\x99\x00\x92\xff\x92\xff\x92\xff\x92\xff\x55\x00\x62\x00\x9a\x00\x56\x00\x5b\x00\x52\x00\x7a\x00\x92\xff\x92\xff\xa3\xff\x92\xff\xa3\x00\xa3\xff\x51\x00\x47\x00\xc2\x00\x5d\x00\x92\xff\x5f\x00\xa3\xff\xa3\xff\xa3\xff\xa3\xff\xa3\xff\xa3\xff\xa3\xff\x36\x00\xc3\x00\x54\x00\x25\x00\xff\xff\x37\x00\x5f\x00\x48\x00\xa3\xff\xa3\xff\xa3\xff\xa3\xff\x60\x00\x36\x00\x61\x00\x49\x00\x2b\x00\x96\x00\x37\x00\xa3\xff\xa3\xff\x36\x00\xa3\xff\x97\x00\x45\x00\x46\x00\x60\x00\x62\x00\x61\x00\xa3\xff\x47\x00\xd2\x00\x72\x00\x70\x00\x22\x00\x51\x00\x98\x00\x3a\x00\x25\x00\x51\x00\x99\x00\x62\x00\x22\x00\x38\x00\x39\x00\x3a\x00\x25\x00\x9a\x00\x22\x00\x7e\x00\x54\x00\x3a\x00\x25\x00\x53\x00\x54\x00\x22\x00\x38\x00\x39\x00\x3a\x00\x25\x00\x80\x00\x7c\x00\xff\xff\x22\x00\x38\x00\x39\x00\x3a\x00\x25\x00\x90\x00\x91\x00\x92\x00\x93\x00\x94\x00\x95\x00\x71\x00\x72\x00\x70\x00\x89\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x8f\x00\x8c\x00\x22\x00\x25\x00\x31\x00\x3a\x00\x25\x00\x26\x00\x90\x00\x91\x00\x92\x00\x93\x00\x94\x00\x95\x00\xff\xff\xba\x00\x40\x00\x32\x00\x33\x00\x3e\x00\x8d\x00\x40\x00\x32\x00\x33\x00\x3e\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x22\x00\x38\x00\x39\x00\x3a\x00\x31\x00\x27\x00\x41\x00\x43\x00\x4f\x00\x64\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x3f\x00\x40\x00\x32\x00\x33\x00\x3e\x00\x31\x00\xe0\x00\x32\x00\x33\x00\x3e\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x68\x00\x6d\x00\x73\x00\x25\x00\xdd\x00\x31\x00\xde\x00\xe1\x00\x32\x00\x33\x00\x3e\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xd7\x00\x32\x00\x33\x00\x3e\x00\x31\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xd9\x00\x32\x00\x33\x00\x3e\x00\x31\x00\xb4\x00\x32\x00\x33\x00\x3e\x00\x88\xff\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x8c\xff\xb5\x00\x32\x00\x33\x00\x3e\x00\x31\x00\xb6\x00\x32\x00\x33\x00\x3e\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x6f\x00\xd4\x00\xd5\x00\xd6\x00\xd7\x00\x31\x00\xa7\x00\xb7\x00\x32\x00\x33\x00\x3e\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xb8\x00\x32\x00\x33\x00\x3e\x00\x31\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\xb9\x00\x32\x00\x33\x00\x3e\x00\x31\x00\xbf\x00\x32\x00\x33\x00\x3e\x00\x25\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xa8\x00\x8b\x00\x32\x00\x33\x00\x3e\x00\x31\x00\x9b\x00\x32\x00\x33\x00\x3e\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x47\x00\xa9\x00\x25\x00\xbc\x00\xbd\x00\x31\x00\x62\x00\x3d\x00\x32\x00\x33\x00\x3e\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x63\x00\xc0\x00\x4e\x00\x4b\x00\x4c\x00\x31\x00\xbf\x00\x32\x00\x33\x00\x9a\x00\x96\x00\x49\x00\x2b\x00\xc2\x00\x25\x00\xc7\x00\x97\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xc9\x00\x32\x00\x33\x00\x34\x00\x6a\x00\x31\x00\x25\x00\x98\x00\xd1\x00\xd2\x00\x51\x00\x99\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x55\x00\x9a\x00\x25\x00\x56\x00\x57\x00\x31\x00\x3a\x00\xaf\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\xff\xff\xff\xff\x66\x00\x58\x00\xc7\x00\x31\x00\xff\xff\x7a\x00\xff\xff\x7c\x00\x3a\x00\xb0\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x3a\x00\xb1\x00\xff\xff\x7e\x00\x31\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x25\x00\x3a\x00\xb2\x00\x80\x00\x31\x00\x25\x00\x3a\x00\xb3\x00\x83\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x45\x00\x46\x00\xff\xff\x3a\x00\x3b\x00\x31\x00\x47\x00\x47\x00\xab\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x55\x00\x84\x00\x25\x00\x56\x00\x57\x00\x31\x00\x85\x00\x47\x00\xff\xff\xac\x00\x86\x00\x4e\x00\x4b\x00\x4c\x00\x86\x00\xff\xff\x58\x00\x59\x00\x88\x00\xff\xff\x49\x00\x2b\x00\x47\x00\xad\x00\x8a\x00\x4e\x00\x4b\x00\x4c\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x47\x00\x49\x00\x2b\x00\x89\x00\x25\x00\x31\x00\x4d\x00\x4e\x00\x4b\x00\x4c\x00\xa0\x00\x47\x00\xff\xff\xff\xff\x47\x00\xa1\x00\x49\x00\x2b\x00\xe4\x00\x4b\x00\x4c\x00\xa5\x00\xff\xff\x3c\x00\x22\x00\x47\x00\x25\x00\x49\x00\x2b\x00\xe5\x00\x4b\x00\x4c\x00\xdf\x00\x4b\x00\x4c\x00\x43\x00\x47\x00\x25\x00\x49\x00\x2b\x00\x25\x00\x49\x00\x2b\x00\xd8\x00\x4b\x00\x4c\x00\x90\x00\x91\x00\x92\x00\x93\x00\x94\x00\x95\x00\x49\x00\x2b\x00\x4a\x00\x4b\x00\x4c\x00\x66\x00\x25\x00\x51\x00\x6a\x00\xdb\x00\x25\x00\x49\x00\x2b\x00\x90\x00\x91\x00\x92\x00\x93\x00\x94\x00\x95\x00\x6f\x00\xdc\x00\x75\x00\xbb\xff\x45\x00\x46\x00\xbb\xff\x45\x00\x46\x00\x00\x00\x47\x00\x45\x00\x46\x00\x47\x00\xbb\xff\x00\x00\x00\x00\x47\x00\xaf\x00\xbe\x00\x25\x00\xbb\xff\x55\x00\x25\x00\x00\x00\x56\x00\x5b\x00\x25\x00\xbb\xff\x90\x00\x91\x00\x92\x00\x93\x00\x94\x00\x95\x00\x00\x00\x55\x00\xc9\x00\x5d\x00\x56\x00\x5b\x00\x00\x00\x55\x00\x45\x00\x46\x00\x56\x00\x57\x00\x00\x00\x00\x00\x47\x00\x00\x00\x5c\x00\x5d\x00\xbb\xff\x00\x00\x00\x00\x00\x00\x55\x00\xc4\x00\x25\x00\x56\x00\x57\x00\x55\x00\x00\x00\x00\x00\x56\x00\x57\x00\x90\x00\x91\x00\x92\x00\x93\x00\x94\x00\x95\x00\xc5\x00\x00\x00\x00\x00\x00\x00\x00\x00\x5a\x00\x00\x00\x00\x00\xe3\x00\x90\x00\x91\x00\x92\x00\x93\x00\x94\x00\x95\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\xe4\x00\x00\x00\xcd\x00\x00\x00\x00\x00\x00\x00\x6a\x00\x90\x00\x91\x00\x92\x00\x93\x00\x94\x00\x95\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (32, 122) [
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
	(122 , happyReduce_122)
	]

happy_n_terms = 49 :: Int
happy_n_nonterms = 37 :: Int

happyReduce_32 = happySpecReduce_1  0# happyReduction_32
happyReduction_32 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn35
		 ((read ( happy_var_1)) :: Integer
	)}

happyReduce_33 = happySpecReduce_1  1# happyReduction_33
happyReduction_33 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn36
		 ((read ( happy_var_1)) :: Double
	)}

happyReduce_34 = happySpecReduce_1  2# happyReduction_34
happyReduction_34 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn37
		 (happy_var_1
	)}

happyReduce_35 = happySpecReduce_1  3# happyReduction_35
happyReduction_35 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TC happy_var_1)) -> 
	happyIn38
		 ((read ( happy_var_1)) :: Char
	)}

happyReduce_36 = happySpecReduce_1  4# happyReduction_36
happyReduction_36 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Id happy_var_1)) -> 
	happyIn39
		 (Id (happy_var_1)
	)}

happyReduce_37 = happyReduce 4# 5# happyReduction_37
happyReduction_37 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut39 happy_x_2 of { happy_var_2 -> 
	case happyOut41 happy_x_4 of { happy_var_4 -> 
	happyIn40
		 (AbsPascal.PProgram happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_38 = happySpecReduce_3  6# happyReduction_38
happyReduction_38 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	case happyOut55 happy_x_2 of { happy_var_2 -> 
	happyIn41
		 (AbsPascal.PBlock happy_var_1 happy_var_2
	)}}

happyReduce_39 = happySpecReduce_3  7# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut43 happy_x_1 of { happy_var_1 -> 
	case happyOut48 happy_x_2 of { happy_var_2 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn42
		 (AbsPascal.PPart happy_var_1 happy_var_2 happy_var_3
	)}}}

happyReduce_40 = happySpecReduce_0  8# happyReduction_40
happyReduction_40  =  happyIn43
		 (AbsPascal.PPartConstEmpty
	)

happyReduce_41 = happyReduce 4# 8# happyReduction_41
happyReduction_41 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut68 happy_x_2 of { happy_var_2 -> 
	case happyOut44 happy_x_3 of { happy_var_3 -> 
	happyIn43
		 (AbsPascal.PPartConst (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_42 = happySpecReduce_3  9# happyReduction_42
happyReduction_42 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 (AbsPascal.PConst happy_var_1 happy_var_3
	)}}

happyReduce_43 = happySpecReduce_1  10# happyReduction_43
happyReduction_43 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 (AbsPascal.PValInteger happy_var_1
	)}

happyReduce_44 = happySpecReduce_1  10# happyReduction_44
happyReduction_44 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 (AbsPascal.PValDouble happy_var_1
	)}

happyReduce_45 = happySpecReduce_1  10# happyReduction_45
happyReduction_45 happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 (AbsPascal.PValString happy_var_1
	)}

happyReduce_46 = happySpecReduce_1  10# happyReduction_46
happyReduction_46 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 (AbsPascal.PValChar happy_var_1
	)}

happyReduce_47 = happySpecReduce_0  11# happyReduction_47
happyReduction_47  =  happyIn46
		 (AbsPascal.PPartVarsEmpty
	)

happyReduce_48 = happyReduce 4# 11# happyReduction_48
happyReduction_48 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut69 happy_x_2 of { happy_var_2 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 (AbsPascal.PPartVars (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_49 = happySpecReduce_3  12# happyReduction_49
happyReduction_49 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut71 happy_x_1 of { happy_var_1 -> 
	case happyOut39 happy_x_3 of { happy_var_3 -> 
	happyIn47
		 (AbsPascal.PVar happy_var_1 happy_var_3
	)}}

happyReduce_50 = happySpecReduce_0  13# happyReduction_50
happyReduction_50  =  happyIn48
		 (AbsPascal.PPartTypesEmpty
	)

happyReduce_51 = happyReduce 4# 13# happyReduction_51
happyReduction_51 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut70 happy_x_2 of { happy_var_2 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (AbsPascal.PPartTypes (reverse happy_var_2) happy_var_3
	) `HappyStk` happyRest}}

happyReduce_52 = happySpecReduce_3  14# happyReduction_52
happyReduction_52 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (AbsPascal.PType happy_var_1 happy_var_3
	)}}

happyReduce_53 = happySpecReduce_3  15# happyReduction_53
happyReduction_53 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut71 happy_x_2 of { happy_var_2 -> 
	happyIn50
		 (AbsPascal.PCustomTypeEnum happy_var_2
	)}

happyReduce_54 = happySpecReduce_3  15# happyReduction_54
happyReduction_54 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	happyIn50
		 (AbsPascal.PCustomTypeSubRange happy_var_1 happy_var_3
	)}}

happyReduce_55 = happySpecReduce_2  15# happyReduction_55
happyReduction_55 happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_2 of { happy_var_2 -> 
	happyIn50
		 (AbsPascal.PCustomTypePointer happy_var_2
	)}

happyReduce_56 = happyReduce 6# 15# happyReduction_56
happyReduction_56 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut52 happy_x_3 of { happy_var_3 -> 
	case happyOut39 happy_x_6 of { happy_var_6 -> 
	happyIn50
		 (AbsPascal.PTypeArray happy_var_3 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_57 = happySpecReduce_3  15# happyReduction_57
happyReduction_57 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_2 of { happy_var_2 -> 
	happyIn50
		 (AbsPascal.PTypeRecord happy_var_2
	)}

happyReduce_58 = happySpecReduce_1  15# happyReduction_58
happyReduction_58 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 (AbsPascal.PCustomTypeId happy_var_1
	)}

happyReduce_59 = happySpecReduce_1  16# happyReduction_59
happyReduction_59 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (AbsPascal.PRangeTypeId happy_var_1
	)}

happyReduce_60 = happySpecReduce_1  16# happyReduction_60
happyReduction_60 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (AbsPascal.PRangeTypeChar happy_var_1
	)}

happyReduce_61 = happySpecReduce_1  16# happyReduction_61
happyReduction_61 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (AbsPascal.PRangeTypeInteger happy_var_1
	)}

happyReduce_62 = happySpecReduce_3  17# happyReduction_62
happyReduction_62 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (AbsPascal.PTypeArrayLType happy_var_1 happy_var_3
	)}}

happyReduce_63 = happySpecReduce_0  18# happyReduction_63
happyReduction_63  =  happyIn53
		 ([]
	)

happyReduce_64 = happySpecReduce_1  18# happyReduction_64
happyReduction_64 happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 ((:[]) happy_var_1
	)}

happyReduce_65 = happySpecReduce_3  18# happyReduction_65
happyReduction_65 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	case happyOut53 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_66 = happySpecReduce_3  19# happyReduction_66
happyReduction_66 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn54
		 (AbsPascal.PRecordFields happy_var_1 happy_var_3
	)}}

happyReduce_67 = happySpecReduce_3  20# happyReduction_67
happyReduction_67 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut56 happy_x_2 of { happy_var_2 -> 
	happyIn55
		 (AbsPascal.PBody happy_var_2
	)}

happyReduce_68 = happySpecReduce_0  21# happyReduction_68
happyReduction_68  =  happyIn56
		 ([]
	)

happyReduce_69 = happySpecReduce_1  21# happyReduction_69
happyReduction_69 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn56
		 ((:[]) happy_var_1
	)}

happyReduce_70 = happySpecReduce_3  21# happyReduction_70
happyReduction_70 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_3 of { happy_var_3 -> 
	happyIn56
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_71 = happySpecReduce_1  22# happyReduction_71
happyReduction_71 happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	happyIn57
		 (AbsPascal.PListSimpleInstruction happy_var_1
	)}

happyReduce_72 = happySpecReduce_1  22# happyReduction_72
happyReduction_72 happy_x_1
	 =  case happyOut59 happy_x_1 of { happy_var_1 -> 
	happyIn57
		 (AbsPascal.PListCompositeInstruction happy_var_1
	)}

happyReduce_73 = happySpecReduce_3  23# happyReduction_73
happyReduction_73 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut66 happy_x_1 of { happy_var_1 -> 
	case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn58
		 (AbsPascal.PSimpleInstructionAssignment happy_var_1 happy_var_3
	)}}

happyReduce_74 = happySpecReduce_2  23# happyReduction_74
happyReduction_74 happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	case happyOut60 happy_x_2 of { happy_var_2 -> 
	happyIn58
		 (AbsPascal.PSimpleInstructionProcFunc happy_var_1 happy_var_2
	)}}

happyReduce_75 = happyReduce 4# 24# happyReduction_75
happyReduction_75 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut62 happy_x_2 of { happy_var_2 -> 
	case happyOut57 happy_x_4 of { happy_var_4 -> 
	happyIn59
		 (AbsPascal.PCompositeInstructionIf happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_76 = happyReduce 6# 24# happyReduction_76
happyReduction_76 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut62 happy_x_2 of { happy_var_2 -> 
	case happyOut57 happy_x_4 of { happy_var_4 -> 
	case happyOut57 happy_x_6 of { happy_var_6 -> 
	happyIn59
		 (AbsPascal.PCompositeInstructionIfElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_77 = happyReduce 4# 24# happyReduction_77
happyReduction_77 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut56 happy_x_2 of { happy_var_2 -> 
	case happyOut62 happy_x_4 of { happy_var_4 -> 
	happyIn59
		 (AbsPascal.PCompositeInstructionRepeat happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_78 = happyReduce 8# 24# happyReduction_78
happyReduction_78 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut39 happy_x_2 of { happy_var_2 -> 
	case happyOut62 happy_x_4 of { happy_var_4 -> 
	case happyOut62 happy_x_6 of { happy_var_6 -> 
	case happyOut57 happy_x_8 of { happy_var_8 -> 
	happyIn59
		 (AbsPascal.PCompositeInstructionForTo happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

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
	 = case happyOut39 happy_x_2 of { happy_var_2 -> 
	case happyOut62 happy_x_4 of { happy_var_4 -> 
	case happyOut62 happy_x_6 of { happy_var_6 -> 
	case happyOut57 happy_x_8 of { happy_var_8 -> 
	happyIn59
		 (AbsPascal.PCompositeInstructionForDownTo happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_80 = happySpecReduce_0  25# happyReduction_80
happyReduction_80  =  happyIn60
		 (AbsPascal.PParamsEmpty
	)

happyReduce_81 = happySpecReduce_3  25# happyReduction_81
happyReduction_81 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut61 happy_x_2 of { happy_var_2 -> 
	happyIn60
		 (AbsPascal.PParms happy_var_2
	)}

happyReduce_82 = happySpecReduce_0  26# happyReduction_82
happyReduction_82  =  happyIn61
		 ([]
	)

happyReduce_83 = happySpecReduce_1  26# happyReduction_83
happyReduction_83 happy_x_1
	 =  case happyOut62 happy_x_1 of { happy_var_1 -> 
	happyIn61
		 ((:[]) happy_var_1
	)}

happyReduce_84 = happySpecReduce_3  26# happyReduction_84
happyReduction_84 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut62 happy_x_1 of { happy_var_1 -> 
	case happyOut61 happy_x_3 of { happy_var_3 -> 
	happyIn61
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_85 = happySpecReduce_1  27# happyReduction_85
happyReduction_85 happy_x_1
	 =  case happyOut65 happy_x_1 of { happy_var_1 -> 
	happyIn62
		 (AbsPascal.PGeneralExpSimple happy_var_1
	)}

happyReduce_86 = happySpecReduce_3  27# happyReduction_86
happyReduction_86 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut62 happy_x_1 of { happy_var_1 -> 
	case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn62
		 (AbsPascal.PGeneralExpMayor happy_var_1 happy_var_3
	)}}

happyReduce_87 = happySpecReduce_3  27# happyReduction_87
happyReduction_87 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut62 happy_x_1 of { happy_var_1 -> 
	case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn62
		 (AbsPascal.PGeneralExpMinor happy_var_1 happy_var_3
	)}}

happyReduce_88 = happySpecReduce_3  27# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut62 happy_x_1 of { happy_var_1 -> 
	case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn62
		 (AbsPascal.PGeneralExpEqual happy_var_1 happy_var_3
	)}}

happyReduce_89 = happySpecReduce_3  27# happyReduction_89
happyReduction_89 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut62 happy_x_1 of { happy_var_1 -> 
	case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn62
		 (AbsPascal.PGeneralExpMayorEqual happy_var_1 happy_var_3
	)}}

happyReduce_90 = happySpecReduce_3  27# happyReduction_90
happyReduction_90 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut62 happy_x_1 of { happy_var_1 -> 
	case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn62
		 (AbsPascal.PGeneralExpMinorEqual happy_var_1 happy_var_3
	)}}

happyReduce_91 = happySpecReduce_3  27# happyReduction_91
happyReduction_91 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut62 happy_x_1 of { happy_var_1 -> 
	case happyOut62 happy_x_3 of { happy_var_3 -> 
	happyIn62
		 (AbsPascal.PGeneralExpDistinct happy_var_1 happy_var_3
	)}}

happyReduce_92 = happySpecReduce_1  27# happyReduction_92
happyReduction_92 happy_x_1
	 =  case happyOut65 happy_x_1 of { happy_var_1 -> 
	happyIn62
		 (happy_var_1
	)}

happyReduce_93 = happySpecReduce_1  28# happyReduction_93
happyReduction_93 happy_x_1
	 =  case happyOut45 happy_x_1 of { happy_var_1 -> 
	happyIn63
		 (AbsPascal.PFactorLit happy_var_1
	)}

happyReduce_94 = happySpecReduce_1  28# happyReduction_94
happyReduction_94 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn63
		 (AbsPascal.PFactorId happy_var_1
	)}

happyReduce_95 = happySpecReduce_3  28# happyReduction_95
happyReduction_95 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	case happyOut66 happy_x_3 of { happy_var_3 -> 
	happyIn63
		 (AbsPascal.PFactorAccId happy_var_1 happy_var_3
	)}}

happyReduce_96 = happySpecReduce_3  28# happyReduction_96
happyReduction_96 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut62 happy_x_2 of { happy_var_2 -> 
	happyIn63
		 (happy_var_2
	)}

happyReduce_97 = happySpecReduce_1  29# happyReduction_97
happyReduction_97 happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	happyIn64
		 (AbsPascal.PTermFactor happy_var_1
	)}

happyReduce_98 = happySpecReduce_3  29# happyReduction_98
happyReduction_98 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	case happyOut64 happy_x_3 of { happy_var_3 -> 
	happyIn64
		 (AbsPascal.PTermExpMul happy_var_1 happy_var_3
	)}}

happyReduce_99 = happySpecReduce_3  29# happyReduction_99
happyReduction_99 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	case happyOut64 happy_x_3 of { happy_var_3 -> 
	happyIn64
		 (AbsPascal.PTermExpDiv1 happy_var_1 happy_var_3
	)}}

happyReduce_100 = happySpecReduce_3  29# happyReduction_100
happyReduction_100 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	case happyOut64 happy_x_3 of { happy_var_3 -> 
	happyIn64
		 (AbsPascal.PTermExpDiv2 happy_var_1 happy_var_3
	)}}

happyReduce_101 = happySpecReduce_3  29# happyReduction_101
happyReduction_101 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	case happyOut64 happy_x_3 of { happy_var_3 -> 
	happyIn64
		 (AbsPascal.PTermExpMod happy_var_1 happy_var_3
	)}}

happyReduce_102 = happySpecReduce_3  29# happyReduction_102
happyReduction_102 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	case happyOut64 happy_x_3 of { happy_var_3 -> 
	happyIn64
		 (AbsPascal.PTermExpAnd happy_var_1 happy_var_3
	)}}

happyReduce_103 = happySpecReduce_1  29# happyReduction_103
happyReduction_103 happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	happyIn64
		 (happy_var_1
	)}

happyReduce_104 = happySpecReduce_1  30# happyReduction_104
happyReduction_104 happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	happyIn65
		 (AbsPascal.PSimpleExpTerm happy_var_1
	)}

happyReduce_105 = happySpecReduce_3  30# happyReduction_105
happyReduction_105 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	case happyOut63 happy_x_3 of { happy_var_3 -> 
	happyIn65
		 (AbsPascal.PSimpleExpAdd happy_var_1 happy_var_3
	)}}

happyReduce_106 = happySpecReduce_3  30# happyReduction_106
happyReduction_106 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	case happyOut63 happy_x_3 of { happy_var_3 -> 
	happyIn65
		 (AbsPascal.PSimpleExpEquals happy_var_1 happy_var_3
	)}}

happyReduce_107 = happySpecReduce_3  30# happyReduction_107
happyReduction_107 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	case happyOut63 happy_x_3 of { happy_var_3 -> 
	happyIn65
		 (AbsPascal.PSimpleExpMinus happy_var_1 happy_var_3
	)}}

happyReduce_108 = happySpecReduce_2  30# happyReduction_108
happyReduction_108 happy_x_2
	happy_x_1
	 =  case happyOut65 happy_x_2 of { happy_var_2 -> 
	happyIn65
		 (AbsPascal.PSimpleExpInvSign happy_var_2
	)}

happyReduce_109 = happySpecReduce_1  30# happyReduction_109
happyReduction_109 happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	happyIn65
		 (happy_var_1
	)}

happyReduce_110 = happySpecReduce_0  31# happyReduction_110
happyReduction_110  =  happyIn66
		 ([]
	)

happyReduce_111 = happySpecReduce_1  31# happyReduction_111
happyReduction_111 happy_x_1
	 =  case happyOut67 happy_x_1 of { happy_var_1 -> 
	happyIn66
		 ((:[]) happy_var_1
	)}

happyReduce_112 = happySpecReduce_3  31# happyReduction_112
happyReduction_112 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut67 happy_x_1 of { happy_var_1 -> 
	case happyOut66 happy_x_3 of { happy_var_3 -> 
	happyIn66
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_113 = happySpecReduce_1  32# happyReduction_113
happyReduction_113 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn67
		 (AbsPascal.PAccId happy_var_1
	)}

happyReduce_114 = happySpecReduce_0  33# happyReduction_114
happyReduction_114  =  happyIn68
		 ([]
	)

happyReduce_115 = happySpecReduce_3  33# happyReduction_115
happyReduction_115 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut68 happy_x_1 of { happy_var_1 -> 
	case happyOut44 happy_x_2 of { happy_var_2 -> 
	happyIn68
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_116 = happySpecReduce_0  34# happyReduction_116
happyReduction_116  =  happyIn69
		 ([]
	)

happyReduce_117 = happySpecReduce_3  34# happyReduction_117
happyReduction_117 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut69 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_2 of { happy_var_2 -> 
	happyIn69
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_118 = happySpecReduce_0  35# happyReduction_118
happyReduction_118  =  happyIn70
		 ([]
	)

happyReduce_119 = happySpecReduce_3  35# happyReduction_119
happyReduction_119 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut70 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_2 of { happy_var_2 -> 
	happyIn70
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_120 = happySpecReduce_0  36# happyReduction_120
happyReduction_120  =  happyIn71
		 ([]
	)

happyReduce_121 = happySpecReduce_1  36# happyReduction_121
happyReduction_121 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn71
		 ((:[]) happy_var_1
	)}

happyReduce_122 = happySpecReduce_3  36# happyReduction_122
happyReduction_122 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	case happyOut71 happy_x_3 of { happy_var_3 -> 
	happyIn71
		 ((:) happy_var_1 happy_var_3
	)}}

happyNewToken action sts stk [] =
	happyDoAction 48# notHappyAtAll action sts stk []

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
	PT _ (TI happy_dollar_dollar) -> cont 43#;
	PT _ (TD happy_dollar_dollar) -> cont 44#;
	PT _ (TL happy_dollar_dollar) -> cont 45#;
	PT _ (TC happy_dollar_dollar) -> cont 46#;
	PT _ (T_Id happy_dollar_dollar) -> cont 47#;
	_ -> happyError' (tk:tks)
	}

happyError_ 48# tk tks = happyError' tks
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
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut40 x))

pBlock tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut41 x))

pParts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut42 x))

pConsts tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut43 x))

pConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (happyOut44 x))

pLiteral tks = happySomeParser where
  happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (happyOut45 x))

pVars tks = happySomeParser where
  happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (happyOut46 x))

pVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (happyOut47 x))

pTypes tks = happySomeParser where
  happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (happyOut48 x))

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (happyOut49 x))

pCustomType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (happyOut50 x))

pRangeType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (happyOut51 x))

pArrType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (happyOut52 x))

pListFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 13# tks) (\x -> happyReturn (happyOut53 x))

pFields tks = happySomeParser where
  happySomeParser = happyThen (happyParse 14# tks) (\x -> happyReturn (happyOut54 x))

pBody tks = happySomeParser where
  happySomeParser = happyThen (happyParse 15# tks) (\x -> happyReturn (happyOut55 x))

pListInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 16# tks) (\x -> happyReturn (happyOut56 x))

pInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 17# tks) (\x -> happyReturn (happyOut57 x))

pSimpleInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 18# tks) (\x -> happyReturn (happyOut58 x))

pCompositeInstruction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 19# tks) (\x -> happyReturn (happyOut59 x))

pParms tks = happySomeParser where
  happySomeParser = happyThen (happyParse 20# tks) (\x -> happyReturn (happyOut60 x))

pListExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 21# tks) (\x -> happyReturn (happyOut61 x))

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 22# tks) (\x -> happyReturn (happyOut62 x))

pExp3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 23# tks) (\x -> happyReturn (happyOut63 x))

pExp2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 24# tks) (\x -> happyReturn (happyOut64 x))

pExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 25# tks) (\x -> happyReturn (happyOut65 x))

pListAccId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 26# tks) (\x -> happyReturn (happyOut66 x))

pAccId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 27# tks) (\x -> happyReturn (happyOut67 x))

pListConst tks = happySomeParser where
  happySomeParser = happyThen (happyParse 28# tks) (\x -> happyReturn (happyOut68 x))

pListVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 29# tks) (\x -> happyReturn (happyOut69 x))

pListType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 30# tks) (\x -> happyReturn (happyOut70 x))

pListId tks = happySomeParser where
  happySomeParser = happyThen (happyParse 31# tks) (\x -> happyReturn (happyOut71 x))

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
