Algoritmo "aumento_precos"
                      //7. Uma empresa deseja aumentar seus preços em 20%. Faça um algoritmo que leia o código e o preço de custo
                      //de cada produto e calcule o preço novo. Calcule também, a média dos preços com e sem aumento. 
                      //Mostre o código e o preço novo de cada produto e, no final, as médias. 
                      //A entrada de dados deve terminar quando for lido um código de produto negativo.(Use o comando enquanto-faça).

Var
   codigo, cont: inteiro
   precoCusto, precoNovo, somaPrecoAntigo, somaPrecoNovo: real

Inicio
   somaPrecoAntigo <- 0
   somaPrecoNovo <- 0
   cont <- 0

   escreval("Informe o código do produto(negativo para sair): ")
   leia(codigo)

   enquanto codigo >= 0 faca
      escreval("Informe o preço de custo do produto: ")
      leia(precoCusto)

      precoNovo <- precoCusto + (precoCusto * 20)/100)

      escreval("Código do produto:" , codigo)
      escreval("Preço novo: R$", precoNovo:1:2)
      escreval("-----------------------------")

      somaPrecoAntigo <- somaPrecoAntigo + precoCusto
      somaPrecoNovo <- somaPrecoNovo + precoNovo
      cont <- cont + 1

      escreval("Informe o código do próximo produto(negativo para sair): ")
      leia(codigo)
   fimenquanto

   se cont > 0 entao
      escreval("Média dos preços sem aumento: R$",(somaPrecoAntigo / cont):1:2 ,".")
      escreval("Média dos preços com aumento: R$",(somaPrecoNovo / cont):1:2 ,".")
   senao
      escreval("Nenhum produto foi inserido.")
   fimse

Fimalgoritmo
