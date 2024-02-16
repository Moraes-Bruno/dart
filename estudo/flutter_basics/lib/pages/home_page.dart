import 'package:flutter/material.dart';

//StatelessWidget: O estado(conteudo) da pagina não se altera
//StatefulWidget: O estado(conteudo) da pagina se altera
// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  //Variavel
  String btnText = 'Clique aqui';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar: cria um cabeçalho
      appBar: AppBar(
        title: const Text(
          "Flutter Basics",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 132, 176, 212),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //altera a cor do botão quando selecionado/pressionado
                  foregroundColor: const Color.fromARGB(
                      255, 223, 175, 233), // Background color
                ),
                onPressed: () {
                  //Altera/define o estado da pagina
                  setState(() {
                    btnText = 'Clicado';
                  });
                  //Obs: Não utilizar print em produção
                  print('alguma coisa');
                },
                child: Text(
                  btnText,
                  style: const TextStyle(color: Colors.blueGrey),
                )),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 230, 238, 245),
        //fixedColor: altera a cor da opção quando a mesma estiver selecionada
        fixedColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: currentIndex,//variavel
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
