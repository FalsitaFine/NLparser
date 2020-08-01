/* ===== Definition Section ===== */

%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
static int linenumber = 1;
%}

%union {
	char *str;
}


%token <str> NOUN
%token <str> VERB
%token <str> ADJ
%token <str> ADV
%token <str> PREP

%type <str> paragraph
%type <str> sentence
%type <str> noun
%type <str> verb
%type <str> adj
%type <str> adv
%type <str> prep

%start paragraph

%%

/* ==== Grammar Section ==== */

/* Productions */               /* Semantic actions */

paragraph : sentence
{
	printf("Paragraph formed\n");
}
|	paragraph sentence
{
	printf("Combining sentence into paragraph\n");
}
;

sentence : noun verb noun
{
	printf("Recognize (Noun)%s (Verb)%s (Noun)%s as sentence\n", $1, $2, $3);
	//Sample test: we are happy dogs
}
|	verb noun
{
	printf("Recognize (Verb)%s (Noun)%s as sentence\n", $1, $2);
	//Sample test: welcome to the planetarium
}
;

noun : NOUN
{
	printf("Recognizing (Noun Token) %s \n", $1);
}
| adj noun
{
	char * strc = (char *) malloc(2 + strlen($1)+ strlen($2) );
	strcpy(strc, $1);
	strcat(strc, " ");
	strcat(strc, $2);
	$$ = strc;

	printf("Recognize (Adj)%s (Noun)%s as Noun [%s]\n", $1, $2, $$);
}
| noun noun
{
	char * strc = (char *) malloc(2 + strlen($1)+ strlen($2) );
	strcpy(strc, $1);
	strcat(strc, " ");
	strcat(strc, $2);
	$$ = strc;

	printf("Recognize (Noun)%s (Noun)%s as Noun [%s]\n", $1, $2, $$);
}
;

verb : VERB
{
	printf("Recognizing (Verb Token) %s \n", $1);
}
| adv verb
{
	char * strc = (char *) malloc(2 + strlen($1)+ strlen($2) );
	strcpy(strc, $1);
	strcat(strc, " ");
	strcat(strc, $2);
	$$ = strc;
	printf("Recognize (Adv)%s (Verb)%s as Verb [%s] \n", $1, $2, $$);
}
| verb prep
{
	char * strc = (char *) malloc(2 + strlen($1)+ strlen($2) );
	strcpy(strc, $1);
	strcat(strc, " ");
	strcat(strc, $2);
	$$ = strc;
	printf("Recognize (Verb)%s (Prep)%s as Verb [%s] \n", $1, $2, $$);
}
| adv prep
{
	char * strc = (char *) malloc(2 + strlen($1)+ strlen($2) );
	strcpy(strc, $1);
	strcat(strc, " ");
	strcat(strc, $2);
	$$ = strc;
	printf("Recognize (Adv)%s (Prep)%s as Verb [%s] \n", $1, $2, $$);
}
| adj prep
{
	char * strc = (char *) malloc(2 + strlen($1)+ strlen($2) );
	strcpy(strc, $1);
	strcat(strc, " ");
	strcat(strc, $2);
	$$ = strc;
	printf("Recognize (Adj)%s (Prep)%s as Verb [%s] \n", $1, $2, $$);
}
;

adj : ADJ
{
	printf("Recognizing (Adj Token) %s \n", $1);
}
;

adv : ADV
{
	printf("Recognizing (Adv Token) %s \n", $1);
}
;

prep : PREP
{
	printf("Recognizing (Prep Token) %s \n", $1);
}
;

%%

#include "lex.yy.c"
main (argc, argv)
int argc;
char *argv[];
  {
        yyin = fopen(argv[1],"r");
        yyparse();
        printf("%s\n", "Parsing completed. No errors found.");
  } 


yyerror (mesg)
char *mesg;
{
    printf("%s\t%d\t%s\t%s\n", "Error found in Line ", linenumber, "next token: ", yytext );
    printf("%s\n", mesg);
    exit(1);
}
