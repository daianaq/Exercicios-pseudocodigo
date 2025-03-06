Algoritmo "combustivel"
                //3. Faça um algoritmo que solicite ao usuário o tipo de combustível a ser abastecido(álcool ou gasolina) e a quantidade 
                //em litros. O programa deve calcular o valor total a ser pago, aplicando descontos conforme a tabela abaixo:
                //-Álcool: R$ 4,35
                //Até 20 litros: desconto de 3% por litro.
                //Acima de 20 litros: desconto de 5% por litro.
                //-Gasolina: R$ 5,59
                //Até 20 litros: desconto de 4% por litro.
                //Acima de 20 litros: desconto de 6% por litro.

Var
   litro, precoFinal: real
   tipoComb: caractere

procedimento valor(tipoComb: caractere; litro: real)
inicio
   se tipoComb = "a" entao
      se litro <= 20 entao
         precoFinal <- (litro * 4.35) - (litro * 4.35 * 0.03)
      senao
         precoFinal <- (litro * 4.35) - (litro * 4.35 * 0.05)
      fimse
   senao
      se tipoComb = "g" entao
         se litro <= 20 entao
            precoFinal <- (litro * 5.59) - (litro * 5.59 * 0.04)
         senao
            precoFinal <- (litro * 5.59) - (litro * 5.59 * 0.06)
         fimse
      fimse
   fimse

   escreval ("O preço total do abastecimento é: R$ ", precoFinal:2:2)
fimprocedimento

Inicio

   repita
      escreval ("Escolha o tipo de combustível: 'a' - Álcool ou 'g' - Gasolina:")
      leia(tipoComb)
   ate (tipoComb = "a") ou (tipoComb = "g")

   escreval ("Informe a quantidade a ser abastecida (em litros):")
   leia(litro)

   valor(tipoComb, litro)

Fimalgoritmo
