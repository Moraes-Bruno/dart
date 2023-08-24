import 'dart:io';

void calculo(double preco,[double fixo = 0,int perc = 0]){
  if(fixo > 0){
    double total = preco - fixo;
    print(total);
  }else{
    double porcentagem = preco - (preco*(perc/100));
    print(porcentagem);
  }
}
void main(){
  print("Digite o valor do seu produto");
  double preco = double.parse(stdin.readLineSync()!);

  print("Selecione o tipo de desconto");
  print("1-Valor fixo");
  print("2-Porcentagem");

 double select = double.parse(stdin.readLineSync()!);


 switch(select){
  case 1:
  print("Digite o valor do desconto");
  double val =  double.parse(stdin.readLineSync()!);
  calculo(preco,val);
  break;
  case 2:
  print("Digite o valor da porcentagem");
  int val = int.parse(stdin.readLineSync()!);
  calculo(preco,0,val);
  break;
  default:print("Digite um valor que seja aceito");

 }
  
}