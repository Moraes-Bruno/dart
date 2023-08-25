import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: appBar(),
      body:  Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40,left: 20,right: 20),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(12, 0, 0, 0),
                  blurRadius: 40,
                  spreadRadius: 0.0
                )
              ]
            ),
            child:  TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset('/assets/icons/Search.svg')
                  ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                )
              ),
            ),
          )
        ],

      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Food App',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
          onTap: (){

          },
      child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: SvgPicture.asset('assets/icons/Arrow-Left2.svg',
        width: 20,
        height: 20,
        ),
      ),),
      actions: [
        GestureDetector(
          onTap: (){

          },
        child: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 37,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: SvgPicture.asset('assets/icons/dots.svg',
        width: 5,
        height: 5,
        ),
      ),),],
    );
  }
}
