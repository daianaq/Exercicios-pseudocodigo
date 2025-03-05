Algoritmo "maior_menor_posicao"
                      // Leia 10 números inteiros, armazene em um vetor e imprima:
                      // 1 - O vetor completo;
                      // 2 - O maior e o menor número;
                      // 3 - A posição em que eles se encontram.

Var
   numeros: vetor[0..9] de inteiro
   i, maior, menor, posMaior, posMenor: inteiro

Inicio

   escreval("Informe 10 números: ")
   para i de 0 até 9 faça
      leia(numeros[i])
   fimpara

   maior <- numeros[0]
   menor <- numeros[0]
   posMaior <- 0
   posMenor <- 0

   para i de 1 até 9 faça
      se numeros[i] > maior entao
         maior <- numeros[i]
         posMaior <- i
      fimse
      se numeros[i] < menor entao
         menor <- numeros[i]
         posMenor <- i
      fimse
   fimpara

   limpatela
   escreval("Números informado:")
   para i de 0 até 9 faça
      escreva("|", numeros[i], " | ")
   fimpara

   escreval("")
   escreval("Maior número:", maior, " na posição ", posMaior , ".")
   escreval("Menor número:", menor, " na posição ", posMenor , ".")

Fimalgoritmo
