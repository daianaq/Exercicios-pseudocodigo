Algoritmo "ordenacao_nomes"
                      //10. Elabore um algoritmo que leia o nome e a idade de 5 pessoas e armazene essas informações
                      //em dois vetores distintos. Em seguida, o algoritmo deve ordenar e mostrar as pessoas de acordo  
                      //com a ordem alfabética.

Var
   nomes: vetor[0..4] de caractere
   idades: vetor[0..4] de inteiro
   nomeTemporario: caractere
   idadeTemporaria: inteiro
   i, j: inteiro

Inicio

   para i de 0 ate 4 faça
      escreva("Informe o nome:")
      leia(nomes[i])
      escreva("Informe a idade:")
      leia(idades[i])
   fimpara

   para i de 0 ate 3 faca
      para j de i+1 ate 4 faca
         se nomes[i] > nomes[j] entao
            nomeTemporario <- nomes[i]
            idadeTemporaria <- idades[i]
            nomes[i] <- nomes[j]
            idades[i] <- idades[j]
            nomes[j] <- nomeTemporario
            idades[j] <- idadeTemporaria
         fimse
      fimpara
   fimpara

   escreval("")
   escreval("Lista ordenada por nomes(ordem alfabética):")
   para i de 0 ate 4 faca
      escreval("Nome: ", nomes[i], " - Idade: ", idades[i])
   fimpara

Fimalgoritmo
