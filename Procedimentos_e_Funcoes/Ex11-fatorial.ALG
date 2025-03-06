Algoritmo "fatorial"
              //11. Crie um algoritmo que leia um número inteiro e calcule seu fatorial utilizando uma função recursiva. 
              //O programa deve exibir o resultado na tela.

Var
   numero: inteiro
   
funcao fatorial (n: inteiro): inteiro
inicio
   se n <= 2 entao
      retorne n
   senao
      retorne n * fatorial(n - 1)
   fimse
fimfuncao

Inicio

   escreval("Digite um número: ")
   leia(numero)
   escreval(fatorial(numero))

Fimalgoritmo
