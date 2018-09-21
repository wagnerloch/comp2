DIGITO	[0-9]
LETRA	[a-zA-Z]
TIPO ("int"|"boolean")
CLASSE ("class")
OPERACAO ("="|"+"|"-"|"/"|"*"|"<"|"&&")
STATEMENT ("if"|"else"|"while"|"System.out.println")
RESERVADO ("true"|"false"|"new"|"length")
EXPRESSAO {AP}{ID}({OPERACAO}{ID})*{FP}
ID	{LETRA}({LETRA}|{DIGITO})*
FIM (";")
AP ("(")
FP (")")

%%
{DIGITO}+				{printf("Inteiro: %s\n",yytext);}
{DIGITO}+"."{DIGITO}+	{printf("Real: %s\n",yytext);}
{TIPO}             		{printf("Tipo: %s\n",yytext);}
{RESERVADO}				{printf("Reservado: %s\n",yytext);}
{OPERACAO}              {printf("Operacao: %s\n",yytext);}
{STATEMENT}				{printf("Statement: %s\n",yytext);}
{EXPRESSAO}				{printf("Expressao: %s\n",yytext);}
{ID}					{printf("var: %s\n",yytext);}
{FIM}					{printf("Fim comando: %s\n",yytext);}


%%
int yywrap();

main(){
  yylex();
}

int yywrap(){
 return 1;
}
