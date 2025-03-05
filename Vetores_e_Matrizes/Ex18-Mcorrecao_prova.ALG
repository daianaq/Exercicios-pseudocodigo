Algoritmo "Mcorrecao_prova"
                      //7. Desenvolva um algoritmo que corrija as provas de três alunos. O algoritmo deve:
                      //1 - Solicitar ao usuário que informe o gabarito da prova, contendo 10 respostas de 'a' a 'e'.
                      //2 - Para cada aluno, solicitar a matrícula e suas 10 respostas (também de 'a' a 'e').
                      //3 - Comparar as respostas de cada aluno com o gabarito e calcular a nota do aluno.
                      //4 - Para cada aluno, exibir a matrícula, as respostas fornecidas, a nota obtida e se o aluno foi aprovado (nota igual ou superior a 7) ou reprovado.
                      //5 - Calcular e exibir o percentual de aprovação da turma.

Var
   gabarito: vetor[0..9] de caractere
   respostas: vetor[0..2, 0..9] de caractere
   resultado: vetor[0..2] de inteiro
   matricula: vetor[0..2] de inteiro
   i, j, aprovado: inteiro
   media: real

Inicio

   escreval("Informe o gabarito da prova(10 respostas de 'a' a 'e'):")
   para j de 0 ate 9 faca
      escreva("Resposta da questão ", j + 1, ": ")
      leia(gabarito[j])
   fimpara

   para i de 0 ate 2 faca
      limpatela
      escreval("Informe as respostas do aluno", i + 1, " (10 respostas de 'a' a 'e'):")
      escreva("Matrícula do aluno:")
      leia(matricula[i])
      para j de 0 ate 9 faca
         escreva("Resposta da questão", j + 1, ": ")
         leia(respostas[i, j])
      fimpara
   fimpara

   para i de 0 ate 2 faca
      resultado[i] <- 0
      para j de 0 ate 9 faca
         se respostas[i, j] = gabarito[j] entao
            resultado[i] <- resultado[i] + 1
         fimse
      fimpara
   fimpara
   limpatela

   escreval("Gabarito: ")
   para i de 0 ate 9 faca
      escreva(gabarito[i], " ")
   fimpara
   escreval("")

   escreval("")
   aprovado <- 0
   para i de 0 ate 2 faca
      escreval("-----------------------------")
      escreval("Matrícula:", matricula[i])
      escreval("Respostas: ", respostas[i, 0], " ", respostas[i, 1], " ", respostas[i, 2], " ", respostas[i, 3], " ", respostas[i, 4], " ", respostas[i, 5], " ", respostas[i, 6], " ", respostas[i, 7], " ", respostas[i, 8], " ", respostas[i, 9])
      escreval("Nota:", resultado[i])

      se resultado[i] >= 7 entao
         escreval("Aluno aprovado!")
         aprovado <- aprovado + 1
      senao
         escreval("Aluno reprovado!")
      fimse
      escreval("")
   fimpara

   media <- (aprovado / 3) * 100
   escreval("Percentual de aprovação:", media:1:2, "%")

Fimalgoritmo
