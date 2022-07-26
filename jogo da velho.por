programa
{
	inclua biblioteca Texto --> tx
	const inteiro tamanhoLimite = 20
	cadeia palavraDigitada, letraDigitada, vetorPalavra[tamanhoLimite],palavraTentativa ="" ,vetorPalavraChutada[tamanhoLimite]
	inteiro posicao, tamanho, contaTentativas, x,y, decisao 
	logico concluido = falso, tamanhoPalavra = verdadeiro
	inteiro contaRepetido =0
	
	funcao inicio()
	{
		contaTentativas=0
		
	
		enquanto(tamanhoPalavra == verdadeiro)
		{
			escreva("Jogador 1 digite a palavra secreta  com até 20 letras \n")
			leia(palavraDigitada)
			tamanho = tx.numero_caracteres(palavraDigitada)
			se(tamanho > tamanhoLimite)
			{
				tamanhoPalavra = verdadeiro
			}
			senao
			{
				tamanhoPalavra = falso
			}
			limpa()
		}
		
		limpa()
		para(x=0; x< tamanho; x++)
		{
			vetorPalavra[x] = tx.extrair_subtexto(palavraDigitada, x, x+1)
			vetorPalavraChutada[x] =" _ "
		}
		
			escreva(" \n")	
			
		enquanto(contaTentativas < tamanho)
		{

			exibePalavraCorreta()			
				se(contaTentativas>0)
				{
					escreva("Você quer tentar arriscar a palavra\n Digite 1 para SIM ou 0 para NÃO ")
					leia(decisao)
					
					se(decisao == 1)
					{
						escreva("Arrisque um palpite \n")
						leia(palavraTentativa)
						se(palavraTentativa == palavraDigitada)
						{
							escreva("Acertou \n")
							pare	
						}
						senao
						{
							escreva("Você perdeu \n a palavra secreta é ", palavraDigitada, "seu palpite foi",palavraTentativa)
							pare	
						}
					}
				}
				//desenhaForca()
				limpa()
				exibePalavraCorreta()
				escreva("Qual a letra ")
				leia
				(letraDigitada)
				limpa()
				//contaRepetido =0
				//vetorPalavraChutada[contaTentativas] = letraDigitada
				
				para(x=0; x < tamanho; x++)
				{
					posicao = tx.posicao_texto(letraDigitada, palavraDigitada, x)
					se(posicao>=0)
					{
							
						vetorPalavraChutada[posicao] = letraDigitada
						//escreva("posição encontrada ",posicao," ",contaTentativas " \n")
						
					}
					se(vetorPalavraChutada[x] == vetorPalavra[x])
					{
						contaRepetido++
					}
					se((x + 1) == tamanho)
					{
						escreva(" igual ")	
					}
			
			
				
				}
			/*	se(contaRepetido ==  2)
				{
					//contaTentativas = contaTentativas + contaRepetido
					contaTentativas++
				}
				senao se (contaRepetido > 2)
				{
					contaTentativas = contaTentativas+ contaRepetido
				}
				senao{
					
					
					}
			*/
			
			contaTentativas++
			para(x =0; x <tamanho; x++)
			{	
				//escreva(vetorPalavra[x])
				se(letraDigitada == vetorPalavra[x])
				{
					//escreva(vetorPalavraChutada[x]," ")
						contaRepetido++
						
				}
			}
			
		}
		
		//posicao = tx.posicao_texto("a", palavraDigitada,0)
		//escreva("A palavra digitada", palavraDigitada,"tem ", tamanho,"caracteres")
		exibePalavraCorreta()
		escreva(" repetidos ", contaRepetido," ")
	}
	funcao exibePalavraCorreta()
	{
		para(x =0; x <tamanho; x++)
		{	
			//escreva(vetorPalavra[x])
				/*se(vetorPalavraChutada[x] == vetorPalavra[x])
				{
					escreva(vetorPalavraChutada[x]," ")
						
				}
				senao
				{
					escreva(" _ ")		
				}*/
				escreva(vetorPalavraChutada[x]," ")
			
		}
		escreva("\n")
	}
}
