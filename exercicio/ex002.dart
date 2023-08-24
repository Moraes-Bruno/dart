import 'dart:io';

bool numPrimo(int numero){

  int res = numero%2;

  if(res == 1 || numero == 2){
    return true;
  }
  else{
    return false;
  }
}


void main(){
  print("Digite um numero");
  int numero = int.parse(stdin.readLineSync()!);
  bool result = numPrimo(numero);
  print(result);
}