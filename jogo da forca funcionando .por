programa
{
	
inclua biblioteca Texto --> tx

	cadeia palavraSecreta ="", letraChutada =""
	const inteiro tamanhoMaximo = 20
	cadeia vetorPalavraSecreta[tamanhoMaximo],vetorLetraChutada[tamanhoMaximo] 

	cadeia cabeca = "  o",  bracoEsquerdo = " / ", tronco = "|", bracoDireito =" \\", pernaEsquerda = " / ", pernaDireita = " \\ "


	inteiro i,tamanhoPalavraSecreta = 0,x,y,  contaAcertos, contaErros, letraErrada = 0,tamanholetraChutada

	logico jogo = verdadeiro, palavraS
	funcao inicio()
	{
		contaAcertos=0	
		validaQuantidadeCaracteres(palavraS = verdadeiro)
		criaoForca(letraErrada)
		criaVetorPalavraSecreta()
		adicionaHifensNoVetor()									
		enquanto( jogo == verdadeiro)
		{
			contaErros =0
			validaQuantidadeCaracteres(palavraS = falso)			
			
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
			vetorLetraChutada[x] =" _ "
			escreva(vetorLetraChutada[x])
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
		se(/* limite >0 ou */contaAcertos >=1)
		{
			para(x=0; x<tamanhoPalavraSecreta; x++)
			{
				
					escreva(vetorLetraChutada[x]," " )
				
			}
		}
		se(limite > 5)
		{
		escreva("\n Que pena você perdeu \n")	
		
		}	

	}
	funcao validaQuantidadeCaracteres (logico teste)
	{
		se(teste == verdadeiro)
		{
			escreva("Digite uma palavra secreta \n")
			leia(palavraSecreta)
			tamanhoPalavraSecreta = tx.numero_caracteres(palavraSecreta)
			enquanto(tamanhoPalavraSecreta > tamanhoMaximo)
			{
				limpa()
				escreva("Digite uma palavra com até ",tamanhoMaximo," letras")
				leia(palavraSecreta)
				
			}
			palavraSecreta = tx.caixa_baixa(palavraSecreta)
			limpa()
		}
		senao
		{
			escreva(" \nDigite uma letra para adivinhar a palavra")
			leia(letraChutada)
			letraChutada = tx.caixa_baixa(letraChutada)
			tamanholetraChutada = tx.numero_caracteres(letraChutada)
			
			enquanto(tamanholetraChutada > 1)
			{
				limpa()	
				escreva("Digite apenas uma letra por vez \n ")
				leia(letraChutada)
				tamanholetraChutada = tx.numero_caracteres(letraChutada)
			}
		}
	}
}
