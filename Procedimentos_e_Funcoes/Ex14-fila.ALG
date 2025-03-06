Algoritmo "fila"
            //14. Implemente um algoritmo que simule o funcionamento de umaestrutura de fila, onde os elementos são inseridos no final
            //e removidos do início (FIFO - First In, First Out). O programa deve conter as seguintes funcionalidades:
            //1 - Enfileirar um elemento na fila (caso haja espaço disponível).
            //2 - Desenfileirar um elemento da fila (caso não esteja vazia).
            //3 - Limpar todos os elementos da fila.
            //4 - Listar todos os elementos armazenados na fila.
            //5 - Verificar se a fila está vazia.
            //6 -  Encerrar o programa.

const
   TAM_FILA = 25

Var
   fila: vetor[1..TAM_FILA] de caractere
   opcao, inicioFila, finalFila, qtde, i: inteiro
   elemento: caractere

funcao fila_cheia(): logico
inicio
   retorne qtde = TAM_FILA
fimfuncao

funcao fila_vazia(): logico
inicio
   retorne qtde = 0
fimfuncao

procedimento enfileirar()
inicio
   se fila_cheia() entao
      escreval("A Fila está cheia!")
   senao
      escreval("Informe o elemento que deseja enfileirar:")
      leia(elemento)
      finalFila <- finalFila + 1
      se finalFila > TAM_FILA entao
         finalFila <- 1
      fimse
      fila[finalFila] <- elemento
      qtde <- qtde + 1
      escreval("Elemento enfileirado com sucesso!")
   fimse
fimprocedimento

procedimento desenfileirar()
inicio
   se fila_vazia() entao
      escreval("A Fila está vazia!")
   senao
      escreval("Elemento removido: ", fila[inicioFila])
      inicioFila <- inicioFila + 1
      se inicioFila > TAM_FILA entao
         inicioFila <- 1
      fimse
      qtde <- qtde - 1
   fimse
fimprocedimento

procedimento limpar_todos()
inicio
   inicioFila <- 1
   finalFila <- 0
   qtde <- 0
   escreval("Todos os elementos foram removidos da fila!")
fimprocedimento

procedimento listar()
var
   posicao: inteiro
inicio
   se fila_vazia() entao
      escreval("A Fila está vazia!")
   senao
      escreval("Elementos da fila:")
      posicao <- inicioFila
      para i de 1 ate qtde faca
         escreval(fila[posicao])
         posicao <- posicao + 1
         se posicao > TAM_FILA entao
            posicao <- 1
         fimse
      fimpara
   fimse
fimprocedimento

funcao mostrar_proximo(): caractere
inicio
   se fila_vazia() entao
      escreval("A Fila está vazia!")
      retorne ""
   senao
      retorne fila[inicioFila]
   fimse
fimfuncao

Inicio

   inicioFila <- 1
   finalFila <- 0
   qtde <- 0

   repita
      escreval("")
      escreval("Escolha a opção:")
      escreval("1- Enfileirar um elemento.")
      escreval("2- Desenfileirar um elemento.")
      escreval("3- Limpar todos os elementos.")
      escreval("4- Listar todos os elementos.")
      escreval("5- Checar se a fila está vazia.")
      escreval("6- Sair do sistema.")
      leia(opcao)

      limpatela

      escolha opcao
      caso 1
         enfileirar()
      caso 2
         desenfileirar()
      caso 3
         limpar_todos()
      caso 4
         listar()
      caso 5
         se fila_vazia() entao
            escreval("A Fila está vazia!")
         senao
            escreval("A Fila contém", qtde, " elementos.")
         fimse
      caso 6
         escreval("Encerrando o programa...")
      outrocaso
         escreval("Opção inválida! Tente novamente.")
      fimescolha

   ate (opcao = 6)

Fimalgoritmo
