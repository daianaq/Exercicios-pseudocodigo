Algoritmo "comprar_ingresso"
                          4. Desenvolva um algoritmo para simular o processo de compra de ingressos para o cinema.

Var
   guicheLivre, filme, horariosDisp, ingressosDisp: caractere
   opcao, assento, horarioSessao: caractere

Inicio

   repita
      escreval("Existe algum guichê livre? (n-Não / s-Sim)")
      leia(guicheLivre)

      se guicheLivre = "n" entao
         limpatela
         escreval("Guichês ocupados! Espere um pouco.")
      senao
         se guicheLivre = "s" entao
            limpatela
            escreval("Guichê livre.")
         senao
            limpatela
            escreval("Opção inválida.")
         fimse
      fimse
   ate guicheLivre = "s"

   repita
      limpatela
      escreval("Escolha o filme:")
      leia(filme)

      limpatela
      escreval("Existem horários disponíveis para este filme? (n-Não / s-Sim)")
      leia(horariosDisp)

      se horariosDisp = "n" entao
         limpatela
         escreval("Horários indisponíveis.")
         escreval("a - Escolher outro filme.")
         escreval("b - Encerrar atendimento.")
         leia(opcao)

         se opcao = "b" entao
            limpatela
            escreval("Atendimento encerrado.")
            interrompa
         fimse
      senao
         se horariosDisp = "s" entao
            limpatela
            escreval("Horários disponíveis para o filme.")
         senao
            limpatela
            escreval("Opção inválida!")
         fimse
      fimse
   ate horariosDisp = "s"

   se horariosDisp = "s" entao
      repita
         limpatela
         escreval("Informe o horário da sessão:")
         leia(horarioSessao)

         limpatela
         escreval("Existem ingressos disponíveis para este horário? (n-Não / s-Sim)")
         leia(ingressosDisp)

         se ingressosDisp = "n" entao
            limpatela
            escreval("Ingressos indisponíveis.")
            escreval("a - Escolher outro horário.")
            escreval("b - Encerrar atendimento.")
            leia(opcao)

            se opcao = "b" entao
               limpatela
               escreval("Atendimento encerrado.")
               interrompa
            fimse
         senao
            limpatela
            escreval("Ingressos disponíveis.")
         fimse
      ate ingressosDisp = "s"
   fimse

   se ingressosDisp = "s" entao
      repita
         limpatela
         escreval("Informe o assento da sessão:")
         leia(assento)

         limpatela
         escreval("O assento ", assento, " está disponível? (n-Não / s-Sim)")
         leia(assento)

         se assento = "n" entao
            limpatela
            escreval("Assento indisponível.")
            escreval("a - Escolher outro assento.")
            escreval("b - Encerrar atendimento.")
            leia(opcao)

            se opcao = "b" entao
               limpatela
               escreval("Atendimento encerrado.")
               interrompa
            fimse
         senao
            limpatela
            escreval("Compra realizada com sucesso!")
            escreval("Filme:", filme)
            escreval("Horário:", horarioSessao)
            escreval("Assento:", assento)
         fimse
      ate assento = "s"
   fimse

Fimalgoritmo
