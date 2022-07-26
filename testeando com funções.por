programa
{
	inclua biblioteca Texto --> tx
	const inteiro tamanhoMaximoPalavra = 20

	inteiro tamanhoPalavraSecretaDigitado, i

	  

	logico pergunteNovamente = verdadeiro

	cadeia palavraSecreta, palavraChutada,vetorDigitado[tamanhoMaximoPalavra]
	
	funcao inicio()
	{
		perguntaPalavra()
		criaVetorDigitado()
	}
	funcao perguntaPalavra()
	{
		enquanto(pergunteNovamente == verdadeiro)
		{	limpa()
			escreva("Digite a palavra secreta com tamanho máximo de ", tamanhoMaximoPalavra)
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
	funcao criaVetorDigitado()
	{	
		para(i=0;i<tamanhoMaximoPalavra;i++)
		{
			vetorDigitado[i] = tx.extrair_subtexto(palavraSecreta, i, i+1)
		}	
	}
}
