Algoritmo "preco_frutas"
                 //Uma fruteira está vendendo frutas com a seguinte tabela de preços:
                                //Até 5 Kg:    /  Acima de 5 Kg:
                 //Morango ->  R$ 2,50 por Kg  /  R$ 2,20 por Kg
                 //Maçã ->     R$ 1,80 por Kg  /  R$ 1,50 por Kg
                 //Se o cliente comprar mais de 8 Kg em frutas ou o valor total da compra ultrapassar R$ 25,00,
                 //receberá ainda um desconto de 10% sobre este total. Escreva um algoritmo para ler a
                 //quantidade (em Kg) de morangos e a quantidade (em Kg) de maças adquiridas e escreva o valor
                 //a ser pago pelo cliente.

Var
   qtdMorango, qtdMaca: real
   morangoValor, macaValor, valorFinal, desconto, pMorango,pMaca: real

Inicio
   escreval("Informe a quantidade de morangos em Kg: ")
   leia(qtdMorango)
   escreval("Informe a quantidade de maça em Kg: ")
   leia(qtdMaca)

   se (qtdMorango < 5.1) entao
      morangoValor <- 2.50
   senao
      se (qtdMorangos > 5) entao
         morangoValor <- 2.20
      senao
         escreval(" ")
      fimse
   fimse

   pMorango <- (qtdMorango * morangoValor)

   se (qtdMaca < 5.1) entao
      macaValor <- 1.80
   senao
      se (qtdMaca > 5) entao
         macaValor <- 1.50
      senao
         escreval(" ")
      fimse
   fimse

   pMaca <- (qtdMaca * macaValor)

   valorFinal <- (qtdMorango * morangoValor) + (qtdMaca * macaValor)

   se (qtdMorango + qtdMaca > 8) ou (valorFinal > 25) entao
      desconto <- (valorFinal * 0.10)
      valorFinal <- valorFinal - desconto
   fimse
   limpatela
   escreval("=========================================================")
   escreval("Quilos de morango:", qtdMorango,"Kg. Preço do morango: R$",pMorango)
   escreval("Quilos de maça:", qtdMaca,"Kg. Preço da maça: R$",pMaca)
   escreval("Valor do desconto: R$",desconto)
   escreval("Valor a ser pago: R$",valorFinal)
   escreval("==========================================================")
Fimalgoritmo
