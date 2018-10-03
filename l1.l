DIGITO	[0-9]
LETRA	[a-zA-Z]
SUBL ("_")
TIPO ("int"|"boolean")
CLASSE ("class")
PUBLIC ("public")
STATIC ("static")
VOID ("void")
ESPACO (" ")
VIRGULA (",")
PONTO (".")
FIM (";")
AP ("(")
FP (")")
ACh ("{")
FCh ("}")
AC ("[")
FC ("]")
FLINHA ("\n")
COMENTARIO ("//")({ESPACO}|{ID}|{RESERVADO}|{STATEMENT}|{LETRA}|{DIGITO}|{SUBL}|{VIRGULA}|{AP}|{FP}|{ACh}|{FCh}|{AC}|{FC})*{FLINHA}
OPERACAO ("="|"+"|"-"|"/"|"*"|"<"|"&&"|"!")
STATEMENT ("if"|"else"|"while"|"System.out.println")
RESERVADO ("true"|"false"|"new"|"length"|"String"|"this"|"return")
ID	{LETRA}({LETRA}|{DIGITO}|{SUBL})*

%%
{DIGITO}+				{printf("Inteiro: %s\n",yytext);}
{DIGITO}+"."{DIGITO}+			{printf("Real: %s\n",yytext);}
{TIPO}             			{printf("Tipo: %s\n",yytext);}
{COMENTARIO}				{printf("Comentario: %s\n",yytext);}
{RESERVADO}				{printf("Reservado: %s\n",yytext);}
{OPERACAO}              		{printf("Operacao: %s\n",yytext);}
{PUBLIC}				{printf("Public: %s\n",yytext);}
{STATIC}				{printf("Estatico: %s\n",yytext);}
{VOID}					{printf("Void: %s\n",yytext);}
{VIRGULA}				{printf("Virgula: %s\n",yytext);}
{AP}					{printf("AP: %s\n",yytext);}
{FP}					{printf("FP: %s\n",yytext);}
{AC}					{printf("AC: %s\n",yytext);}
{FC}					{printf("FC: %s\n",yytext);}
{ACh}					{printf("ACh: %s\n",yytext);}
{FCh}					{printf("FCh: %s\n",yytext);}
{CLASSE}				{printf("Classe: %s\n",yytext);}
{STATEMENT}				{printf("Statement: %s\n",yytext);}
{ID}					{printf("Var: %s\n",yytext);}
{PONTO}					{printf("Ponto: %s\n",yytext);}
{FIM}					{printf("Fim comando: %s\n",yytext);}


%%
int yywrap();

main(){
  yylex();
}

int yywrap(){
 return 1;
}
