// ignore: unused_import
import 'package:buscador_gif_aula/repositories/repositorio.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Image.asset("assets/images/logo.png"),
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
                labelText: "Digite sua pesquisa"),
          ),
          Container(),
        ],
      ),
    );
  }
}
