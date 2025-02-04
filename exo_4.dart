List<int> listNombrePaire(List<int> nombres) {
  List<int> paire = [];
  for (int i = 0; i < nombres.length; i++) {
    if (nombres[i] % 2 == 0) {
      paire.add(nombres[i]);
    }
  }
  return paire;
}

void main() {
  List<int> nombres = [1, 25, 52, 10, 2, 55, 45, 58];
  List<int> paire=listNombrePaire(nombres);
  print("$paire");
}
