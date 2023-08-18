void msg({String nome = "anonimo",String? sobrenome,String saudacao = "Ola",String simbolo = "-",bool showsprt = true}){
  String c = sobrenome ?? "anonimo";

  print("$saudacao $nome ${c.toUpperCase()}");
  
  if(showsprt){
    print(simbolo*30);
  }else{
    print(" "*30);
  }
}

void main(){
  msg(nome: "bruno",sobrenome: "Silva");
  msg(nome: "bruno",saudacao: "Bom dia");
  msg(nome: "bruno",saudacao: "Bom dia",simbolo: "#");
  msg(nome: "bruno",showsprt: false);
  msg();
}