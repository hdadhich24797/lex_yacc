%{
#include "y.tab.h"
%}

%option noyywrap

alpha [a-zA-Z]
digit [0-9]
%%
"int" { strcpy(yylval.code,yytext); return DATATYPE; }
"float" {strcpy(yylval.code,yytext);  return DATATYPE;}
"char" { strcpy(yylval.code,yytext); return DATATYPE; }
"double" { strcpy(yylval.code,yytext); return DATATYPE; }
"," return COMMA;
{alpha}({alpha}|{digit})*  {strcpy(yylval.code,yytext); return VAR; }
[0-9]+ { strcpy(yylval.code,yytext); return NUM; }
%%
