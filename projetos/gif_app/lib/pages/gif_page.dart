import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class GifPage extends StatelessWidget {
  late final Map _gifData;

  //mapa que ira receber as informações do gif que foi clicado
  GifPage(this._gifData, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
    color: Colors.white, //change your color here
  ),
        backgroundColor: Colors.black,
        title: Image.asset("assets/images/logo.png", height: 45),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.share),onPressed: (){
             Share.share(_gifData["images"]["fixed_height"]["url"]);
          },)
        ],
      ),backgroundColor: Colors.black,
      body: Center(
        //ira exibir o gif de acordo com as informações contidas no mapa _gifData
        child: Image.network(_gifData["images"]["fixed_height"]["url"]),
    ));
  }
}