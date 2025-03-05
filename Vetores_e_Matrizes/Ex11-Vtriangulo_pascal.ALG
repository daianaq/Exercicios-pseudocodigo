Algoritmo "triangulo_pascal"
                    //11. Escreva um programa que leia um numero inteiro positivo 'n'
                    //e em seguida imprima 'n' linhas do chamado Triangulo de Pascal.

Var
   numero, i, j: inteiro
   n: real

Inicio

   escreva("Informe o número de linhas:")
   leia(numero)

   para i de 0 ate numero-1 faca
      para j de 0 ate i faca
         se (j = 0) ou (j = i) entao
            n <- 1
         senao
            n <- n * (i - j + 1) / j
         fimse
         escreva(n, " ")
      fimpara
      escreval("")
   fimpara

Fimalgoritmo
