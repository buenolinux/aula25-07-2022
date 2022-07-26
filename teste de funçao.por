programa
{
	inteiro vetor[] ={0,2,2,4,5},i, tamanho =5, conta=0, pesquisa, posicao,vetor2[] ={0,2,2,4,5}
	
	funcao inicio()
	{
	
		//escreva("Digite um número")
		//leia(pesquisa)
		contaRepetidos(vetor2)
	}
	funcao contaRepetidos(inteiro pesquisa[])
	{
		para(i=0;i<tamanho;i++)
		{
			se(vetor2[i] == vetor[i])
			{
				conta++
				posicao = i
				escreva(vetor2[i]," pareceu ",conta, " vezes na posição ", posicao," \n")
					
			}
		}
		//escreva(pesquisa," pareceu ",conta, " vezes na posição ", posicao)	
	}
}
