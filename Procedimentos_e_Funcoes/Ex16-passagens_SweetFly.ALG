Algoritmo "passagens_SweetFly"
              //16. Desenvolva um algoritmo para um sistema de reserva de passagens aéreas SweetFly. O sistema deve permitir:
              //1 - Registrar o número de aviões disponíveis.
              //2 - Definir a quantidade de assentos disponíveis em cada avião.
              //3 - Reservar passagens para passageiros, associando-os a um avião específico.
              //4 - Consultar passageiros de um avião pelo número da aeronave.
              //5 - Consultar um passageiro específico e verificar em qual avião ele está registrado.
              //6 - Encerrar o programa.
              //-O sistema deve garantir que:
              //*Cada avião possua um número único e uma quantidade limitada de assentos.
              //*O número total de assentos disponíveis para todos os aviões seja, no máximo, 20.
              //*As reservas sejam registradas corretamente, reduzindo a quantidade de assentos disponíveis.
              //*Caso um avião esteja lotado, novas reservas não sejam permitidas para ele.
              //*As consultas exibam corretamente os dados dos passageiros e aviões cadastrados.

tipo
   registroPassageiro = registro
      numeroAviao: inteiro
      nomePassageiro: caractere
   fimregistro

Var
   cadastros: vetor[0..3] de registroPassageiro
   passageiros: vetor[0..19] de registroPassageiro
   assentos: vetor[0..3] de inteiro
   totalPassageiros, opcao, j, i: inteiro

procedimento numeros_avioes()
var
   i: inteiro
inicio
   para i de 0 ate 3 faca
      escreva("Informe o número do ", i + 1, "º avião:")
      leia(cadastros[i].numeroAviao)
   fimpara
fimprocedimento

procedimento numeros_assentos()
var
   qtdMaximaTotal, qtdAssentosOcupados, qtdDisponivel, i: inteiro
inicio
   qtdMaximaTotal <- 20
   qtdAssentosOcupados <- 0

   para i de 0 ate 3 faca
      qtdDisponivel <- qtdMaximaTotal - qtdAssentosOcupados
      repita
         escreval("Quantidade disponível:", qtdDisponivel)
         escreval("Informe a quantidade de assentos do avião", cadastros[i].numeroAviao, ":")
         leia(assentos[i])
         se assentos[i] <= qtdDisponivel então
            qtdAssentosOcupados <- qtdAssentosOcupados + assentos[i]
         senao
            escreval("Número de assentos excede a quantidade máxima disponível!")
         fimse
      ate assentos[i] <= qtdDisponivel
   fimpara

   para i de 0 ate 3 faca
      escreval("O avião", cadastros[i].numeroAviao, " tem", assentos[i], " assentos.")
   fimpara
fimprocedimento

procedimento reservar_passagem()
var
   i, numero: inteiro
   encontrado: logico
inicio
   escreval("Informe o número do avião desejado:")
   leia(numero)

   encontrado <- falso

   para i de 0 ate 3 faca
      se cadastros[i].numeroAviao = numero entao
         escreval("Avião", cadastros[i].numeroAviao, " encontrado!")
         se assentos[i] > 0 entao
            escreval(assentos[i], " assentos para este avião.")
            escreval("Informe o nome do passageiro:")
            leia(passageiros[totalPassageiros].nomePassageiro)
            passageiros[totalPassageiros].numeroAviao <- numero
            totalPassageiros <- totalPassageiros + 1
            assentos[i] <- assentos[i] - 1
            limpatela
            escreval("Número do avião:", cadastros[i].numeroAviao)
            escreval("Nome do passageiro: ", passageiros[totalPassageiros - 1].nomePassageiro)
            escreval("Reserva realizada com sucesso!")
         senao
            escreval("Não há assentos disponíveis para este avião!")
         fimse
         encontrado <- verdadeiro
         interrompa
      fimse
   fimpara

   se encontrado = falso entao
      escreval("Este avião não existe!")
   fimse
fimprocedimento

procedimento consultar_aviao()
var
   numero, i: inteiro
   encontrado: logico
inicio
   escreval("Informe o número do avião: ")
   leia(numero)

   encontrado <- falso

   para i de 0 ate 3 faca
      se cadastros[i].numeroAviao = numero entao
         escreval("Avião ", cadastros[i].numeroAviao, ":")
         para j de 0 ate totalPassageiros - 1 faca
            se passageiros[j].numeroAviao = numero entao
               escreval("Passageiro: ", passageiros[j].nomePassageiro)
            fimse
         fimpara
         encontrado <- verdadeiro
         interrompa
      fimse
   fimpara
   
   se encontrado = falso entao
      escreval("Este avião não existe!")
   fimse
fimprocedimento

procedimento consultar_passageiro()
var
   nome: caractere
   encontrado: logico
   i: inteiro
inicio
   escreval("Informe o nome do passageiro: ")
   leia(nome)
   
   encontrado <- falso
   
   para i de 0 ate totalPassageiros - 1 faca
      se passageiros[i].nomePassageiro = nome entao
         escreval("Passageiro ", nome, " encontrado no avião", passageiros[i].numeroAviao)
        encontrado <- verdadeiro
         interrompa
      fimse
   fimpara

   se encontrado = falso entao
      escreval("Não há reservas realizadas para este passageiro!")
   fimse
fimprocedimento

Inicio

   totalPassageiros <- 0

   repita
      escreval("Menu: SweetFly")
      escreval("[1]-Registrar o número de cada avião.")
      escreval("[2]-Registrar a quantidade de assentos disponíveis em cada avião.")
      escreval("[3]-Reservar passagem aérea.")
      escreval("[4]-Realizar consulta por avião.")
      escreval("[5]-Realizar consulta por passageiro.")
      escreval("[6]-Encerrar.")
      escreval(" ")
      leia(opcao)

      escolha opcao
      caso 1
         limpatela
         escreval("Opção 1: Registrar o número de cada avião.")
         numeros_avioes()

      caso 2
         limpatela
         escreval("Opção 2: Registrar a quantidade de assentos disponíveis em cada avião.")
         numeros_assentos()

      caso 3
         limpatela
         escreval("Opção 3: Reservar passagem aérea.")
         reservar_passagem()

      caso 4
         limpatela
         escreval("Opção 4: Realizar consulta por avião.")
         consultar_aviao()

      caso 5
         limpatela
         escreval("Opção 5: Realizar consulta por passageiro.")
         consultar_passageiro()

      caso 6
         limpatela
         escreval("Encerrando o programa...")

      fimescolha

   ate opcao = 6

Fimalgoritmo
