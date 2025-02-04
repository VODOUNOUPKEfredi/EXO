calculeMoyenne(List<int> nombres) {
  if (nombres.isEmpty) {
    print("erreur le tableau es vide");
  }
  int sommes = nombres.reduce((a, b) => a + b);
  return sommes / nombres.length;
}

void main() {
  List<int> nombres = [10, 5, 15, 20, 14];
  double moyenne=calculeMoyenne(nombres);
  print("la moyenne est :$moyenne");
}
