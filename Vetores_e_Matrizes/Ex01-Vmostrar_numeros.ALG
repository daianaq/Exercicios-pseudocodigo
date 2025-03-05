Algoritmo "mostrar_numeros"
                    //1. Crie um programa que le 6 valores inteiros e, em seguida, mostre na tela os valores lidos.
        
Var
   numeros: vetor [0..5] de inteiro
   i: inteiro

Inicio

   escreva("Informe 6 números: ")
   para i de 0 até 5 faça
      leia(numeros[i])
   fimpara

   limpatela
   escreval("Os números digitados foram: ")
   para i de 0 até 5 faça
      escreva("|", numeros[i], " | ")
   fimpara

Fimalgoritmo
