algoritmo
var
   i, codigo_aluno: inteiro
   nota: real
   quantidade_D, quantidade_AB, quantidade_E: inteiro
   percentual_E: real
   conceito: caractere

inicio
   quantidade_D <- 0
   quantidade_AB <- 0
   quantidade_E <- 0

   para i de 1 ate 10 faca
      escreval("--- Aluno ", i, " ---")
      escreva("Código do aluno: ")
      leia(codigo_aluno)
      escreva("Nota final: ")
      leia(nota)

      // Definindo o conceito com base na tabela
      se (nota >= 0) e (nota <= 2.9) entao
         conceito <- "E"
         quantidade_E <- quantidade_E + 1
      senao
         se (nota >= 3.0) e (nota <= 4.9) entao
            conceito <- "D"
            quantidade_D <- quantidade_D + 1
         senao
            se (nota >= 5.0) e (nota <= 6.9) entao
               conceito <- "C"
            senao
               se (nota >= 7.0) e (nota <= 8.9) entao
                  conceito <- "B"
                  quantidade_AB <- quantidade_AB + 1
               senao
                  se (nota >= 9.0) e (nota <= 10.0) entao
                     conceito <- "A"
                     quantidade_AB <- quantidade_AB + 1
                  fimse
               fimse
            fimse
         fimse
      fimse

      escreval("Conceito do aluno ", codigo_aluno, ": ", conceito)
      escreval("")
   fimpara

   // Cálculos da questão 5
   percentual_E <- (quantidade_E / 10) * 100

   escreval("======= ESTATÍSTICAS FINAIS =======")
   escreval("A. Quantidade de alunos com conceito D: ", quantidade_D)
   escreval("B. Quantidade de alunos com conceito A ou B: ", quantidade_AB)
   escreval("C. Percentual de alunos com conceito E: ", percentual_E:2:1, "%")
   escreval("===================================")

fimalgoritmo