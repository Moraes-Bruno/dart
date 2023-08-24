import 'dart:math';

String gerador(int tamanho, {bool caracteresEspeciais = true}) {
  String char =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  if (caracteresEspeciais) {
    char += "!@#\$%&*()_-+=[]{}?/\\£¢";
  }

  Random aleatorio = Random();
  String senha = "";

  for (int i = 0; i < tamanho; i++) {
    int index = aleatorio.nextInt(char.length);
    print(index);
    senha += char[index];
  }

  return senha;
  
}

void main() {
  String senha = gerador(10);
  print(senha);
}
