List numPar(List<int>soma){
  List<int>result = [];
  
  for(int num in soma){
   int resto = num%2;

   if(resto == 0){
    result.add(num);
   }
  }

  return result;
}

void main(){

  List<int> numeros = [100,2,3,14,4,5,6,7,88,9];

  List res = [numPar(numeros)];

  print("O maior valor  é $res");

}