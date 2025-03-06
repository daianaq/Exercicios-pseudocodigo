Algoritmo "operacoes"
            //8.Crie funções que receba 2 números e retorne a soma, subtração, divisão e a multiplicação
            // destes dois números informados.
            // Obs.: Crie uma função para cada operação.

Var
   numeroUm, numeroDois: real

funcao somar(nUm, nDois: real): real
inicio
   retorne nUm + nDois
fimfuncao

funcao subtrair(nUm, nDois: real): real
inicio
   retorne nUm - nDois
fimfuncao

funcao multiplicar(nUm, nDois: real): real
inicio
   retorne nUm * nDois
fimfuncao

funcao dividir(nUm, nDois: real): real
inicio
   retorne nUm / nDois
fimfuncao

inicio

   escreva("Informe o primeiro número: ")
   leia(numeroUm)
   escreva("Informe o segundo número: ")
   leia(numeroDois)

   limpatela
   escreval(numeroUm, " +", numeroDois, " =", somar(numeroUm, numeroDois))
   escreval(numeroUm, " -", numeroDois, " =", subtrair(numeroUm, numeroDois))
   escreval(numeroUm, " *", numeroDois, " =", multiplicar(numeroUm, numeroDois))
   escreval(numeroUm, " /", numeroDois, " = ", dividir(numeroUm, numeroDois):1:2)

Fimalgoritmo
