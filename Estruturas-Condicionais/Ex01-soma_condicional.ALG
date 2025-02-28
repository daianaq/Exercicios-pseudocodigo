Algoritmo "A+B"
               //1. Faça um algoritmo que leia os valores A, B, C e imprima na tela se a soma de A + B é menor
               //que C, caso contrário, imprima que a A + B é maior que C.

Var

   a,b,c,resultado:inteiro

Inicio

   escreval("Informe o valor de A: ")
   leia(a)
   escreval("Informe o valor de B: ")
   leia(b)
   escreval("Informe o valor de C: ")
   leia(c)

   limpatela
   se a+b < c entao
      escreval("A soma de A + B (",a+b, " ) é menor que C (",c," )")
   senao
      se a+b > c entao
         escreval("A soma de A + B (",a+b, " ) é maior que C (",c," )")
      senao
         escreval("A soma de A + B (",a+b, " ) é igual que C (",c," )")
      fimse
   fimse
   
Fimalgoritmo
