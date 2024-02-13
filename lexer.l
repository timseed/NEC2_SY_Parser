%option noyywrap nodefault yylineno
%{
#include <stdio.h>
#include "parser.tab.h"
%}

%%
^SY       { printf("Found SY <%s>\n",yytext);return SY; }
[A-Za-z]+ { printf("Found VAR <%s>\n",yytext);return VAR; }
[0-9]+    { printf("Found NUM <%s>\n",yytext); yylval.ival= atoi(yytext); return NUM; }
[=]       { return EQ; }
[ \t]   {};  // skip whitespace
[\n]     {return EOL;}
%%

