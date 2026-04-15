algoritmo
var
   i, codigo_aluno: inteiro
   nota: real
   quantidade_D, quantidade_AB, quantidade_E: inteiro
   percentual_E: real
   // Nao precisamos da variavel conceito para a questao 5, 
   // apenas dos contadores.

inicio
   // Inicializando os contadores
   quantidade_D <- 0
   quantidade_AB <- 0
   quantidade_E <- 0

   // O "para" percorre os 10 alunos da classe
   para i de 1 ate 10 faca
      escreval("Dados do aluno ", i)
      escreva("Digite o código: ")
      leia(codigo_aluno)
      escreva("Digite a nota final: ")
      leia(nota)

      // Verificando as condições para os contadores da questão 5
      
      // Para a alínea C (Conceito E: 0 a 2.9)
      se (nota >= 0) e (nota <= 2.9) entao
         quantidade_E <- quantidade_E + 1
      fimse

      // Para a alínea A (Conceito D: 3.0 a 4.9)
      se (nota >= 3.0) e (nota <= 4.9) entao
         quantidade_D <- quantidade_D + 1
      fimse

      // Para a alínea B (Conceito A ou B: 7.0 a 10.0)
      se (nota >= 7.0) e (nota <= 10.0) entao
         quantidade_AB <- quantidade_AB + 1
      fimse
      
      escreval("---------------------------------------")
   fimpara

   // Cálculo do percentual (regra de três: quantidade / total * 100)
   percentual_E <- (quantidade_E / 10) * 100

   // Exibição dos resultados solicitados na Questão 5
   escreval("")
   escreval("======= ESTATÍSTICAS DA CLASSE =======")
   escreval("A. Quantidade de alunos com conceito D: ", quantidade_D)
   escreval("B. Quantidade de alunos com conceito A ou B: ", quantidade_AB)
   escreval("C. Percentual de alunos com conceito E: ", percentual_E:2:1, "%")
   escreval("======================================")

fimalgoritmo