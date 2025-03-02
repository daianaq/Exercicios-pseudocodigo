Algoritmo "desligar_note"
                    //2. Escreva um algoritmo que oriente o usuário passo a passo para desligar um notebook. 
                    //O algoritmo deve verificar se cada ação foi realizada corretamente.
Var
   resp: caractere

Inicio
   repita
      limpatela
      escreval("Todas as abas estão fechadas? (sim ou nao)")
      leia(resp)
      se resp = "nao" entao
         escreval("Feche todas as abas.")
      senao
         se resp <> "sim" entao
            escreval("Opção inválida, tente novamente.")
         fimse
      fimse
   ate resp = "sim"

   repita
      limpatela
      escreval("Deslizar o cursor até o logotipo do Windows. Feito? (sim ou nao)")
      leia(resp)
   ate resp = "sim"

   repita
      limpatela
      escreval("Dar um clique com o botão direito. Feito? (sim ou nao)")
      leia(resp)
   ate resp = "sim"

   repita
      limpatela
      escreval("Selecionar a opção 'Desligar'. Feito? (sim ou nao)")
      leia(resp)
   ate resp = "sim"

   repita
      limpatela
      escreval("Esperar o computador desligar. Feito? (sim ou nao)")
      leia(resp)
   ate resp = "sim"

   repita
      limpatela
      escreval("Baixar a tela do computador. Feito? (sim ou nao)")
      leia(resp)
   ate resp = "sim"

   repita
      limpatela
      escreval("Tirar todos os cabos conectados. Feito? (sim ou nao)")
      leia(resp)
   ate resp = "sim"

   repita
      limpatela
      escreval("Colocar o notebook na pasta. Feito? (sim ou nao)")
      leia(resp)
   ate resp = "sim"

   repita
      limpatela
      escreval("Fechar a pasta. Feito? (sim ou nao)")
      leia(resp)
   ate resp = "sim"

   repita
      limpatela
      escreval("Guardar a pasta na mochila. Feito? (sim ou nao)")
      leia(resp)
   ate resp = "sim"

   repita
      limpatela
      escreval("Sair de casa. Feito? (sim ou nao)")
      leia(resp)
   ate resp = "sim"

Fimalgoritmo
