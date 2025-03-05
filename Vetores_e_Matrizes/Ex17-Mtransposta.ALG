Algoritmo "Mtransposta"
                //6. Leia uma matriz de 3 x 3 elementos. Calcule e imprima a sua transposta.

Var
   numeros: vetor[0..2, 0..2] de inteiro
   transposta: vetor[0..2, 0..2] de inteiro
   i, j: inteiro

Inicio

   escreval("Informe os valores da matriz 3x3:")
   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         escreva("Posição [", i, ",", j, "]:")
         leia(numeros[i, j])
      fimpara
   fimpara

   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         transposta[i, j] <- numeros[j, i]
      fimpara
   fimpara

   limpatela
   escreval("Matriz original:")
   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         escreva(numeros[i, j], " ")
      fimpara
      escreval("")
   fimpara

   escreval("Matriz transposta:")
   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         escreva(transposta[i, j], " ")
      fimpara
      escreval("")
   fimpara

Fimalgoritmo
