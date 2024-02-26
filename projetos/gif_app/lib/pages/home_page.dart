// ignore: unused_import
import 'package:buscador_gif_aula/repositories/repositorio.dart';
import 'package:flutter/material.dart';
import 'package:buscador_gif_aula/widgets/grid_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Repositorio repositorio = Repositorio();
  Grid grid = Grid();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset("assets/images/logo.png", height: 45),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: "Pesquise Aqui!",
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0),
              ),
              filled: true,
              fillColor: Colors.black,
              contentPadding: EdgeInsets.all(10.0),
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: repositorio.buscarTrending(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.waiting:
                    return Container(
                        width: 200,
                        height: 200,
                        alignment: Alignment.center,
                        child: const CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                          strokeWidth: 5.0,
                        ));
                  default:
                    if (snapshot.hasError) {
                      return const Text("Erro ao carregar os GIFS");
                    }
                    return grid.tabelaGifs(context, snapshot);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
