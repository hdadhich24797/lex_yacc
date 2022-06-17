lex second.l
yacc -d second.y
gcc lex.yy.c y.tab.c -w
