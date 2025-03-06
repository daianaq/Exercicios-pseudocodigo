Algoritmo "pilha"
            //5. Implemente um algoritmo que simule o funcionamento de uma pilha utilizando um vetor de caracteres com capacidade para 
            //20 elementos. O programa deve oferecer um menu interativo com as seguintes opções:
            //1 - Empilhar um novo elemento na pilha.
            //2 - Desempilhar o elemento do topo da pilha.
            //3️ - Esvaziar completamente a pilha.
            //4️ - Listar todos os elementos da pilha do topo até a base.
            //5️ - Verificar se a pilha está vazia ou cheia.
            //6️ - Sair do programa.
            //Garanta que as operações respeitem as regras de uma pilha (LIFO - Last In, First Out) e que o programa não permita 
            //operações inválidas, como desempilhar de uma pilha vazia ou empilhar quando a pilha estiver cheia.
 
Var
   pilha: vetor[0..19] de caractere
   opcao, qtd, i: inteiro

procedimento desempilhar()
inicio
   se qtd > 0 entao
      qtd <- qtd - 1
      escreval("Elemento removido:", pilha[qtd])
   senao
      escreval("Pilha está vazia! Não há elementos para remover.")
   fimse
fimprocedimento

procedimento empilhar()
inicio
   se qtd = 20 entao
      escreval("Pilha está cheia! Não é possível adicionar mais elementos.")
   senao
      escreval("Digite um caractere para inserir na pilha:")
      leia(pilha[qtd])
      qtd <- qtd + 1
      escreval("Elemento inserido na pilha!")
   fimse
fimprocedimento

procedimento limparTodos()
inicio
   qtd <- 0
   escreval("Pilha esvaziada!")
fimprocedimento

Inicio

   repita
      escreval(" ")
      escreval("Digite sua opção:")
      escreval("1 - Empilhar um elemento.")
      escreval("2 - Desempilhar um elemento.")
      escreval("3 - Limpar todos os elementos.")
      escreval("4 - Listar todos os elementos.")
      escreval("5 - Checar se a pilha está vazia ou cheia.")
      escreval("6 - Sair.")
      escreval(" ")
      leia(opcao)
      escreval(" ")

      escolha opcao

         caso 1
            empilhar()

         caso 2
            desempilhar()

         caso 3
            limparTodos()

         caso 4
            se qtd > 0 entao
               escreval("Elementos da pilha:")
               para i de qtd-1 ate 0 passo -1 faca
                  escreval(pilha[i])
               fimpara
            senao
               escreval("A pilha está vazia.")
            fimse

         caso 5
            se qtd = 0 entao
               escreval("A pilha está vazia.")
            senao
               se qtd = 20 entao
                  escreval("A pilha está cheia.")
               senao
                  escreval("A pilha contém", qtd, " elementos.")
               fimse
            fimse

         caso 6
            escreval("Programa encerrado!")

         outrocaso
            escreval("Opção inválida! Tente novamente.")

      fimescolha

   ate opcao = 6

Fimalgoritmo
