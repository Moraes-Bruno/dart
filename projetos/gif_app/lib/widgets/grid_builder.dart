import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Grid {
  Widget tabelaGifs(BuildContext context, AsyncSnapshot snapshot) {
  return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
      itemCount: 20,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: FadeInImage.memoryNetwork(
            image: snapshot.data["data"][index]["images"]["fixed_height"]
                ["url"],
            height: 300.0,
            fit: BoxFit.cover,
            placeholder: kTransparentImage,
          ),
        );
      });
}
}

