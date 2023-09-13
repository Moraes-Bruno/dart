/*Crie um programa em Dart que analise um JSON contendo informações de um
usuário, incluindo nome, idade e endereço. Em seguida, extraia e imprima a idade desse
usuário*/

import 'dart:convert';

String produtos() {
  return """{
      "nome": "John",
      "sobrenome":"Doe",
      "idade":"Desconhecido"
    }""";
}

void main() {
  
  Map<String,dynamic> produtosList = jsonDecode(produtos());

  print(produtosList["nome"]);
  print(produtosList["sobrenome"]);
  print(produtosList["idade"]);

}