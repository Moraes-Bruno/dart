/*Crie uma função que divida dois números e lide com a exceção quando um divisor
for igual a zero. Faça um programa que chame essa função e imprima uma mensagem
apropriada em caso de exceção.*/

void divisao(double numero,double divisor) {
  try {
    int divisao = numero ~/ divisor;
    print(divisao);
  } catch (e) {
    print("impossivel dividir por zero");
  }
}

void main() {
  divisao(100,0);
}
