programa
{
	cadeia vetor[]={"c","a","r","r","o"}, palavra="q"
	cadeia vetor2[]={"w","a","y","y","y"}
	inteiro i, x, conta = 0
	
	funcao inicio()
	{
		para(i=0;i<5;i++)
		{	para(x=0;x<5;x++)
			{
				
				//escreva("vetor ",vetor[i]," i = ",i, " vetor2, ",vetor2[x]," x = ",x," \n")
				se(vetor[i] ==  vetor2[x])
				{
					escreva(vetor[i]," ", vetor2[x]," \n")
				}
			}
				
		}
		
	}
}
