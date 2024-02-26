import 'dart:convert';
import 'package:http/http.dart' as http;

class Repositorio{

  //api.giphy.com/v1/gifs/search
  //api_key=***
  //q=busca
  //limit=20
  //rating=g

  Future<Map> buscarDados(String texto) async{
    var url = Uri.https("api.giphy.com","/v1/gifs/search",
        {"api_key":"v4PieRc5jHKN0iecXAta8fSUzIC1H25X","q":"$texto",
        "limit":"20","rating":"g"});
    //print(url);
    var resultado = await http.get(url);
    //print(json.decode(resultado.body));
    return json.decode(resultado.body);
  }

  //api.giphy.com/v1/gifs/trending
  //api_key:***
  //limit: integer
  // rating: string

  //flutter dot_env

  Future<Map> buscarTrending() async{
    var url = Uri.https("api.giphy.com","/v1/gifs/trending",
        {"api_key":"v4PieRc5jHKN0iecXAta8fSUzIC1H25X",
          "limit":"20","rating":"g"});
    //print(url);
    var resultado = await http.get(url);
    //print(json.decode(resultado.body));
    return json.decode(resultado.body);
  }
}