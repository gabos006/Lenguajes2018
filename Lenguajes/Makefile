all:
	happy -gca ParPascalCorr.y
	alex -g LexPascalCorr.x
	ghc --make TestPascalCorr.hs -o TestPascalCorr

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

distclean: clean
	-rm -f DocPascalCorr.* LexPascalCorr.* ParPascalCorr.* LayoutPascalCorr.* SkelPascalCorr.* PrintPascalCorr.* TestPascalCorr.* AbsPascalCorr.* TestPascalCorr ErrM.* SharedString.* ComposOp.* Pascal_corr.dtd XMLPascalCorr.* Makefile*
	

