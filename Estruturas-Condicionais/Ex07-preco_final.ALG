Algoritmo "preco_final"
                  //7. Faça um algoritmo para ler: a descrição do produto (nome), a quantidade adquirida e o preço
                  //unitário. Calcular e escrever o total (total = quantidade adquirida * preço unitário), o desconto e o
                  //total a pagar (total a pagar = total - desconto), sabendo-se que:
                  //- Se quantidade <= 5 o desconto será de 2%
                  //- Se quantidade > 5 e quantidade <=10 o desconto será de 3%
                  //- Se quantidade > 10 o desconto será de 5%.
Var
   nome:caracter
   qtd:inteiro
   precoU,desconto,total,subtotal:real

Inicio
   escreval("Informe a descrição do produto: ")
   leia(nome)
   escreval("Informe a quantidade do produto: ")
   leia(qtd)
   escreval("Informe o preço unitário do produto: ")
   leia(precoU)

   total <- precoU * qtd

   se qtd <= 5 entao
      desconto <- (total * 2)/100
   senao
      se qtd > 5 entao
         desconto <- (total * 3)/100
      senao
         se qtd > 10 entao
            desconto <- (total * 5)/100
         fimse
      fimse
   fimse
   
   total <- total - desconto
   subtotal <- qtd * precoU
   limpatela
   
   escreval("============================")
   escreval("Nome do produto: ", nome)
   escreval("Quantidade do produto: ", qtd)
   escreval("Preço unitário do produto: R$", precoU:1:2)
   escreval("Subtotal: R$",subtotal:1:2)
   escreval("Desconto: R$", desconto:1:2)
   escreval("Preço final: R$", total:1:2)
   escreval("============================")
Fimalgoritmo
