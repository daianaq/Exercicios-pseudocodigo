Algoritmo "Mbuscar_numero"
                    //3. Leia uma matriz 5 x 5. Leia também um valor 'x'. O programa deverá fazer uma busca desse valor  
                    //na matriz e, ao final, escrever a localização(linha e coluna) ou uma mensagem de "não encontrado".

Var
   numeros: vetor[0..4, 0..4] de inteiro
   i, j, buscarN, linhaN, colunaN: inteiro
   encontrado: logico

Inicio

   para i de 0 ate 4 faca
      para j de 0 ate 4 faca
         escreva("Informe o valor para a posição [", i, ",", j,"]:")
         leia(numeros[i, j])
      fimpara
   fimpara

   escreval("")
   escreva("Informe o valor a ser buscado na matriz:")
   leia(buscarN)

   encontrado <- falso

   para i de 0 ate 4 faca
      para j de 0 ate 4 faca
         se numeros[i, j] = buscarN entao
            linhaN <- i
            colunaN <- j
            encontrado <- verdadeiro
         fimse
      fimpara
   fimpara

   escreval("")
   se encontrado entao
      escreval("Valor encontrado na linha", linhaN, " - coluna", colunaN ,".")
   senao
      escreval("Valor não encontrado na matriz.")
   fimse

Fimalgoritmo
