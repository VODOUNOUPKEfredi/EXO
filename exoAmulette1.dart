class Amullete{
  String nom;
  int puissance;
  String materiau;
  //constructeur
  Amullete(this.nom,this.puissance,this.materiau);
  //methode
  void amuletteParent(){
    print("non:$nom,puissance:$puissance,materiau:$materiau");
  }
}


void main(){
  List listAmullete=[( "amulleteFeu",50,"Obsidienne"),
  ("amuletteGlace",40,"Cristal de glace"),
  ("amulleteOmbre",60,"Onyx"),
  ];
  print(" la liste des Amulletes :$listAmullete");
  Amullete amulleteFeu = Amullete("Flamme Eternelle", 50,"Obsidienne");
  amulleteFeu.amuletteParent();
  Amullete amulleteGlace = Amullete("Coeur Gélé", 40, "Cristal de Glace");
  amulleteGlace.amuletteParent();
  Amullete amulleteOmbre = Amullete("Voile Nocturne", 60, "Onyx");
  amulleteOmbre.amuletteParent();
}