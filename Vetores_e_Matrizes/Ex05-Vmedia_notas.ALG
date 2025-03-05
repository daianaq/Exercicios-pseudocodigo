Algoritmo "media_notas"
                //5. Faça um programa para ler a nota da prova de 15 alunos e armazene num vetor, 
                //calcule e imprima a media geral.

Var
   notas: vetor[0..14] de real
   soma, media: real
   i: inteiro

Inicio

   soma <- 0

   escreval("Informe as notas dos 15 alunos:")
   para i de 0 até 14 faça
      escreva("Nota do aluno ", i + 1, ": ")
      leia(notas[i])
      soma <- soma + notas[i]
   fimpara

   media <- soma / 15

   escreval("Média geral da turma: ", media:1:2 ,".")

Fimalgoritmo
