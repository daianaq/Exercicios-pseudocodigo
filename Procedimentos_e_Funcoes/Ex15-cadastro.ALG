Algoritmo "cadastro"
         //15. Desenvolva um algoritmo que permita cadastrar, listar, buscar e excluir usuários de um sistema. 
         //Cada usuário terá um nome e uma idade. O programa deve oferecer um menu interativo com as seguintes opções:
         //1 - Cadastrar usuários -> O usuário informa quantos cadastros deseja realizar e insere nome e idade de cada um.
         //2 - Listar usuários -> Exibe todos os usuários cadastrados.
         //3 - Buscar usuário -> O usuário informa um nome e o sistema verifica se ele está cadastrado, exibindo seus dados se encontrado.
         //4 - Remover usuário -> O usuário informa um nome e, se encontrado, o sistema o remove da lista.
         //5 - Sair do sistema -> Finaliza a execução do programa.

Var
   idades: vetor [0..99] de inteiro
   nomes: vetor [0..99] de caractere
   opcao, qtd, i, j, encontrado: inteiro
   nomeProcurado, nomeExcluir: caracter
   achou: logico

procedimento cadastrar()
inicio
   escreval(" ")
   escreval("Qual a quantidade de usuários que serão cadastrados?")
   leia(qtd)

   para i de 0 ate qtd-1 faca
      escreval(" ")
      escreval("Informe o nome do usuário: ")
      leia(nomes[i])
      escreval("Informe a idade do usuário: ")
      leia(idades[i])
   fimpara
fimprocedimento

procedimento listar()
inicio
   escreval(" ")
   escreval("USUÁRIOS CADASTRASDOS:")
   escreval(" ")
   escreval("NOME:":10, "|" ," IDADE:")
   escreval(" ")

   para i de 0 ate qtd-1 faca
      escreval("Usuário" , i + 1, ":")
      escreval(nomes[i]:10, "|", idades[i], " anos.")
   fimpara
fimprocedimento

funcao buscar(buscarnome:caractere): inteiro
inicio
   para i de 0 ate qtd faca
      se nomes[i] = buscarnome entao
         retorne i
         interrompa
      senao
         retorne -1
      fimse
   fimpara
fimfuncao

procedimento excluir()
inicio
   achou <- falso

   escreval ("Digite o nome do usuário que deseja excluir: ")
   leia (nomeExcluir)

   para i de 0 ate qtd-1 faca
      se nomeExcluir = nomes[i] entao
         escreval (" ")
         escreval ("USUÁRIO EXCLUÍDO!")
         achou <- verdadeiro
         para j de i ate qtd-2 faca
            nomes[j] <- nomes[j+1]
            idades[j] <- idades[j+1]
         fimpara
         qtd <- qtd - 1
         interrompa
      fimse
   fimpara

   se achou = falso entao
      escreval (" ")
      escreval ("USUÁRIO INEXISTENTE!")
   fimse
fimprocedimento

Inicio

   repita
      escreval (" ")
      escreval ("MENU:")
      escreval (" ")
      escreval ("1 - Cadastrar usuários.")
      escreval ("2 - Usuários cadastrados.")
      escreval ("3 - Buscar usuário.")
      escreval ("4 - Remover usuário.")
      escreval ("5 - Sair do sistema.")
      escreval (" ")
      escreval ("Digite sua opção: ")
      leia (opcao)

      escolha (opcao)

      caso = 1
         limpatela
         cadastrar()

      caso = 2
         limpatela
         listar()

      caso = 3
         limpatela
         escreval ("Digite o nome do usuário que deseja buscar: ")
         leia (nomeProcurado)
         encontrado <- buscar(nomeProcurado)
         se encontrado = -1 entao
            escreval ("USUÁRIO INEXISTENTE!")
         senao
            escreval (" ")
            escreval ("USUÁRIO ENCONTRADO!")
            escreval (" ")
            escreval ("Usuario: ", i+1)
            escreval ("Nome: ", nomes[encontrado])
            escreval ("Idade: ", idades[encontrado])
         fimse

      caso = 4
         limpatela
         excluir()

      caso = 5
         escreval (" ")
         escreval ("Operação finalizada!")

      fimescolha

   ate opcao = 5

Fimalgoritmo
