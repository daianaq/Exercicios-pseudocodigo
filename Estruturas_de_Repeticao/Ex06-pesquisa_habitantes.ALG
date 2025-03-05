Algoritmo "pesquisa_habitantes"
                         //Foi feita uma pesquisa entre os 1000 habitantes de uma região para coletar os seguintes dados:
                         //sexo(0-feminino, 1-masculino), idade e altura. Faça um algoritmo que leia as informações 
                         //coletadas e mostre as seguintes informações: (use o comando repita-até)  
                         //a) média da idade do grupo;
                         //b) média da altura das mulheres;
                         //c) média da idade dos homens;
                         //d) percentual de pessoas com idade entre 18 e 35 anos (inclusive).

Var
   sexo, idade, altura, contHab, sexoF, sexoM, qtd18_35: inteiro
   somaIdadeHab, somaAlturaFem, somaIdadeMasc: real
   mediaIdadeHab, mediaAlturaFem, mediaIdadeMasc, percentual: real

Inicio
   contHab <- 0
   sexoF <- 0
   sexoM <- 0
   qtd18_35 <- 0
   somaIdadeHab <- 0
   somaAlturaFem <- 0
   somaIdadeMasc <- 0

   repita
      escreval("PESQUISA - Habitante nº ", contHab + 1 ,":")

      repita
         escreval("Informe o seu sexo(0 - Feminino, 1 - Masculino): ")
         leia(sexo)
      ate (sexo = 0) ou (sexo = 1)

      escreval("Informe a sua idade: ")
      leia(idade)

      escreval("Informe a sua altura(em cm): ")
      leia(altura)

      somaIdadeHab <- somaIdadeHab + idade

      se sexo = 1 entao
         sexoM <- sexoM + 1
         somaIdadeMasc <- somaIdadeMasc + idade
      senao
         sexoF <- sexoF + 1
         somaAlturaFem <- somaAlturaFem + altura
      fimse

      se (idade >= 18) e (idade <= 35) entao
         qtd18_35 <- qtd18_35 + 1
      fimse

      contHab <- contHab + 1

   ate (contHab = 3)

   limpatela

   se contHab > 0 entao
      mediaIdadeHab <- somaIdadeHab / contHab
   senao
      mediaIdadeHab <- 0
   fimse

   se sexoF > 0 entao
      mediaAlturaFem <- somaAlturaFem / sexoF
   senao
      mediaAlturaFem <- 0
   fimse

   se sexoM > 0 entao
      mediaIdadeMasc <- somaIdadeMasc / sexoM
   senao
      mediaIdadeMasc <- 0
   fimse

   percentual <- (qtd18_35 / contHab) * 100

   escreval("A média da idade do grupo é: " ,mediaIdadeHab:1:2 ,".")
   escreval("A média da altura das mulheres é: " ,mediaAlturaFem:1:2 ,".")
   escreval("A média da idade dos homens é: " ,mediaIdadeMasc:1:2 ,".")
   escreval("O percentual de pessoas com idade entre 18 e 35 anos é: " ,percentual:1:2, "%" ,".")

Fimalgoritmo
