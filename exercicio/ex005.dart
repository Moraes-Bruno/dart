import 'dart:io';

String aprovacao(double? nota) {
  if (nota == null) {
    return "digite uma nota valida";
  } else if (nota >= 6) {
    return "aprovado";
  } else if (nota >= 4) {
    return "recuperação";
  } else {
    return "reprovado";
  }
}

void main() {
  print("Digite a sua nota");
  double? nota = double.tryParse(stdin.readLineSync()!);

  print(aprovacao(nota));
}
