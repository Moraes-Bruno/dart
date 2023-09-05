void main() {
  // Crie o mapa de notas dos alunos
  Map<String, List<double>> mapaDeNotas = {
    'Alice': [8.5, 9.0, 7.5],
    'Bob': [7.0, 6.5, 8.0],
    'Carol': [9.5, 8.0, 8.5],
  };

  // Chame a função para calcular as médias e obter o novo mapa
  Map<String, double> mapaDeMedias = calcularMedias(mapaDeNotas);

  // Imprima o mapa de médias
  print(mapaDeMedias);
}

// Função para calcular as médias de notas dos alunos
Map<String, double> calcularMedias(Map<String, List<double>> notas) {
  Map<String, double> medias = {};

  notas.forEach((aluno, notasList) {
    // Calcula a média das notas de cada aluno
    double media = notasList.reduce((a, b) => a + b) / notasList.length;
    medias[aluno] = media;
  });

  return medias;
}
