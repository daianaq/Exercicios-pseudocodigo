Algoritmo "soma_ou_multiplicacao"
                              //3. Faça um algoritmo que leia dois valores inteiros A e B se os valores forem iguais deverá
                              //somar os dois, caso contrário multiplique A por B. Ao final de qualquer um dos cálculos deve-se
                              //atribuir o resultado para uma variável C e mostrar seu conteúdo na tela.

Var
   a,b,c:inteiro

Inicio
   escreval("Informe os valores de A e B, respectivamente: ")
   leia(a,b)

   se a = b entao
      escreval("SOMA: ")
      c <- a + b
   senao
      escreval("MULTIPLICAÇÃO: ")
      c <- a * b
   fimse
   
   escreval("Resultado - ",c)

Fimalgoritmo
