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

  print(produtosList[""]);

}