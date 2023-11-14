import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ToDoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteTask;

  ToDoTile({super.key,
  required this.taskName,
  required this.taskCompleted,
  required this.onChanged,
  required this.deleteTask
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
              SlidableAction(
                onPressed: deleteTask,
                icon: Icons.delete,
                backgroundColor: Colors.red,
                borderRadius: BorderRadius.circular(12),
                )
        ],),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
          ),
          child:  Row(
            children: [
              Checkbox(
                value: taskCompleted,
                 onChanged: onChanged,
                 activeColor: Colors.green,
                 ),
              //nome da tarefa
               Text(
                taskName,
                style:  TextStyle(
                  decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                  decorationColor: Colors.black
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}