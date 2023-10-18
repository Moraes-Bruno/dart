import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void tap(){
    print("vc clicou no botao");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text("My App Bar")),
          backgroundColor: Colors.teal[300],
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.logout)
          ],
        ),
        body: Center(
          child: GestureDetector(
            onTap: (){
              tap();
            },
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.teal[300],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(25),
              child: Center(
                  child: Text(
                "Click Here",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
