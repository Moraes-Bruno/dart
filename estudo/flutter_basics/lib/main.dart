import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Stateless Widget:Os elemetos da tela não se alteram
//Statefull widget:Os elementos da tela se alteram
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String btnName = "Click";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Remove o banner escrito "debug"
      debugShowCheckedModeBanner: false,

      //Scaffold = esqueleto do App
      home: Scaffold(
        //cria o header(cabeçalho) da pagina
        appBar: AppBar(
          //Muda a cor do header
          backgroundColor: Colors.blueAccent,
          //titulo do header
          title: const Text("Nome Pagina"),
        ),
        //Adiciona um botão centralizado na pagina
        body: Center(
          child: currentIndex == 0 ? Container(
            //infimity:Faz com que a largura seja a largura maxima da tela
            width: double.infinity,
            height: double.infinity,
            color: Colors.white70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      backgroundColor: Colors.greenAccent  
                    ),
                    onPressed: () {
                      //"Diz" para o flutter que o conteudo exibido sera alterado
                      setState(() {
                        btnName = 'Voce clicou';
                      });
                    },
                    child: Text(btnName)),
                ElevatedButton(
                    onPressed: () {
                      //"Diz" para o flutter que o conteudo exibido sera alterado
                      setState(() {
                        btnName = 'Voce clicou';
                      });
                    },
                    child: Text(btnName))
              ],
            ),
          ): Image.asset('images/city.png'),
        ),
        //Adicioa botoes de navegação na parte inferior(bottom) da pa
        bottomNavigationBar: BottomNavigationBar(
          //botoes
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home, color: Colors.blueAccent)),
            BottomNavigationBarItem(
                label: 'Favorites',
                icon: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24,
                )),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
