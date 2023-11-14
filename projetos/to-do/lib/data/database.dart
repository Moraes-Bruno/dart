import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];

  //referencia da caixa
  final  _myBox = Hive.box('mybox');

  //roda este metodo apenas na primeira vez que o aplicativo for aberto
  void createInitialData(){
    toDoList = [
     ["Clique no '+' para adicionar um nova tarefa,deslize para a esquerda para deletar uma tarefa",false],
    ];
  }

  //carrega os dados do banco de dados
  void loadData(){
      toDoList = _myBox.get("TODOLIST");
  }

  //atualiza o banco de dados
  void updateData(){
      _myBox.put("TODOLIST",toDoList);
  }

}