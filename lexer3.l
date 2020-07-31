/*lexer file*/

%{
#include <stdio.h>

%}

letter   [A-Za-z]
digit    [0-9]

noun_prototype ("rabbit")|("I")
verb_prototype "am"
adj "happy"
adv "highly"

verb ({verb_prototype})("s" | "ing")*
noun ({noun_prototype})("s")*

ws       [ \t]+
newline  "\n"
mk_lparen "("
mk_rparen ")"
mk_lbrace "{"
mk_rbrace "}"
mk_lsqbrace "["
mk_rsqbrace "]"
mk_comma  ","
mk_semicolon ";"

mk_dot  "."
error    .

%%

{ws}            ;   /* do nothing with whitespace */
{verb_prototype}		{yylval.str = strdup(yytext); return VERB;}
{noun_prototype}		{yylval.str = strdup(yytext); return NOUN;}
{adj}		{yylval.str = strdup(yytext); return ADJ;}
{adv}		{yylval.str = strdup(yytext); return ADV;}



{newline}       linenumber += 1;

%%

