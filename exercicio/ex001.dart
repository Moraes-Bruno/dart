import 'dart:io';

void tempo(int time){

  int hour = time~/3600;
  int restoSeg = time%3600;
  int min = restoSeg~/60;
  int segundos = restoSeg%60;
  print("$hour:$min:$segundos");

}

void main(){

  print("Informe a duração de um evento");
  int time = int.parse(stdin.readLineSync()!);
  tempo(time);
  
}

