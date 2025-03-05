Algoritmo "Mdiagonal"
                //2. Declare uma matriz 5 x 5. Preencha com 1 a diagonal principal e com 0 os demais elementos. 
                //Escreva ao final a matriz obtida.

Var
   numeros: vetor[0..4, 0..4] de inteiro
   i, j: inteiro

Inicio

   para i de 0 ate 4 faca
      para j de 0 ate 4 faca
         se i = j entao
            numeros[i, j] <- 1
         senao
            numeros[i, j] <- 0
         fimse
      fimpara
   fimpara

   escreval("Matriz obtida:")
   para i de 0 ate 4 faca
      para j de 0 ate 4 faca
         escreva(numeros[i, j], " ")
      fimpara
      escreval("")
   fimpara

Fimalgoritmo
