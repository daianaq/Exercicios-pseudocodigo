Algoritmo "ordenacao_peso"
                      //Elabore um algoritmo que leia o nome e o peso de 5 pessoas e armazene essas informações
                      //em dois vetores distintos. Em seguida, o algoritmo deve ordenar e mostrar as pessoas de acordo  
                      //com o peso de forma crescente.

Var
   nomes: vetor[0..4] de caractere
   pesos: vetor[0..4] de real
   tempNome: caractere
   tempPeso: real
   i, j: inteiro

Inicio

   para i de 0 ate 4 faça
      escreva("Informe o nome:")
      leia(nomes[i])
      escreva("Informe o peso:")
      leia(pesos[i])
   fimpara

   para i de 0 até 4 faça
      para j de i+1 ate 4 faça
         se pesos[i] > pesos[j] então
            tempNome <- nomes[i]
            tempPeso <- pesos[i]
            nomes[i] <- nomes[j]
            pesos[i] <- pesos[j]
            nomes[j] <- tempNome
            pesos[j] <- tempPeso
         fimse
      fimpara
   fimpara

   escreval("")
   escreval("Lista ordenada por peso:")
   para i de 0 até 4 faça
      escreval("Nome: ", nomes[i], " - Peso: ", pesos[i] ,".")
   fimpara

Fimalgoritmo
