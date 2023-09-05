Map<String, String> dicionario = {
  "apple": "maçã",
  "banana": "banana",
  "orange": "laranja",
  "avocado": "abacate",
  "strawberry": "morango",
  "pineapple": "abacaxi"
};

String traduzirPalavra(String palavra) {
  // Verifica se a palavra está no dicionário
  if (dicionario.containsKey(palavra)) {
    return dicionario[palavra]!;
  } else {
    return "Tradução não encontrada";
  }
}

void main() {
  String palavra = "apple"; // Palavra em inglês a ser traduzida

  String traducao = traduzirPalavra(palavra);

  print("A tradução de '$palavra' é: $traducao");
}
