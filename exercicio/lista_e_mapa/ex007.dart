Map<String, int> contarPalavras(List<String> palavras) {
  Map<String, int> resultado = {};

  for (String palavra in palavras) {
    resultado[palavra] = (resultado[palavra] ?? 0) + 1; // Incrementa a contagem da palavra
  }

  return resultado;
}

void main() {
  List<String> palavras = ["gato", "cachorro", "gato", "rato", "cachorro", "gato"];

  Map<String, int> contagem = contarPalavras(palavras);

  // Imprime o mapa de contagem de palavras
  print(contagem); // Deve imprimir {"gato": 3, "cachorro": 2, "rato": 1}
}
