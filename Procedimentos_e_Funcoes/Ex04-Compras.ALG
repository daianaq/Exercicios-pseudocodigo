Algoritmo "compras"
            //4. Crie um algoritmo que solicite ao usuário o valor da compra e a forma de pagamento. O programa deve aplicar descontos 
            //ou acréscimos conforme as opções abaixo:
            //1 - À vista em dinheiro ou pix → 15% de desconto;
            //2- À vista no cartão de crédito ou débitp → 10% de desconto;
            //3- Parcelado no cartão em duas vezes → Sem desconto ou acréscimo;
            //4 - Parcelado no cartão em três vezes ou mais → Acréscimo de 10% sobre o valor total
            //*Caso a opção 4 seja escolhida, o usuário deve informar a quantidade de parcelas (mínimo 3).
            //Após o cálculo do valor final, pergunte se o usuário deseja imprimir a via do comprovante 
            //e se deseja realizar uma nova operação ou encerrar o programa.

Var
   valor, desconto, acrescimo, resultado: real
   resp, respDois, forma, formaDois: inteiro

procedimento imprimir()
inicio
   repita
      escreval(" ")
      escreval("Deseja sua via?")
      escreval("1- Sim.")
      escreval("2- Não.")
      leia(resp)
      se resp = 1 entao
         escreval(" ")
         escreval("Imprimindo...")
         escreval("Obrigado pela compra! Volte sempre!")
      senao
         se resp = 2 entao
            escreval(" ")
            escreval("Obrigado pela compra! Volte sempre!")
         senao
            escreval(" ")
            escreval("Opcao invalida. Por favor, tente novamente!")
         fimse
      fimse
   ate (resp = 1) ou (resp = 2)
fimProcedimento

procedimento encerrar(resp: inteiro)
inicio
   repita
      escreval(" ")
      escreval("Deseja continuar?")
      escreval("1- Sim.")
      escreval("2- Não.")
      leia(respDois)
      se respDois = 1 entao
         limpatela
         escreval(" ")
         escreval("Nova Operação.")
      senao
         se respDois = 2 entao
            escreval(" ")
            escreval("Operações finalizadas!")
         senao
            escreval(" ")
            escreval("Não entendi. Tente novamente!")
         fimse
      fimse
   ate (respDois = 1) ou (respDois = 2)
fimProcedimento

Inicio
   repita
      escreval(" ")
      escreval("Valor da compra: ")
      leia(valor)

      limpatela
      escreval(" ")
      escreval("Qual a forma de pagamento?")
      escreval(" ")
      escreval("1- À Vista em Dinheiro ou Pix:")
      escreval("   Recebe 15% de desconto")
      escreval(" ")
      escreval("2- À vista no cartão de crédito:")
      escreval("   Recebe 10% de desconto")
      escreval(" ")
      escreval("3- Parcelado no cartão em duas vezes:")
      escreval("   Preço normal do produto sem juros")
      escreval(" ")
      escreval("4- Parcelado no cartão em três vezes ou mais:")
      escreval("   Preço normal do produto mais juros de 10%")
      leia(forma)

      escolha forma

      caso 1
         limpatela
         desconto <- valor * 0.15
         resultado <- valor - desconto
         escreval(" ")
         escreval("Opção escolhida: 1- À vista em Dinheiro ou Pix.")
         escreval("Valor total R$", valor)
         escreval("Valor do desconto R$", desconto)
         escreval("Valor final R$", resultado)

      caso 2
         limpatela
         desconto <- valor * 0.10
         resultado <- valor - desconto
         escreval(" ")
         escreval("Opção escolhida: 2- À vista no cartão de crédito.")
         escreval("Valor total R$", valor)
         escreval("Valor do desconto R$", desconto)
         escreval("Valor final R$", resultado)

      caso 3
         limpatela
         desconto <- 0
         resultado <- valor / 2
         escreval(" ")
         escreval("Opção escolhida: 3- Parcelado no cartão em duas vezes.")
         escreval("Valor total R$", valor)
         escreval("Valor do desconto R$", desconto)
         escreval("Valor final R$", resultado, "/mês")

      caso 4
         limpatela
         escreval(" ")
         escreval("Opção escolhida: 4- Parcelado no cartão em três vezes ou mais.")
         repita
            escreval(" ")
            escreval("Quantidade de parcelas: 3 ou MAIS")
            leia(formaDois)
            se formaDois > 2 entao
               acrescimo <- valor * 0.10
               resultado <- (valor + acrescimo) / formaDois
               escreval(" ")
               escreval("Valor total R$", valor)
               escreval("Valor do acréscimo R$", acrescimo)
               escreval("Valor final R$", resultado:1:2, "/mês")
            senao
               escreval(" ")
               escreval("Quantidade de parcela inválida. Tente novamente!")
            fimse
         ate formaDois > 2

      outrocaso
         escreval("Opção inválida!")

      fimescolha

      imprimir()
      encerrar(resp)

   ate (respDois = 2)
   
FimAlgoritmo
