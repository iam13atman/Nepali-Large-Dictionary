%{
#include "config_reader.tab.h"
#include <stdlib.h>
#include <string.h>


%}

IDENTIFIER  [a-zA-Z0-9_]+


%%

\#.*       { /* ignore python style comments */ }
"//".*     { /* ignore these types of comments as well */ }
[\=\:]|":="              { return EQUAL; }

{IDENTIFIER}      { yylval = strdup(yytext);
                    return ID; }
\n             { return EOL; }
.          { }
