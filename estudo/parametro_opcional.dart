//Parametros Opcionais posicionais
void msg(String nome,[String saudacao = "Ola",String simbolo = "-"]){
  print("$saudacao $nome");
  print(simbolo*30);
}

void main(){
  msg("bruno");
  msg("bruno","Bom dia");
  msg("bruno","Bom dia","#");
}