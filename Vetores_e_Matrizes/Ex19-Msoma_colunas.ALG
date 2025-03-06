Algoritmo "Msoma_colunas"
                 //8. Faça um programa que permita ao usuário entrar com uma matriz de 3 x 3 de números inteiros. Em seguida, 
                 //gere um array unidimensional formado pela soma dos números de cada coluna da matriz.
                 
Var
   numeros: vetor[0..2, 0..2] de inteiro
   somaColunas: vetor[0..2] de inteiro
   i, j: inteiro

Inicio

   para i de 0 ate 2 faca
      somaColunas[i] <- 0
   fimpara

   escreval("Informe os valores da matriz 3x3:")
   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         escreva("Elemento [", i , ",", j , "]:")
         leia(numeros[i, j])
      fimpara
   fimpara

   para j de 0 ate 2 faca
      para i de 0 ate 2 faca
         somaColunas[j] <- somaColunas[j] + numeros[i, j]
      fimpara
   fimpara

   limpatela
   escreval("Matriz inserida:")
   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         escreva(numeros[i, j], " ")
      fimpara
      escreval("")
   fimpara
   
   escreval("")
   escreval("Vetor gerado com a soma das colunas:")
   para i de 0 ate 2 faca
      escreva(somaColunas[i], " ")
   fimpara

Fimalgoritmo
