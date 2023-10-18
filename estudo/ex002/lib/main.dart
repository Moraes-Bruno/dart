// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            actions: [Icon(Icons.logout)],
          ),
          body: Column(
            children: [
              Expanded(child: Container(color: Colors.teal[100])),
              Expanded(child: Container(color: Colors.teal[200])),
              Expanded(child: Container(color: Colors.teal[300]))
            ],
          )),
    );
  }
}
