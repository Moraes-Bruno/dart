int maior(List<int>soma){
  int result = 0;
  
  for(int num in soma){
   if(num > result){
    result = num;
   }
  }

  return result;
}

void main(){

  List<int> numeros = [100,2,3,14,4,5,6,7,88,9];

  int res = maior(numeros);

  print("O maior valor  é $res");

}