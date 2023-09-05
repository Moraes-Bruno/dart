List<int> filtrarLista(List<int> lista, bool Function(int) filtro) {
  List<int> resultado = [];

  for (int numero in lista) {
    if (filtro(numero)) {
      resultado.add(numero);
    }
  }

  return resultado;
}

void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  bool filtroPar(int numero) {
    return numero % 2 == 0;
  }

  List<int> numerosPares = filtrarLista(numeros, filtroPar);

  print(numerosPares); 
}
