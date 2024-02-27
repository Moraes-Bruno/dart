import 'dart:math';

import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _gender = 0;
  int _height = 170;
  int _age = 20;
  double _weight = 75;
  double _bmi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calculadora de IMC",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          _genderSelector(),
          _heightInput(),
          _weightAgeInput(),
          _bmiResult()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _bmi = _weight / pow(_height / 100, 2);
          });
        },
        backgroundColor: Colors.blue[100],
        child: const Icon(Icons.calculate),
      ),
    );
  }

  Widget _genderSelector() {
    // ignore: avoid_unnecessary_containers
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              IconButton(
                iconSize: 60,
                onPressed: () {
                  setState(() {
                    _gender = 0;
                  });
                },
                icon: Icon(
                  Icons.male,
                  color: _gender == 0 ? Colors.blue : Colors.black,
                ),
              ),
              const Text(
                "Masculino",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                iconSize: 60,
                onPressed: () {
                  setState(() {
                    _gender = 1;
                  });
                },
                icon: Icon(
                  Icons.female,
                  color: _gender == 1 ? Colors.pink : Colors.black,
                ),
              ),
              const Text(
                "Feminino",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _heightInput() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        children: [
          const Text(
            "Altura",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Slider(
              min: 1,
              max: 272,
              thumbColor: Colors.blue,
              activeColor: Colors.blue,
              value: _height.toDouble(),
              onChanged: (value) {
                setState(() {
                  _height = value.toInt();
                });
              }),
          Text(
            "${_height}cm",
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _weightAgeInput() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          // Widget que ocupa metade da tela
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Column(
              children: [
                const Text(
                  "Peso",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                ItemCount(
                  initialValue: _weight,
                  minValue: 1,
                  maxValue: 300,
                  onChanged: (value) {
                    setState(() {
                      _weight = value.toDouble();
                    });
                  },
                  decimalPlaces: 0,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          // Widget que ocupa metade da tela
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(15),
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Column(
              children: [
                const Text(
                  "Idade",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                ItemCount(
                  initialValue: _age,
                  minValue: 1,
                  maxValue: 122,
                  onChanged: (value) {
                    setState(() {
                      _age = value.toInt();
                    });
                  },
                  decimalPlaces: 0,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _bmiResult() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Container(
          child: Text(
            "IMC: ${_bmi.toStringAsFixed(2)}",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
