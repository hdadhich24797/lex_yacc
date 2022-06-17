%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
%}

%token COMMA
%token<code> VAR NUM
%token<code> DATATYPE
%union{
  char code[100];
 }
%%
STMT : DATATYPE VAR COMMA {printf("Datatype\n");}
     ;
%%



int yyerror(char *msg)
{
    printf("error\r\n");
    return 0;
}
int main()
{
    printf("Enter the expr\r\n");
    yyparse();
    return 0;
}

