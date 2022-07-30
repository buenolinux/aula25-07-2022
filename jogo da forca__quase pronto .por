programa
{
	
inclua biblioteca Texto --> tx

	cadeia palavraSecreta, letraChutada
	cadeia vetorPalavraSecreta[20],vetorLetraChutada[20],posicoes[20] ,vetorBonecoInforcado[6] ,vertorBoneco[]={"  |","  o","  ","|","|","- ","  |"," |"}

	cadeia cabeca = "  o",  bracoEsquerdo = " / ", tronco = "|", bracoDireito =" \\",cintura =" - ", pernaEsquerda = " / ", pernaDireita = " \\ "


	inteiro i,tamanhoPalavraSecreta,x,y, posicao, contaAcertos, contaErros, letraErrada = 0

	logico jogo = verdadeiro
	funcao inicio()
	{
		escreva("Digite uma palavra secreta \n")
		leia(palavraSecreta)
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
			limpa()
			criaoForca(letraErrada)
			para(x=0; x<tamanhoPalavraSecreta; x++)
			{
					se((letraChutada == vetorPalavraSecreta[x])  /*e (vetorLetraChutada[x] != letraChutada  )*/)
					{
							/*
							vetorLetraChutada[x] = letraChutada
							contaAcertos++
							*/
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
					
					//escreva(vetorLetraChutada[x]," ")
					/*se(letraChutada != vetorPalavraSecreta[x] e x == tamanhoPalavraSecreta -1)
					{
						contaErros++
						escreva(contaErros," ")
					}
					*/
					// escreva("variável contaErros ",contaErros," \n")
				
			}
			
			
			/*para(y=0; y< contador; y++)
			{
				se(vetorLetraChutada[posicao] == "_" e vetorLetraChutada[posicao] != letraChutada)
				{
					vetorLetraChutada[posicao] = letraChutada
					escreva("\n vetor letra chutada ",vetorLetraChutada[y]," \n")
				}	
			}*/
			limpa()
			criaoForca(letraErrada)
			
			se(contaAcertos ==tamanhoPalavraSecreta)
			{
				limpa()
				criaoForca(letraErrada)
				escreva("    Parabens você acertou a palavra secreta que é ",palavraSecreta, "\n")
				
				pare
			}
			
			
			//escreva("variável letraErrada ",letraErrada," \n")
			se(letraErrada >= 6 /* ou  contaErros > contaAcertos    tou i == tamanhoPalavraSecreta -1*/)
			{
				//escreva("\nVocê perdeu ")
				limpa()
				criaoForca(letraErrada)
				
				pare
			}
		
			
		}
		
			
			//criaoForca(letraErrada)
		
		
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
		escreva("\n|"," "," "," "," ","  ")//se( limite > 4 ){ escreva(cintura)	}
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
