int contarPalavras(List<String> nomes) {
  int soma = 0;
  Set<String> palavrasUnicas = {};

  for (String nome in nomes) {
    if (!palavrasUnicas.contains(nome)) {
      palavrasUnicas.add(nome);
      soma++;
    }
  }
  return soma;
}

void main() {
  List<String> nomes = [
    "bruno",
    "bruno",
    "vinicius",
    "vinicius",
    "luan",
    "luan"
  ];

  int unico = contarPalavras(nomes);

  print(unico); // Deve imprimir 3, que são as palavras únicas na lista.
}

