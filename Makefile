all:
	bison -d parser.y
	flex lexer.l
	g++ -o lappulang main.cpp parser.tab.c lex.yy.c -std=c++11
