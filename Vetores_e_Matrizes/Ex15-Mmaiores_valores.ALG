Algoritmo "Mmaiores_valores"
                      //4. Leia duas matrizes 4 x 4 e escreva uma terceira com os maiores valores de cada posição das matrizes lidas.

Var
   primeiraM, segundaM, maioresN: vetor[0..3, 0..3] de inteiro
   i, j: inteiro

Inicio

   escreval("Informe os valores da primeira matriz:")
   para i de 0 ate 3 faca
      para j de 0 ate 3 faca
         escreva("Posição [", i, ",", j,"]: ")
         leia(primeiraM[i, j])
      fimpara
   fimpara

   escreval("Informe os valores da segunda matriz:")
   para i de 0 ate 3 faca
      para j de 0 ate 3 faca
         escreva("Posição [", i, ",", j,"]: ")
         leia(segundaM[i, j])
      fimpara
   fimpara

   para i de 0 ate 3 faca
      para j de 0 ate 3 faca
         se primeiraM[i, j] > segundaM[i, j] entao
            maioresN[i, j] <- primeiraM[i, j]
         senao
            maioresN[i, j] <- segundaM[i, j]
         fimse
      fimpara
   fimpara

   limpatela
   escreval("")
   escreval("Matriz com os maiores valores de cada posição:")
   para i de 0 ate 3 faca
      para j de 0 ate 3 faca
         escreva(maioresN[i, j], "  ")
      fimpara
      escreval("")
   fimpara

Fimalgoritmo
