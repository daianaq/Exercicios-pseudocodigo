Algoritmo "par_impar"
              //10. Crie uma função que receba um número e mostre uma mensagem informando se o número é par ou ímpar.

Var
   numero: inteiro

funcao par_impar(numero: inteiro): caractere
inicio
   se numero % 2 = 0 entao
      retorne "par."
   senao
      retorne "ímpar."
   fimse
fimfuncao

Inicio

   escreva("Informe um número: ")
   leia(numero)

   limpatela
   escreval(numero, " é um número ", par_impar(numero))

Fimalgoritmo
