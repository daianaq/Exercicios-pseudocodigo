Algoritmo "numeros_diferentes"
                      //7. Faça um programa para ler 10 números DIFERENTES e os armazene em um vetor. 
                      //Caso o usuário digite um número repetido, o programa deverá solicitar outro valor. 
                      //No final, exiba o vetor com os números digitados.

Var
   numeros: vetor [0..9] de inteiro
   i, j, numero: inteiro
   encontrou: logico

Inicio

   para i de 0 ate 9 faca
      encontrou <- verdadeiro
      enquanto encontrou faca
         escreva("Informe o ", i+1, "º número:")
         leia(numero)

         encontrou <- falso
         para j de 0 ate i-1 faca
            se numeros[j] = numero entao
               encontrou <- verdadeiro
            fimse
         fimpara

         se encontrou entao
            escreval("Número já digitado. Informe outro.")
         fimse
      fimenquanto

      numeros[i] <- numero
   fimpara

   limpatela
   escreval("Vetor final:")
   para i de 0 ate 9 faca
      escreva("|",numeros[i], " | ")
   fimpara

Fimalgoritmo
