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
    }

  ]""";
}

void main() {
  List<dynamic> produtosList = jsonDecode(produtos());

  Map<String,dynamic> novoDado = {
    "Preco":"30000"
  };

  produtosList.add(novoDado);

  print(produtosList);

}