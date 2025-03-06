Algoritmo "idade"
          //12. Escreva um programa que solicite ao usuário o ano de nascimento e, utilizando uma função, retorne com a idade do usuário.

const
   anoAtual = 2024
   mesAtual = 5
   diaAtual = 2

Var
   ano, mes, dia: real

funcao calcularIdade(ano, mes, dia: real): real
inicio
   se (mes < mesAtual) ou ((mes = mesAtual) e (dia <= diaAtual)) entao
      retorne anoAtual - ano
   senao
      retorne anoAtual - ano - 1
   fimse
fimfuncao

Inicio

   escreva("Informe o dia do seu nascimento: ")
   leia(dia)
   escreva("Informe o mês do seu nascimento: ")
   leia(mes)
   escreva("Informe o ano do seu nascimento: ")
   leia(ano)

   limpatela
   escreval("Você tem", calcularIdade(ano, mes, dia), " anos.")

Fimalgoritmo
