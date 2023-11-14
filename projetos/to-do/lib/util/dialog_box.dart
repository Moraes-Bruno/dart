import 'package:flutter/material.dart';
import 'package:to_do/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

   DialogBox({super.key,required this.controller,required this.onSave,required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      // ignore: sized_box_for_whitespace
      content: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //input do usuario
             TextField(
              controller: controller ,
              style: const TextStyle(
                  color: Colors.white), // Define a cor do texto digitado
              decoration: const InputDecoration(
                hintText: "New Task",
                hintStyle:
                    TextStyle(color: Colors.white), // Define a cor do hint text
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white
                      ), // Cor da borda quando o campo está focado
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(text: "Save", onPressed: onSave),
                  MyButton(text: "Cancel", onPressed: onCancel)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
