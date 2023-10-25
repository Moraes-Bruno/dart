import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //chama o conteudo da pagina
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int contador = 0;

  void incrementar(){
    //Atualiza o estado da pagina
    setState(() {
      contador ++;
    });
  }

  void decrementar(){
    setState(() {
      contador --;
    });
  }

  //checa se o contador esta vazio (0)
  bool get estaVazio => contador == 0;

  //checa se o contador esta cheio(10)
  bool get estaCheio => contador == 10;



  @override
  Widget build(BuildContext context) {
    return (Container(
      //Estilização body (fundo da pagina)
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("../assets/images/clay-banks-u27Rrbs9Dwc-unsplash.jpg"),
          fit: BoxFit.cover)),
          child:  Column(
            //Alinha o conteudo da coluna no meio da pagina
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                estaCheio ? "Lotado" : "Pode entrar",
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.none
                ),
              ),
              //Adiciona um padding ao contador
               Padding(
                padding: const EdgeInsets.all(40),
                child: Text(
                  "$contador",
                  style: TextStyle(
                    fontSize: 30,
                    color: estaCheio ? Colors.black : Colors.white,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.none
                  ),
                ),
              ),
               Row(
                //Alinha os botoes no meio da linha
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: estaVazio ? null : decrementar,
                    style:TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100,100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    child: const Text(
                      "Saiu",
                      style:TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      )
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: estaCheio ? null : incrementar,
                    style:TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100,100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    child: const Text(
                      "Entrou",
                      style:TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      )
                    ),
                  )
                ],
              )
            ],
          ),
    ));
  }
}

