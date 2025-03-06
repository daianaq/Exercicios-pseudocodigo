Algoritmo "autenticacao_usuarios"
                      //2. Desenvolva um algoritmo de autenticação de usuários que permita o cadastro e a verificação de login e senha. 
                      //O sistema deverá armazenar os dados de múltiplos usuários e oferecer um menu com as seguintes opções:
                      //1 - Fazer login: O usuário deverá inserir seu login e senha. Se as credenciais forem corretas, 
                      //será exibida a mensagem "BEM-VINDO". Caso contrário, será informada a falha na autenticação.
                      //2 - Sair: Encerra o programa.

Var
   loginCerto: vetor [0..4] de caractere
   senhaCerta: vetor [0..4] de caractere
   opcao, qtd, i: inteiro
   login, senha: caractere
   loginCorreto, senhaCorreta: logico

procedimento correto()
inicio
   loginCorreto <- falso
   senhaCorreta <- falso
   para i de 0 ate qtd-1 faca
      se login = loginCerto[i] entao
         loginCorreto <- verdadeiro
         se senha = senhaCerta[i] entao
            senhaCorreta <- verdadeiro
            interrompa
         fimse
      fimse
   fimpara

   se loginCorreto e senhaCorreta entao
      escreval("BEM-VINDO")
   senao
      escreval("Senha ou login inválidos.")
   fimse
fimprocedimento

procedimento informacoes()
inicio
   loginCorreto <- falso
   senhaCorreta <- falso
   para i de 0 ate qtd-1 faca
      se login = loginCerto[i] entao
         loginCorreto <- verdadeiro
         se senha = senhaCerta[i] entao
            senhaCorreta <- verdadeiro
            interrompa
         fimse
      fimse
   fimpara

   se loginCorreto e senhaCorreta entao
      escreval ("Nome: ", login)
      escreval ("Conta:", i + 1)
      escreval ("Saldo R$1.000")
   fimse
fimprocedimento

Inicio
   escreval("Quantos usuários serão cadastrados no sistema?")
   leia(qtd)

   para i de 0 ate qtd-1 faca
      escreval("Qual o login verdadeiro do usuário", i+1, "?")
      leia(loginCerto[i])
      escreval("Qual a senha verdadeira do usuário", i+1, "?")
      leia(senhaCerta[i])
   fimpara
   limpatela

   repita
      escreval("")
      escreval("MENU")
      escreval("1 - Fazer login.")
      escreval("2 - Sair.")
      escreval("Digite a opção desejada: ")
      leia(opcao)

      escolha opcao
      caso 1
         escreval("Digite o login: ")
         leia(login)
         escreval("Digite a senha: ")
         leia(senha)
         correto()
         informacoes()

      caso 2
         escreval("Sistema finalizado!")
      fimescolha
   ate opcao = 2

Fimalgoritmo
