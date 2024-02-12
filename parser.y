%{
#include <stdio.h>
#include <string.h>
extern int yylex();
void yyerror(const char *s);
%}
%union {
        int ival;
        float fval;
        char name[100];
}

%token SY VAR NUM EQ 
%type<ival> NUM
%type<name> VAR 

%%
input: line { printf("Parsed successfully.\n"); }
     ;
line: SY VAR EQ NUM { printf("Syntax: %s = %d\n", $2, $4); }
    ;

%%
void yyerror(const char *s) {
    if (strlen(s)>0) 
         fprintf(stderr, "Error: <%s>\n", s);
}

int main() {
    yyparse();
    return 0;
}

