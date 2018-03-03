%{
#include <stdio.h>

int yylex();
void yyerror (char const *);


%}

%locations

%define api.value.type {char*}

%token ID
%token EOL
%token EQUAL


%%

line: %empty
    | line expression EOL {/* maybe print each value?? */}
    ;

expression: ID EQUAL ID {
              printf("%s : %s\n", $1, $3);
            }
          ;


%%


void
yyerror (char const *s)
{
  fprintf (stderr, "%s\n", s);
}
