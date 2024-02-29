import 'package:buscador_gif_aula/pages/gif_page.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:share_plus/share_plus.dart';

class Grid {
  Widget tabelaGifs(BuildContext context, AsyncSnapshot snapshot,texto) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
      itemCount: 21,
      itemBuilder: (context, index) {
        if (texto == null || index < snapshot.data["data"].length){
           return GestureDetector(
          child: FadeInImage.memoryNetwork(
            image: snapshot.data["data"][index]["images"]["fixed_height"]
                ["url"],
            height: 300.0,
            fit: BoxFit.cover,
            placeholder: kTransparentImage,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  //rota para a pagina de um gif em especifico,envia as informações necessarias para a exibição do gif
                    builder: (context) =>
                        GifPage(snapshot.data["data"][index])));
          },
          onLongPress: () {
            Share.share(
                snapshot.data["data"][index]["images"]["fixed_height"]["url"]);
          },
        );
        }
        // ignore: avoid_unnecessary_containers
        return Container(
            child: GestureDetector(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add, color: Colors.white, size: 70.0),
                  Text(
                    "Carregar mais...",
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  )
                ],
              ),
            ),
          );
      },
    );
  }
}
