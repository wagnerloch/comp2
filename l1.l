DIGITO	[0-9]
LETRA	[a-zA-Z]
RESERVADO ("int"|"boolean")
OPERACAO ("="|"+"|"-"|"/"|"*"|"<"|"&&")
ID	{LETRA}({LETRA}|{DIGITO})*

%%
{DIGITO}+		{printf("Inteiro: %s\n",yytext);}
{DIGITO}+"."{DIGITO}+	{printf("Real: %s\n",yytext);} 
{RESERVADO}             {printf("Tipo: %s\n",yytext);}
{OPERACAO}              {printf("Operacao: %s\n",yytext);}
{ID}			{printf("var: %s\n",yytext);}

%%
int yywrap();

main(){
  yylex();
}

int yywrap(){
 return 1;
}
