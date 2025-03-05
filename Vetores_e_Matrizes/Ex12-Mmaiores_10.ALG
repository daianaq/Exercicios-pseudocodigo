Algoritmo "maiores_10"
              //1. Leia uma matriz 4 x 4, conte e escreva quantos valores maiores que 10 ela possui.

Var
   numeros: vetor [0..3, 0..3] de inteiro
   i, j, cont: inteiro

Inicio

   para i de 0 ate 3 faca
      para j de 0 ate 3 faca
         escreva("Informe o valor da posição [", i, ",", j,"]:")
         leia(numeros[i, j])
      fimpara
   fimpara

   cont <- 0
   
   para i de 0 ate 3 faca
      para j de 0 ate 3 faca
         se numeros[i, j] > 10 entao
            cont <- cont + 1
         fimse
      fimpara
   fimpara

   escreval("A matriz possui", cont, " valor(es) maior(es) que 10.")

Fimalgoritmo
