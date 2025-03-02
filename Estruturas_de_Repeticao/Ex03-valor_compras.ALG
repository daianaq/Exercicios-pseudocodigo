Algoritmo "valor_compras"
                      //3. Escreva um algoritmo que permita ao usuário adicionar produtos a uma compra, informando o preço e 
                      //a quantidade de cada item. O algoritmo deve calcular o subtotal para cada produto e acumular 
                      //o valor total da compra até que o usuário decida não adicionar mais produtos.

Var
   valorTotal,subtotal,precoProduto: real
   qtdProduto: inteiro
   resp: caractere

Inicio

   valorTotal <- 0

   repita

      escreval("Deseja adicionar um novo produto? (sim ou nao)")
      leia(resp)
      limpatela
      se (resp <> "sim") e (resp <> "nao") entao
         escreval("Resposta inválida. Responda 'sim' ou 'nao'.")
      senao
         se resp = "sim" entao
            limpatela
            escreval("Informe o preço do produto:")
            leia(precoProduto)
            escreval("Informe a quantidade do produto:")
            leia(qtdProduto)

            subtotal <- precoProduto * qtdProduto
            valorTotal <- valorTotal + subtotal
         senao
            limpatela
            escreval("Finalizando a compra...")
         fimse
      fimse

   ate resp = "nao"
   limpatela
   escreval("Valor total da compra: R$", valorTotal:1:2)

Fimalgoritmo
