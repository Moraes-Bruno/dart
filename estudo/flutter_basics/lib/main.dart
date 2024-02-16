import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

//StatelessWidget: O estado da pagina não se altera
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      //Scaffold = esqueleto da aplicação
      home: homePage(),
    );
  }
}
