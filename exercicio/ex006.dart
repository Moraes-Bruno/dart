import 'dart:io';

void calculo(double ladoA, double ladoB, double ladoC) {
  if (ladoA == ladoB || ladoB == ladoC || ladoC == ladoA) {
    print("isoceles");
  } else if (ladoA == ladoB && ladoB == ladoC) {
    print("Equilatero");
  } else {
    print("escaleno");
  }
}

void main() {
  print("Informe o primeiro lado do triangulo");
  double ladoA = double.parse(stdin.readLineSync()!);
  print("Informe o segundo lado do triangulo");
  double ladoB = double.parse(stdin.readLineSync()!);
  print("Informe o terceiro lado do triangulo");
  double ladoC = double.parse(stdin.readLineSync()!);

  calculo(ladoA, ladoB, ladoC);
}
