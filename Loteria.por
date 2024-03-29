programa
{
	inteiro aposta
	inteiro quantidade	
	inteiro listaSorteados[50]
	
	funcao inicio()
	{
		escreva("Hoje é seu dia de sorte! Escolha qual jogo será feito:\n")
		escreva("[1.] Mega Sena\n[2.] LotoMania\n[3.] Lotofacil\n[4.] Quina\nQual a sua escolha? ")
		leia(aposta)

		escreva("Quantas jogos gostaria de apostar? ")
		leia(quantidade)

		escolha(aposta){
			caso 1: 
				gera_megasena(quantidade)
			pare
			
			caso 2:
				gera_lotomania(quantidade)
			pare
			
			caso 3:
				gera_lotofacil(quantidade)
			pare
			
			caso 4:
				gera_quina(quantidade)
			pare
			caso contrario: 
				escreva("Ooops, não estou preparado para esse tipo de jogo")
			pare
		}
		escreva("\n\n")
	}

	funcao gera_megasena(inteiro quant_megasena){
		inteiro dezenas
		
		escreva("Quantas dezenas você gostaria de apostar? Digite uma opção entre 6 e 15: ")
		leia(dezenas)
		escreva("\nVamos gerar ",quant_megasena," jogo(s) de Mega Sena com ",dezenas," dezenas cada!\n\n")
		valor_megasena(quant_megasena,dezenas)
		para(inteiro i=0; i < quant_megasena; i++){
			sorteiaDezenas(dezenas, 1, 60)	
		}
		
	}

	funcao valor_megasena(inteiro quant, inteiro dez){
		real valor_unitario = 4.50
		real valor_total = 4.50
 		
		se(dez == 6){
			valor_unitario = 4.50
		}
		
		senao se(dez == 7){
			valor_unitario = 31.50
		}

		senao se(dez == 8){
			valor_unitario = 126
		}
		
		senao se(dez == 9){
			valor_unitario = 378
		}
		
		senao se(dez == 10){
			valor_unitario = 945
		}

		senao se(dez == 11){
			valor_unitario = 2079
		}

		senao se(dez == 12){
			valor_unitario = 4158
		}

		senao se(dez == 13){
			valor_unitario = 7722
		}

		senao se(dez == 14){
			valor_unitario = 13513
		}

		senao se(dez == 15){
			valor_unitario = 22522.50
		}
		
		senao{ 
			escreva("Aposta impossivel\n")
			valor_unitario = 0
		}

		valor_total = valor_unitario * quant

		escreva("Seus ",quant," jogo(s) de Mega Sena com ",dez," dezenas cada, custará um total de R$  ",valor_total, "\n")
	
	}
		

		
	funcao sorteiaDezenas(inteiro dezenas_a, inteiro min, inteiro max){
		inteiro sorteado 
			
		para(inteiro i=0; i < dezenas_a; i++){
			sorteado = sorteia(min, max)


			se(i > 0){
				para(inteiro j=0; j < (i -1); j++){
					enquanto(listaSorteados[j] == sorteado){
						sorteado = sorteia(min, max)
						j = 0
					}	
				}
			}
			listaSorteados[i] = sorteado
		}

		ordenarLista(dezenas_a)
		escreva("Os números gerados foram: ")
		para(inteiro i=0; i < dezenas_a; i++){
			escreva(listaSorteados[i], "  ")
		}
		escreva("\n")
	}
	
	funcao gera_lotomania(inteiro quant_lotomania){
		escreva("\nVamos gerar ",quant_lotomania," jogos() de Lotomania com 50 dezenas cada!\n\n")
		valor_lotomania(quant_lotomania)
		para(inteiro i=0; i < quant_lotomania; i++){
			sorteiaDezenas(50, 0, 99)	
		}
	}

	funcao valor_lotomania(inteiro quant_mania){
		real valor_unitariomania = 2.50
		real valor_totalmania = 2.50

		valor_totalmania = valor_unitariomania * quant_mania
		escreva("Seus ",quant_mania," jogo(s) de Lotomania com 50 dezenas cada, custará um total de R$ ",valor_totalmania, "\n")
	}
	
	
	funcao gera_lotofacil(inteiro quant_lotofacil){
		inteiro dezenas_lotofacil
		escreva("Quantas dezenas você gostaria de apostar? Digite uma opção entre 15 e 20: ")
		leia(dezenas_lotofacil)
		escreva("\nVamos gerar ",quant_lotofacil," jogo(s) de Lotofacil com ",dezenas_lotofacil," dezenas cada!\n\n")
		valor_lotofacil(quant_lotofacil, dezenas_lotofacil)
		para(inteiro i=0; i < quant_lotofacil; i++){
			sorteiaDezenas(dezenas_lotofacil, 1, 25)	
		}
	}

	funcao valor_lotofacil(inteiro quant_facil, inteiro dez_facil){
		real valor_unitariofacil = 2.50
		real valor_totalfacil = 2.50

		se(dez_facil == 15){
			valor_unitariofacil = 2.50
		}
		
		senao se(dez_facil == 16){
			valor_unitariofacil = 40
		}

		senao se(dez_facil == 17){
			valor_unitariofacil = 340
		}

		senao se(dez_facil == 18){
			valor_unitariofacil = 2040
		}

		senao se(dez_facil == 19){
			valor_unitariofacil = 9690
		}

		senao se(dez_facil == 20){
			valor_unitariofacil = 38760
		}
		
		senao{
		escreva("Aposta impossivel\n")
			valor_unitariofacil = 0
		}
				valor_totalfacil = valor_unitariofacil * quant_facil

		escreva("Seus ",quant_facil," jogo(s) de Lotofacil com ",dez_facil," dezenas cada, custará um total de R$ ",valor_totalfacil, "\n")
	}
	
	funcao gera_quina(inteiro quant_quina){
		inteiro dezenas_quina
		escreva("Quantas dezenas você gostaria de apostar? Digite uma opção entre 5 e 15: ")
		leia(dezenas_quina)
		escreva("\nVamos gerar ",quant_quina," jogo(s) de Quina com ",dezenas_quina," dezenas cada!\n\n")
		valor_quina(quant_quina, dezenas_quina)
		para(inteiro i=0; i < quant_quina; i++){
			sorteiaDezenas(dezenas_quina, 1, 80)	
		}
	}

	funcao valor_quina(inteiro quantquina, inteiro dezquina){
		real valor_unitarioquina = 2
		real valor_totalquina = 2

		se(dezquina == 5){
			valor_unitarioquina = 2

		}
		
		senao se(dezquina == 6){
			valor_unitarioquina = 12
		}

		senao se(dezquina == 7){
			valor_unitarioquina = 42
		}

		senao se(dezquina == 8){
			valor_unitarioquina = 112
		}

		senao se(dezquina == 9){
			valor_unitarioquina = 252
		}

		senao se(dezquina == 10){
			valor_unitarioquina = 504
		}

		senao se(dezquina == 11){
			valor_unitarioquina = 924
		}

		senao se(dezquina == 12){
			valor_unitarioquina = 1584
		}

		senao se(dezquina == 13){
			valor_unitarioquina = 2574
		}

		senao se(dezquina == 14){
			valor_unitarioquina = 4004
		}

		senao se(dezquina == 15){
			valor_unitarioquina = 6006
		}
		
		senao{
		escreva("Aposta impossivel\n")
			valor_unitarioquina = 0

		}
		
		valor_totalquina = valor_unitarioquina * quantquina
		escreva("Seus ",quantquina," jogo(s) de Quina com ",dezquina," dezenas cada, custará um total de R$ ",valor_totalquina, "\n")
	}

	funcao ordenarLista(inteiro tamanho){
		inteiro aux
		para (inteiro k = 1; k < tamanho; k++) {
			para (inteiro j = 0; j < (tamanho - k); j++) {
        			se ( listaSorteados[j] >  listaSorteados[j + 1]) {
					aux =  listaSorteados[j]
           	  		listaSorteados[j] = listaSorteados[j + 1]
           	  		listaSorteados[j + 1] = aux
       			 }
			}
		}
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5698; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */