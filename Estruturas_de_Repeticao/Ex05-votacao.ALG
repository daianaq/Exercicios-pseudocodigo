Algoritmo "votacao"
              //5.Crie um algoritmo para simular um sistema de votação. O sistema deve permitir que os candidatos 
              //votem em um dos candidatos ou escolham votar em branco ou nulo. A votação continua até que o 
              //usuário digite 0 , momento em que o sistema exibe o resultado da eleição.
Var
   codigo, votosUm, votosDois, votosTres: inteiro
   votosQuatro, votosBrancos, votosNulos: inteiro

Inicio
   votosUm <- 0
   votosDois <- 0
   votosTres <- 0
   votosQuatro <- 0
   votosNulos <- 0
   votosBrancos <- 0

   repita
      limpatela
      escreval("1 - Canditado 1.")
      escreval("2 - Canditado 2.")
      escreval("3 - Canditado 3.")
      escreval("4 - Canditado 4.")
      escreval("5 - Branco.")
      escreval("6 - Nulo.")
      escreval("")
      escreval("Informe o código do seu candidato: (Digite 0 para encerrar): ")
      leia(codigo)

      se codigo <> 0 entao
         escolha codigo
         caso 1
            votosUm <- votosUm + 1
         caso 2
            votosDois <- votosDois + 1
         caso 3
            votosTres <- votosTres + 1
         caso 4
            votosQuatro <- votosQuatro + 1
         caso 5
            votosNulos <- votosNulos + 1
         caso 6
            votosBrancos <- votosBrancos + 1
         outrocaso
            escreval("Código inválido! Tente novamente.")
         fimescolha
      fimse

   ate (codigo = 0)

   limpatela

   escreval("RESULTADO DA ELEIÇÃO:")
   escreval("Candidato 1:", votosUm, " voto(s).")
   escreval("Candidato 2:", votosDois, " voto(s).")
   escreval("Candidato 3:", votosTres, " voto(s).")
   escreval("Candidato 4:", votosQuatro, " voto(s).")
   escreval("Votos Nulos:", votosNulos, " voto(s).")
   escreval("Votos em Branco:", votosBrancos, " voto(s).")

Fimalgoritmo

