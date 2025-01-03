main: Lexer.hs Parser.hs Main.hs Evaluator.hs
	ghc -o arsenal Main.hs

Lexer.hs: Lexer.x
	alex Lexer.x
	
Parser.hs: Parser.y
	happy Parser.y

clean:
	rm -f arsenal  
	rm -f Lexer.hs
	rm -f Parser.hs
	rm -f *.o
	rm -f *.hi
