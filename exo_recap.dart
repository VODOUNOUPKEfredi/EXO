import 'dart:io';
import 'dart:math';

class Aventurier {
  String nom;
  int vie = 3;
  static int totalVie = 3;
  // methode
  void perdeVie() {
    print("il vous reste $totalVie vie");
  }

  //constructeur
  Aventurier(
    this.nom,
    this.vie,
  ) {
    totalVie--;
  }
}

abstract class Obstacle{
  void affronter(Aventurier){   
}
}

 

class Enigme extends Obstacle {
  String question =" ";
  String reponse =" ";

  //constructeur
  Enigme(this.question,this.reponse){
   @override
   Future<void> affronter(Aventurier) async {
    super.affronter(Aventurier);
    question= "Quel est le plus grand océan du Monde";
   //bonne reponse
    String bonneReponse = "océan parcifique";

    print(question);
    String reponse = stdin.readLineSync()!;
    print("Chargement...");
    await Future.delayed(Duration(seconds: 3));
    print(" chargement terminé");
    if (reponse == bonneReponse) {
      print("Bonne reponse");
    } else {
      print("Mauvaise reponse.");
    } 
  }
  }
}
  
  

  class Piege extends Obstacle{

    bool piege =Random().nextBool();
    //constructeur
    Piege(this.piege);
    //methode
    
  }

void main() async {
  print("entrer votre Prenom");
  String nom = stdin.readLineSync()!;
  print(nom);
  Aventurier aventurier1 = Aventurier(nom, 3);
  print(aventurier1);
  print("Chargement...");
 

}
