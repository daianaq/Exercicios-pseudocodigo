Algoritmo "ordem_inversa"
                //4. Crie um programa que lê 6 valores inteiros e, em seguida,
                //mostre na tela os valores lidos na ordem inversa.

Var
   numeros: vetor[0..5] de inteiro
   i: inteiro

Inicio

   escreval("Informe 6 números inteiros:")
   para i de 0 até 5 faça
      leia(numeros[i])
   fimpara

   escreval("Números na ordem inversa:")
   para i de 5 até 0 passo -1 faça
      escreva("|", numeros[i], " | ")
   fimpara

Fimalgoritmo
