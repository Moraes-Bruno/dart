/*Crie um objeto JSON contendo informações sobre um livro (título, autor, ano de
publicação). Em seguida, adicione um campo "gênero" a esse objeto JSON e, por fim,
imprima o objeto atualizado*/

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