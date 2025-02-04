class Amullete {
  String nom;
  int puissance;
  String materiau;
  //constructeur
  Amullete(this.nom, this.puissance, this.materiau);
  //methode
  void amuletteParent() {
    print("non:$nom,puissance:$puissance,materiau:$materiau");
  }
}

List listAmullete = [
 Amullete ("amulleteFeu", 50, "Obsidienne"),
 Amullete ("amuletteGlace", 40, "Cristal de glace"),
 Amullete ("amulleteOmbre", 60, "Onyx"),
];

Amullete? trouverAmullete(String nomRechercher) {
  for (Amullete amullete in listAmullete) {
    if (amullete.nom.toLowerCase() == nomRechercher.toLowerCase()) {
      return amullete;
    }
  }
  return null;
}

void main() {

  trouverAmullete( "amulleteFeu");
  print(trouverAmullete);

}
