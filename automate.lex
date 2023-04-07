%{
#include <math.h>
%}
%option yywrap
%%
00(00*10)*10  {
            printf( "reconnu par A1: %s \n", yytext );
            }
5(65)*3(22)*3(1(22)*3)* {
            printf( "reconu par A2: %s \n", yytext );
            }
00*11*(101*)*  {
            printf( "reconnu par A3: %s \n", yytext);
                    }
abc(a?(bc))*da*  {
            printf( "reconnu par A4: %s \n", yytext );
            }
a(ba)*yx*(z(ba)*yx*)*x*  {
            printf( "reconnu par A5: %s \n", yytext);
            }
0((1)|(010*11*0)|(11*0)) {
            printf( "reconnu par A6: %s \n", yytext );
            }
xb*c(ab+c)*xb(cb)* {
            printf( "reconnu par A7: %s \n", yytext );
            }
0(10)*00(00)*1 {
            printf( "reconnu par A8: %s \n", yytext );
            }
((xy)*z)|((xy)*xk) {
            printf( "reconnu par A9: %s \n", yytext );
            }
[ \t\n] 
.           printf( "Unrecognized character: %s\n", yytext );
%%
void main(int argc, char *argv[])
{
    ++argv, --argc;  /* skip over program name */
    if ( argc > 0 )
            yyin = fopen( argv[0], "r" );
    else
            yyin = stdin;

    yylex();
    }

int yywrap()
{
return 1;
}