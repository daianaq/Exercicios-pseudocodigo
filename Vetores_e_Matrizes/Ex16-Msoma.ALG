Algoritmo "Msoma"
            //5. Leia uma matriz de 3 x 3. Em seguida, o algoritmo deve calcular e exibir:
            //1 - A soma de todos os elementos localizados acima da diagonal principal;
            //2 - A soma de todos os elementos localizados abaixo da diagonal principal;
            //3 - A soma de todos os elementos localizados na diagonal principal;
            //4 - A soma de todos os elementos localizados na diagonal secundária.

Var
   numeros: vetor[0..2, 0..2] de inteiro
   somaAcima, somaAbaixo, somaDiagonalP, somaDiagonalS: inteiro
   i, j: inteiro

Inicio
   somaAcima <- 0
   somaAbaixo <- 0
   somaDiagonalP <- 0
   somaDiagonalS <- 0

   escreval("Informe os valores da matriz 3x3:")
   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         escreva("Posição [", i, ",", j, "]:")
         leia(numeros[i, j])
      fimpara
   fimpara

   escreval("Matriz inserida:")
   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         escreva(numeros[i, j], " ")
      fimpara
      escreval("")
   fimpara

   para i de 0 ate 2 faca
      para j de 0 ate 2 faca
         se i = j entao
            somaDiagonalP <- somaDiagonalP + numeros[i, j]
         fimse
         se i + j = 2 entao
            somaDiagonalS <- somaDiagonalS + numeros[i, j]
         fimse
         se i < j entao
            somaAcima <- somaAcima + numeros[i, j]
         fimse
         se i > j entao
            somaAbaixo <- somaAbaixo + numeros[i, j]
         fimse
      fimpara
   fimpara

   escreval("Soma dos elementos acima da diagonal principal: ", somaAcima)
   escreval("Soma dos elementos abaixo da diagonal principal: ", somaAbaixo)
   escreval("Soma dos elementos na diagonal principal: ", somaDiagonalP)
   escreval("Soma dos elementos na diagonal secundária: ", somaDiagonalS)

Fimalgoritmo
