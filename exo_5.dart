class Voiture{

//Methode
void deplacer(){
  print("");
}
//constructeur
}
class Bateau extends Voiture{
  //constructeur
  //methode
  @override
  void deplacer() {
    super.deplacer();
    print("le bateau navigue sur l'eau");
  }
  
}
void main(){
  Bateau bateau=Bateau();
  bateau.deplacer();
}
