Algoritmo "pares_impares"
                  //6. Faça um programa que receba 6 numeros inteiros e mostre:
                  //1 - Os números pares digitados;
                  //2 - A soma dos números pares digitados;
                  //3 - Os números ímpares digitados;
                  //4 - A quantidade de números ímpares digitados.

Var
   numeros: vetor[0..5] de inteiro
   i, somaPares, qtdImpares: inteiro

Inicio

   somaPares <- 0
   qtdImpares <- 0

   escreval("Informe 6 números:")
   para i de 0 até 5 faça
      escreva("Número", i + 1, ": ")
      leia(numeros[i])
   fimpara
   
   limpatela
   escreva("Números pares digitados:")
   para i de 0 até 5 faça
      se numeros[i] % 2 = 0 então
         escreva("|", numeros[i], " | ")
         somaPares <- somaPares + numeros[i]
      fimse
   fimpara
   
   escreval("")
   escreval("Soma dos números pares:", somaPares)

   escreva("Números ímpares digitados:")
   para i de 0 até 5 faça
      se numeros[i] % 2 <> 0 então
         escreva("|", numeros[i], " | ")
         qtdImpares <- qtdImpares + 1
      fimse
   fimpara

   escreval("")
   escreval("Quantidade de números ímpares:", qtdImpares)

Fimalgoritmo
