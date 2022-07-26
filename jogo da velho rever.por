programa
{
	inclua biblioteca Texto --> tx
	
cadeia palavraSecreta, letraChutada, validaPalavra =""
	

	logico tamanhoPalavra = verdadeiro, testaErros,testeVitoria, jogar = verdadeiro
	
	const inteiro tamanhoLimitePalavra =20

	cadeia vetorPalavraSecreta[tamanhoLimitePalavra],vetorPalavraChutada[tamanhoLimitePalavra], correcao[tamanhoLimitePalavra]
	inteiro tamanhoLimite, x,y, erros  = 0, posicao, acertos= 0, conta=0,i=0
	funcao inicio()
	{
		enquanto(tamanhoPalavra == verdadeiro)
		{
			escreva("Digite uma palavra secreta com tamanho máximo de ",tamanhoLimitePalavra," letras ")
			leia(palavraSecreta)
			tamanhoLimite = tx.numero_caracteres(palavraSecreta)
			se(tamanhoLimite <= tamanhoLimitePalavra)
			{
				tamanhoPalavra = falso
			}
			senao
			{
				tamanhoPalavra = verdadeiro
			}
		}
	
		/**
			quebra a palavra em um vetor
		*/
		para(x=0; x< tamanhoLimite; x++)
		{
			vetorPalavraSecreta[x]  = tx.extrair_subtexto(palavraSecreta, x, x+1)
		}
		para(x=0; x< tamanhoLimite; x++)
		{
			vetorPalavraChutada[x]  = " _ "
		}
		x=0
		enquanto(i< tamanhoLimite)
		{
			testaErros = falso
			testeVitoria = falso
			escreva("\n acertos ",acertos," erros ",erros)
			escreva("\n Digite uma letra \n") 
			leia(letraChutada)
			vetorPalavraChutada[x] = letraChutada
			para(x=0; x<tamanhoLimite; x++)
			{
				para(y=0; y<tamanhoLimite;y++)
				{
					se(vetorPalavraSecreta[x] == vetorPalavraChutada[y])
					{
						acertos++
					}
					senao
					{
						erros++				
					}
				}
			}
			para(x=0; x<tamanhoLimite; x++)
			{
				se(letraChutada == vetorPalavraSecreta[x])
				{
					conta++
				}
			}
			i++
		}
		escreva("erros ", erros," \n")
		escreva("acertos", acertos,"\n")
		
		
	}
}
