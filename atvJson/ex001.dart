import 'dart:convert';

String produtos() {
  return """[
    {
      "Nome": "Notebook",
      "specs": [
        "i9 13900h",
        "RTX 4080",
        "2TB NVME"
      ]
    },
    {
      "Nome": "PC",
      "specs": [
        "ryzen 5",
        "rx 6800XT",
        "4TB nvme"
      ]
    }
  ]""";
}

void main() {
  List<dynamic> produtosList = jsonDecode(produtos());

  for (var produto in produtosList) {
    String nome = produto['Nome'];
    List<dynamic> specs = produto['specs'];

    print('Nome: $nome');
    print('Especificações:$specs');
  }
}
