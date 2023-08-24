import 'dart:io';

void tempo(String hora){
  int time = int.parse(hora);
  int hour = time~/3600;
  int restoSeg = time%3600;
  int min = restoSeg~/60;
  int segundos = restoSeg%60;
  print("$hour:$min:$segundos");

}

void main(){

  print("Informe a duração de um evento");
  String hora = stdin.readLineSync()!;
  String segundo = hora;
  tempo(segundo);
  
}

