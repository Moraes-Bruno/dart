import 'package:flutter/material.dart';
import 'package:navigator/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: const Text("text"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const SecondPage();
              }));
            },
            child: const Text("Click Here"),
          ),
        ),
      );
  }
}