int soma(List<int>soma){
  int result = 0;
  
  for(int num in soma){
   result += num;
  }

  return result;
}

void main(){

  List<int> numeros = [1,2,3,4,5,6,7,8,9];

  int res = soma(numeros);

  print("O resultado é $res");

}