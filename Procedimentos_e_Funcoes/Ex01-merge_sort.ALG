Algoritmo "merge_sort"
              //1. Implemente o algoritmo de ordenação Merge Sort para ordenar um vetor de 20 números inteiros.
Var
   numeros: vetor[0..19] de inteiro
   numerosAux: vetor[0..19] de inteiro
   i: inteiro

procedimento numeros_solicitados()
inicio
   numeros[0] <- 1
   numeros[1] <- 7
   numeros[2] <- 10
   numeros[3] <- 9
   numeros[4] <- 2
   numeros[5] <- 3
   numeros[6] <- 20
   numeros[7] <- 18
   numeros[8] <- 33
   numeros[9] <- 90
   numeros[10] <- 44
   numeros[11] <- 34
   numeros[12] <- 30
   numeros[13] <- 21
   numeros[14] <- 27
   numeros[15] <- 5
   numeros[16] <- 8
   numeros[17] <- 99
   numeros[18] <- 54
   numeros[19] <- 68

   vet_numerosAux()
fimprocedimento

procedimento vet_numerosAux()
inicio
   para i de 0 ate 19 faca
      numerosAux[i] <- numeros[i]
   fimpara
fimprocedimento

procedimento mostrar_mumeros()
inicio
   para i de 0 ate 19 faca
      escreva(numeros[i])
   fimpara

   escreval(" ")
   escreval("-----------------------------------------------------")
   escreval(" ")
fimprocedimento

procedimento dividir(comeco, fim: inteiro)
var
   meio:inteiro
inicio
   se comeco < fim entao
      meio <-(comeco + fim) \ 2
      dividir(comeco, meio)
      dividir(meio + 1, fim)
      mesclar(comeco, meio, fim)
   fimse
fimprocedimento

procedimento mesclar(comeco, meio, fim:inteiro)
var
   indiceEsquerda, indiceDireita, cont:inteiro
inicio
   indiceEsquerda <- comeco
   indiceDireita <- meio + 1
   cont <- comeco

   enquanto (indiceEsquerda <= meio) e (indiceDireita <= fim) faca
      se (numerosAux[indiceEsquerda] < numerosAux[indiceDireita]) entao
         numeros[cont] <- numerosAux[indiceEsquerda]
         indiceEsquerda <- indiceEsquerda + 1
      senao
         numeros[cont] <- numerosAux[indiceDireita]
         indiceDireita <- indiceDireita + 1
      fimse
      cont <- cont + 1
   fimenquanto

   enquanto (indiceEsquerda <= meio) faca
      numeros[cont] <- numerosAux[indiceEsquerda]
      indiceEsquerda <- indiceEsquerda + 1
      cont <- cont + 1
   fimenquanto

   enquanto (indiceDireita <= fim) faca
      numeros[cont] <- numerosAux[indiceDireita]
      indiceDireita <- indiceDireita + 1
      cont <- cont + 1
   fimenquanto

   vet_numerosAux()
fimprocedimento

Inicio

   numeros_solicitados()

   escreval("")
   escreval("-----------------Números-Desorganizados--------------")
   mostrar_mumeros()

   dividir(1, 19)

   escreval("")
   escreval("-----------------Números-Organizados-----------------")
   mostrar_mumeros()

Fimalgoritmo
