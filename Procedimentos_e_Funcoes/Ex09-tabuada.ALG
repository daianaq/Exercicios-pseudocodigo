Algoritmo "tabuada"
            //9. Faça um algoritmo que solicite um número ao usuário e exiba a tabuada desse número de 0 a 10.
            //Utilize uma função para realizar o cálculo da multiplicação.

Var
   numero, i: inteiro

funcao tabuada(numero, multiplicador: inteiro): inteiro
inicio
   retorne numero * multiplicador
fimfuncao

Inicio

   escreva("Informe o número da tabuada desejada: ")
   leia(numero)

   limpatela
   escreval("Tabuada do", numero, ":")
   para i de 0 ate 10 faca
      escreval(numero, " X", i, " =", tabuada(numero, i))
   fimpara

Fimalgoritmo
