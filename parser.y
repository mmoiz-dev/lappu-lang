%{
#include <cstdio>
#include <cstdlib>
#include <cstring>

void yyerror(const char* s);
int yylex();

%}

%union {
    int ival;
    char* sval;
}

%token <ival> NUMBER
%token <sval> ID
%token VAR IF WHILE PRINT TRUE FALSE
%token EQ NEQ GE LE GT LT

%type <ival> expression

%%

program:
    statements
    ;

statements:
    statements statement
  | statement
  ;

statement:
    VAR ID '=' expression ';'     { printf("Declared %s = %d\n", $2, $4); }
  | ID '=' expression ';'         { printf("Updated %s = %d\n", $1, $3); }
  | PRINT expression ';'          { printf("Output: %d\n", $2); }
  | IF '(' expression ')' block   { if ($3) { /* handle block */ } }
  | WHILE '(' expression ')' block { while ($3) { /* handle block */ break; } }
  ;

block:
    '{' statements '}'
  ;

expression:
    expression '+' expression   { $$ = $1 + $3; }
  | expression '-' expression   { $$ = $1 - $3; }
  | expression '*' expression   { $$ = $1 * $3; }
  | expression '/' expression   { $$ = $1 / $3; }
  | expression EQ expression    { $$ = $1 == $3; }
  | expression NEQ expression   { $$ = $1 != $3; }
  | expression GT expression    { $$ = $1 > $3; }
  | expression LT expression    { $$ = $1 < $3; }
  | expression GE expression    { $$ = $1 >= $3; }
  | expression LE expression    { $$ = $1 <= $3; }
  | NUMBER                      { $$ = $1; }
  | ID { $$ = 0; /* Placeholder for variable lookup */ }
  ;

%%

void yyerror(const char* s) {
    fprintf(stderr, "Error: %s\n", s);
}
