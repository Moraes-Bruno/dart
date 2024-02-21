import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/next_page.dart';

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
  String btnText2 = 'Clique aqui tambem';
  int currentIndex = 0;
  bool _isclicked = false;

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
      body: Center(
        child: currentIndex == 0
            ? Container(
                width: double.infinity,
                height: double.infinity,
                color: const Color.fromARGB(255, 235, 235, 235),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //altera a cor do botão quando selecionado/pressionado
                          foregroundColor: const Color.fromARGB(
                              255, 223, 175, 233), // Background color
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => const NextPage(),
                          ));
                        },
                        child: const Text(
                          'Next Page',
                          style: TextStyle(color: Colors.blueGrey),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //altera a cor do botão quando selecionado/pressionado
                          foregroundColor: const Color.fromARGB(
                              255, 223, 175, 233), // Background color
                        ),
                        onPressed: () {
                          //Altera/define o estado da pagina
                          setState(() {
                            btnText2 = 'Clicado';
                          });
                        },
                        child: Text(
                          btnText2,
                          style: const TextStyle(color: Colors.blueGrey),
                        )),
                  ],
                ),
              )
            : GestureDetector(
                onTap: () {
                  setState(() {
                    _isclicked = !_isclicked;
                    print(_isclicked);
                  });
                },
                child: _isclicked ? Image.network(
                    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/97/39/7f/caption.jpg?w=1200&h=-1&s=1&cx=1920&cy=1080&chk=v1_f31158e4bb953d28a308') : null,
              ),
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
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
