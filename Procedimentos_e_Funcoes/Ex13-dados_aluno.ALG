Algoritmo "dados_aluno"
                    //13. Crie um programa que seja possível escolher quais dados de um aluno sejam acessados, 
                    //com base nas seguintes informações: nome, 3 notas e a média. (Utilize o escolha-caso).
                    //Verifique cada nota, impedindo que o programa continue caso a nota informada seja maior que 10 ou menor que 0;
                    //Mostre para o usuário o menu abaixo e usando funções, mostre o que se pede em cada uma das opções.
                    //[ 1 ] – Mostrar nome da disciplina e a média;
                    //[ 2 ] – O nome da disciplina e a situação (aprovado, reprovado ou recuperação);
                    //[ 3 ] – Exibir todas as informações;
                    //[ 0 ] – Sair do programa.

Var
   disciplina: caractere
   opcao, i: inteiro
   notas, media, soma: real

funcao nome_disciplina():caractere
inicio
   retorne "Disciplina: "
fimfuncao

funcao media_notas(soma: real): real
inicio
   retorne soma / 3
fimfuncao

funcao aprovado_reprovado(media: real): caractere
inicio
   se media_notas(soma) >= 7 entao
      retorne "Aprovado"
   senao
      se media_notas(soma) > 5 entao
         retorne "Em recuperação"
      senao
         retorne "Reprovado"
      fimse
   fimse
fimfuncao

Inicio

   soma <- 0

   escreval("CADASTRO: ")
   escreva("Nome da disciplina: ")
   leia(disciplina)

   para i de 1 ate 3 faca
      repita
         limpatela
         escreva(i, "ª nota do aluno: ")
         leia(notas)
         limpatela
      ate (notas >= 0) e (notas <= 10)
      soma <- soma + notas
   fimpara

   repita
      escreval(" ")
      escreval("MENU:")
      escreval(" ")
      escreval("[1]– Mostrar o nome da disciplina e a média")
      escreval("[2]– Mostrar o nome da disciplina e a situação escolar")
      escreval("[3]– Exibir todas as informações;")
      escreval("[0]– Sair do programa.")
      escreval(" ")
      leia(opcao)

      escolha opcao

      caso 1
         limpatela
         escreval(nome_disciplina() + disciplina)
         escreval("Média: ", media_notas(soma):1:1)

      caso 2
         limpatela
         escreval(nome_disciplina() + disciplina)
         escreval("Situação: ", aprovado_reprovado(media))

      caso 3
         limpatela
         escreval(nome_disciplina() + disciplina)
         escreval("Média: ", media_notas(soma):1:1)
         escreval("Situação: ", aprovado_reprovado(media))

      fimescolha

   ate opcao = 0

Fimalgoritmo
