algoritmo
var
   i, n, fat: inteiro
inicio
   escreva("Digite um valor para n: ")
   leia(n)
   fat <- 1
   // O fatorial multiplica todos os números de 1 até n
   para i de 1 ate n faca
      fat <- fat * i
   fimpara
   escreval("O fatorial de ", n, " é: ", fat)
fimalgoritmo