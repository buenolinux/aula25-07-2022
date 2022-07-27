programa
{
	inclua biblioteca Texto --> tx
	const inteiro tamanhoMaximoPalavra = 20

	inteiro tamanhoPalavraSecretaDigitado, i,contaErros, guardaPosicao

	  

	logico pergunteNovamente = verdadeiro

	cadeia palavraSecreta, palavraChutada,vetorPalavraSecreta[tamanhoMaximoPalavra],vetorLetraChutada[tamanhoMaximoPalavra]
	
	funcao inicio()
	{
		perguntaPalavraSecreta()
		criaVetorPalavraSecreta()
		
		contaErros = 0
		enquanto(contaErros < 5)
		{			
			perguntaLetraChutada()
			contaErros++			
		}
		exibeHifens()
		criaVetorLetraChutada()
		exibirVetorPalavraS(vetorLetraChutada)
	}
	funcao perguntaPalavraSecreta()
	{
		enquanto(pergunteNovamente == verdadeiro)
		{	limpa()
			escreva("Digite a palavra secreta com tamanho máximo de ", tamanhoMaximoPalavra," \n")
			leia(palavraSecreta)
			tamanhoPalavraSecretaDigitado = tx.numero_caracteres(palavraSecreta)
			se(tamanhoPalavraSecretaDigitado <= tamanhoMaximoPalavra)
			{
				pergunteNovamente = falso
			}
			senao
			{
				pergunteNovamente = verdadeiro
			}
			
		}

	}
	funcao criaVetorPalavraSecreta()
	{	
		para(i=0; i<tamanhoPalavraSecretaDigitado; i++)
		{
			vetorPalavraSecreta[i] = tx.extrair_subtexto(palavraSecreta, i, i+1)
						
		}	
	}
	funcao exibirVetorPalavraS(cadeia vet[])
	{
		para(i=0;i<tamanhoPalavraSecretaDigitado;i++)
		{
			escreva(vet[i]," ") 
		}	
	}
	funcao exibeHifens()
	{
		para(i=0;i<tamanhoPalavraSecretaDigitado;i++)
		{
			escreva(vetorLetraChutada[i] = " _ ") 
		}
	}

	funcao  perguntaLetraChutada ()
	{
		escreva("\nDigite uma letra para tentar acertar a palavra secreta \n")
		leia(palavraChutada)
		limpa()
	}

	
	funcao criaVetorLetraChutada()
	{
		guardaPosicao = 0 
		para(i=0;i<tamanhoPalavraSecretaDigitado;i++)
		{
			
			se(palavraChutada == vetorPalavraSecreta[i])
			{
				guardaPosicao = i
				pare
			}
											
		}
		vetorLetraChutada[guardaPosicao] = palavraChutada	
	}
}
