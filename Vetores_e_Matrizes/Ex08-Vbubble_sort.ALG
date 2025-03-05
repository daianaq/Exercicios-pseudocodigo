Algoritmo "bubble_sort"
                //8. Implemente um algoritmo que realize a ordenação do
                //vetor utilizando o método de troca (bubble sort).

Var
   numeros: vetor [0..19] de inteiro
   i, j, guardar: inteiro

Inicio
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
   numeros[12] <- 20
   numeros[13] <- 21
   numeros[14] <- 27
   numeros[15] <- 5
   numeros[16] <- 8
   numeros[17] <- 99
   numeros[18] <- 54
   numeros[19] <- 68
   
   para i de 0 ate 18 faca
      para j de 0 ate 18-i faca
         se numeros[j] > numeros[j+1] entao
            guardar <- numeros[j]
            numeros[j] <- numeros[j+1]
            numeros[j+1] <- guardar
            escreval(numeros[j] ," -",numeros[j-1]," :TROCA")
         senao
            escreval(numeros[j] ," -",numeros[j+1]," :NÃO TROCA")
         fimse
      fimpara
   fimpara

   escreval("")
   escreval("Vetor ordenado:")
   para i de 0 ate 19 faca
      escreval(numeros[i])
   fimpara

Fimalgoritmo
