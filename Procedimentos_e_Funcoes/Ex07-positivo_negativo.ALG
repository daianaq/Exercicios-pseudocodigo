Algoritmo "positivo_negativo"
                 //7. Utilizando função, crie um algoritmo que leia um número inteiro e determine se ele é positivo, negativo ou neutro.
Var
   numero: inteiro
   resultado: caracter

funcao verificarNumero(n: inteiro): caracter
inicio
   se n > 0 entao
      retorne "positivo."
   senao
      se n < 0 entao
         retorne "negativo."
      senao
         retorne "neutro ou inválido."
      fimse
   fimse
fimfuncao

Inicio
   escreva("Informe o número: ")
   leia(numero)

   resultado <- verificarNumero(numero)

   escreval("O número é ", resultado)

Fimalgoritmo
