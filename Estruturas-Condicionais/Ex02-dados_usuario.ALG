Algoritmo "dados_usuario"
                          //2. Faça um algoritmo que leia o nome, o sexo e o estado civil de uma pessoa. Caso sexo seja “F” e
                          //estado civil seja “CASADA”, solicitar o tempo de casada (anos). Por fim, mostre os dados do usuário.
       
Var
   nome,sexo,estadoCivil: caracter
   tempoCasada:inteiro
   condicao:logico

Inicio
   escreval("Informe seu nome: ")
   leia(nome)
   escreval("Olá, ",nome,". Informe seu sexo(F-FEMININO/M-MASCULINO): ")
   leia(sexo)
   escreval("Agora digite seu estado civil: ")
   escreval("·Solteiro(a)")
   escreval("·Casado(a)")
   escreval("·Separado(a)")
   escreval("·Divorciado(a)")
   escreval("·Viúvo(a)")
   leia(estadoCivil)

   se (estadoCivil = "casada") ou (estadoCivil = "CASADA") ou (estadoCivil = "Casada") e (sexo = "f") ou (sexo = "F")entao
      condicao <- VERDADEIRO
      escreval ("Informe quanto tempo de casada: ")
      leia(tempoCasada)
   fimse
   
   limpatela
   escreval("==DADOS DO USUÁRIO==")
   escreval("Nome: ",nome,".")
   escreval("Sexo: ",sexo,".")
   escreval("Estado Civil: ",estadoCivil,".")
   se condicao = VERDADEIRO entao
      escreval("Anos de casada:",tempoCasada," anos.")
   fimse
   escreval("---------------------")

Fimalgoritmo
