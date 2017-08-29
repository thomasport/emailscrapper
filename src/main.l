
%{
#include <stdio.h>
%}


%%
([a-zA-Z0-9][a-zA-Z0-9\-\_\.]+[a-zA-Z0-9]@[a-zA-Z0-9]*[a-zA-Z0-9\.]*[a-zA-Z0-9]) {
  printf("%s\n", yytext);
 }

([a-zA-Z0-9][a-zA-Z0-9\-\_\.]+[a-zA-Z0-9]@[a-zA-Z0-9]*[a-zA-Z0-9\.]*[a-zA-Z0-9\-]) ;
. ;
[[:space:]] ;
\n ;
\- ;
%%

int main() {
  yylex();
  return 0;
}
