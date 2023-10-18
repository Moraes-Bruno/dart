import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
        backgroundColor: Colors.teal,
      ),
      drawer: const Drawer(
        backgroundColor: Colors.white,
      ),
      body:  Center(
        child: ElevatedButton(
          child: const Text("Second page"),
          onPressed: () {
            Navigator.pushNamed(context,'/secondPage');
          },
        ),
      ),
    );
  }
}
