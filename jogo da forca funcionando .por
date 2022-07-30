programa
{
	
inclua biblioteca Texto --> tx

	cadeia palavraSecreta, letraChutada
	cadeia vetorPalavraSecreta[20],vetorLetraChutada[20],posicoes[20] ,vetorBonecoInforcado[6] 

	cadeia cabeca = "  o",  bracoEsquerdo = " / ", tronco = "|", bracoDireito =" \\", pernaEsquerda = " / ", pernaDireita = " \\ "


	inteiro i,tamanhoPalavraSecreta,x,y, posicao, contaAcertos, contaErros, letraErrada = 0

	logico jogo = verdadeiro
	funcao inicio()
	{
		escreva("Digite uma palavra secreta \n")
		leia(palavraSecreta)
		palavraSecreta = tx.caixa_baixa(palavraSecreta)
		limpa()
		tamanhoPalavraSecreta = tx.numero_caracteres(palavraSecreta)
		criaoForca(letraErrada)
		criaVetorPalavraSecreta()
		adicionaHifensNoVetor()		
		contaAcertos=0						
		enquanto( jogo == verdadeiro)
		{
			contaErros =0			
			escreva(" \nDigite uma letra para adivinhar a palavra")
			leia(letraChutada)
			letraChutada = tx.caixa_baixa(letraChutada)
			limpa()						
			para(x=0; x<tamanhoPalavraSecreta; x++)
			{
					se((letraChutada == vetorPalavraSecreta[x]))
					{
						se(letraChutada != vetorLetraChutada[x])
						{
							
							vetorLetraChutada[x] = letraChutada
							contaAcertos++
						}
					}senao
					{
						contaErros++
						se(tamanhoPalavraSecreta  == contaErros)
						{
							letraErrada++
						}
					}				
			}
			limpa()
			criaoForca(letraErrada)
			
			se(contaAcertos ==tamanhoPalavraSecreta)
			{
				escreva(" Parabens você acertou a palavra secreta que é ",palavraSecreta, "\n")				
				pare
			}
			se(letraErrada >= 6)
			{				
				pare
			}					
		}				
	}
	funcao criaVetorPalavraSecreta()
	{
		para(i=0; i<tamanhoPalavraSecreta; i++)
		{
			vetorPalavraSecreta[i] = tx.extrair_subtexto(palavraSecreta, i, i+1)	
		}
	}
	funcao adicionaHifensNoVetor()
	{		
		para(x=0; x<tamanhoPalavraSecreta; x++)
		{
			vetorLetraChutada[x] ="_"
			escreva(vetorLetraChutada[x]," ")
		}
	}
	funcao criaoForca(inteiro limite)
	{			
		escreva(" _")
		escreva(" _")
		escreva(" _")
		escreva(" _")
		escreva("\n|"," "," "," "," "," ","  |")
		escreva("\n|"," "," "," "," "," ")se( limite > 0 ){ escreva(cabeca)	}
		escreva("\n|"," "," "," "," ") se( limite > 1 ){ escreva(bracoEsquerdo)	}se( limite > 2 ){ escreva(tronco)	}
		se( limite > 3 ){ escreva(bracoDireito)	}
		escreva("\n|"," "," "," "," ","  ")
		escreva("\n|"," "," "," "," ")se( limite > 4 ){ escreva(pernaEsquerda)	}se( limite > 5 ){ escreva(pernaDireita)}
		escreva("\n|")
		escreva("\n|")
		se(limite >0 ou contaAcertos >0)
		{
			para(x=0; x<tamanhoPalavraSecreta; x++)
			{
				escreva(vetorLetraChutada[x]," ")
			}
		}
		se(limite > 5)
		{
		escreva("\n Que pena você perdeu \n")	
		
		}	

	}
}
