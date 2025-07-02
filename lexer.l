%{
#include "parser.tab.h"
%}

%option noyywrap

%%
"bana"          return VAR;
"agar"          return IF;
"jabtak"        return WHILE;
"dikhao"        return PRINT;
"sach"          return TRUE;
"jhoot"         return FALSE;

[0-9]+          { yylval.ival = atoi(yytext); return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]*    { yylval.sval = strdup(yytext); return ID; }

"=="            return EQ;
"!="            return NEQ;
">="            return GE;
"<="            return LE;
">"             return GT;
"<"             return LT;

"+"             return '+';
"-"             return '-';
"*"             return '*';
"/"             return '/';
"="             return '=';
";"             return ';';
"("             return '(';
")"             return ')';
"{"             return '{';
"}"             return '}';

[ \t\n]+        ;  // skip whitespace

.               { printf("Unexpected character: %s\n", yytext); }

%%
