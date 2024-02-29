//arquivo de conexao com a api
import 'package:buscador_gif_aula/repositories/repositorio.dart';
import 'package:flutter/material.dart';
//codigo que monta o layout com os gifs
import 'package:buscador_gif_aula/widgets/grid_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Repositorio repositorio = Repositorio();
  Grid grid = Grid();
  String _search = "";//usado para armazenar a string de pesquisa

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset("assets/images/logo.png", height: 45),
        centerTitle: true,
      ),
      body: Column(
        children: [
           TextField(
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              labelText: "Pesquise Aqui!",
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green, width: 1.0),
              ),focusColor: Colors.redAccent,
              filled: true,
              fillColor: Colors.black,
              contentPadding: EdgeInsets.all(10.0),
            ),
            onSubmitted: (String texto){
              setState(() {
                    _search = texto;//faz com que a variavel _search receba a string de pesquisa
                  });
            },
          ),
          Expanded(
            child: FutureBuilder(
              //se a variavel search(pesquisa) estiver vazia exibe os gifs em alta caso contrario exibe gifs releacionados a pesquisa
              future: _search == "" ? repositorio.buscarTrending(): repositorio.buscarDados(_search),
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
                    //chama a função que constroe o layout dos gifs
                    return grid.tabelaGifs(context, snapshot,_search);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
