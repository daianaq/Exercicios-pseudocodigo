Algoritmo "loja_CDs"
               //8. Em uma loja de CD ́s existem apenas quatro tipos de preços que estão associados a cores.
               //Assim os CDs que ficam na loja não são marcados por preços e sim por cores. Desenvolva o
               //algoritmo que a partir da entrada da cor o software mostre o preço. A loja está atualmente com a
               //seguinte tabela de preços.   
               //Cor:     Verde     Azul    Amarelo   Vermelho  
               //Preço: R$ 10,00  R$ 20,00  R$ 30,00  R$ 40,00

const
   verde =10.0
   azul =20.0
   amarelo =30.0
   vermelho =40.0

Var
   cor:caracter

Inicio
   repita
      escreval("Informe a cor do CD: ")
      leia(cor)
   ate (cor = "verde") ou  (cor = "azul") ou  (cor = "amarelo") ou (cor = "vermelho")

   se cor = "verde" entao
      escreval("O CD custa: R$",verde)
   senao
      se cor = "azul" entao
         escreval("O CD custa: R$",azul)
      senao
         se cor = "amarelo" entao
            escreval("O CD custa: R$",amarelo)
         senao
            se cor = "vermelho" entao
               escreval("O CD custa: R$",vermelho)
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo
