%{
#include <stdio.h>
int min=0, may=0, num=0,gion=0;
%}

%%
[A-Z] {printf("Mayuscula\t");may++;}
[a-z] {printf("minuscula\t");min++;}
[0-9] {printf("Digito\t");num++;}
["_"] {printf("Guion bajo\t");gion++;}
%%
int yywrap()
{
    return 1;
}

int main(){
 printf("Escribe una cadena de texto     ");
 yylex();
 printf("Mayuscula=%d, minuscula=%d, Digito=%d, Guion bajo=%d",may,min,num,gion);   
}