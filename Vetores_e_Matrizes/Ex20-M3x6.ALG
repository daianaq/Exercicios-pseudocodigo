Algoritmo "M3x6"
            //Faça um programa que leia uma matriz 3 x 6 com valores reais.
            //1 - Imprima a soma de todos os elementos das colunas ímpares;
            //2 - Imprima a média aritmética dos elementos da segunda e da quarta colunas;
            //3 - Substitua os valores da sexta coluna pela soma dos valores das colunas 1 e 2;
            //4 - Imprima a matriz modificada.

Var
   numeros: vetor[0..2, 0..5] de real
   i, j: inteiro
   somaColunasImpares, somaColunas2e4, mediaColuna2e4: real

Inicio

   para i de 0 ate 2 faca
      para j de 0 ate 5 faca
         escreva("Informe o valor da posição [", i, ",", j, "]:")
         leia(numeros[i, j])
      fimpara
   fimpara

   somaColunasImpares <- 0

   para j de 0 ate 5 passo 2 faca
      para i de 0 ate 2 faca
         somaColunasImpares <- somaColunasImpares + numeros[i, j]
      fimpara
   fimpara
   escreval("Soma das colunas ímpares: ", somaColunasImpares)

   somaColunas2e4 <- 0
   para i de 0 ate 2 faca
      somaColunas2e4 <- somaColunas2e4 + numeros[i, 1] + numeros[i, 3]
   fimpara

   mediaColuna2e4 <- somaColunas2e4 / 6
   escreval("Média das colunas 2 e 4: ", mediaColuna2e4:4:2)

   para i de 0 ate 2 faca
      numeros[i, 5] <- numeros[i, 0] + numeros[i, 1]
   fimpara

   escreval("Matriz modificada:")
   para i de 0 ate 2 faca
      para j de 0 ate 5 faca
         escreva(numeros[i, j]:6:2, " ")
      fimpara
      escreval("")
   fimpara

Fimalgoritmo
