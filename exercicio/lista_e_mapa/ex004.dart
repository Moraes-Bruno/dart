double media(List<int>numbers){
  int result = 0;
  
  for(int num in numbers){
   result += num;
  }

  int  tamanho = numbers.length;

  return result/tamanho;
}

void main(){

  List<int> numeros = [100,2,3,420,5,69,7,8,9,10];

  double res = media(numeros);

  print("A media dos numeros é $res");

}