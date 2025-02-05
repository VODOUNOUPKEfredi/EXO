import 'dart:io';
import 'dart:math';

class Aventurier {
  String nom;
  int vies = 3;

  // methode
  void perdeVie() {
    if (vies > 0) {
      vies--;
      print("il vous reste $vies");
    }
    if (vies == 0) {
      print("Game Over $nom a perdu toutes ses vies");
    }
  }

//constructeur
  Aventurier(this.nom, this.vies);
}

abstract class Obstacle {
  Future<void> affronter(Aventurier joueur);
}

class Enigme extends Obstacle {
  String question;
  String reponse;
  //constructeur
  Enigme(this.question, this.reponse);
//methode

  @override
  Future<void> affronter(Aventurier joueur) async {

    String bonneReponse = "océan parcifique";
    question = "Quel est le plus grand océan du Monde";
    
    String ?nom =stdin.readLineSync()!.trim().toLowerCase();
    stdout.write(nom);
    print("----------------------------");
    await Future.delayed(Duration(seconds: 1));
    print(" LA FORÊT MAUDITE");
    await Future.delayed(Duration(seconds: 2));
    print(
        " Vous parcourez une forêt sombre et brumeuse remplie de murmures inquietants.");
    await Future.delayed(Duration(seconds: 3));
    print(
        "Oups vous venez de tomber sur un arbre qui  parle en  Enigmes  et ne laisse passer que ceux qui réponde correctement ");
    await Future.delayed(Duration(seconds: 1));
    print(" Vous etes donc face a la mort");
    await Future.delayed(Duration(seconds: 1));
    print("${joueur.nom} ,repondez à cette enigme: $question");
    print(" si vous tenez à votre vie");

    while (joueur.vies > 0) {
      //bonne reponse
      stdout.write("votre reponse :");
      String? reponse = stdin.readLineSync()!.trim().toLowerCase();
      //await Future.delayed(Duration(seconds: 1));

      if (reponse == bonneReponse) {
        print("Bonne reponse");
      } else {
        print("Mauvaise reponse.");
        joueur.perdeVie();
       // if (joueur.vies == 0) {
          return;
       // }
      }
    }
  }
}

class Piege extends Obstacle {
  //constructeur
  //methode
  @override
  Future<void> affronter(Aventurier joueur) async {
    bool piege = Random().nextBool();
   
    await Future.delayed(Duration(seconds: 3));
    print("IL y a des piege sur le chemin ${joueur.nom}");
    print(" Oups des lianes vivantes tentent de vous attraper ${joueur.nom}");
    await Future.delayed(Duration(seconds: 2));
    if (piege) {
      print(" Felicitation vous avez evité les lianes");
    } else {
      print("Les lianes vous ont rattrapé");
      joueur.perdeVie();
    }
  }
}

class Gardiens extends Obstacle {
  Future<void> affronter(Aventurier joueur) async {
    print(" Un Loup spectral protège le passage secret");
    await Future.delayed(Duration(seconds: 2));
    print("Voulez -vous   (1)  negocier ou   (2) combattre ");
    await Future.delayed(Duration(seconds: 2));
    stdout.write("votre reponse :");
    String  choix = stdin.readLineSync()!.trim();
    ;
    bool combattre = Random().nextBool();
    print("reflechissez tres bien ");

    if (choix == "1") {
      await Future.delayed(Duration(seconds: 2));
      print(
          "Le gardien dit seul celui qui connais la phrase secrete peut passer");

      print("veuillez entrer la phrase secrete");
      await Future.delayed(Duration(seconds: 2));
      stdout.write("votre reponse :");
      String ? phraseSecrete = stdin.readLineSync();
      String repsecret = "Visca Barça";
      if (repsecret== phraseSecrete) {
        print("felicictation vous evez deviné la phrase secrete");
      } else {
        print("Desolé vous avez perdu ");
        joueur.perdeVie();
      }
    } else if (choix == "2") {
      print("Le combat est engagé");
      await Future.delayed(Duration(seconds: 2));
      if (combattre) {
        print("vous avez gagné le combat");
      } else {
        print(" Vous avez perdu le combat");
        joueur.perdeVie();
      }
    }
  }
}

void main() async {
 /*String ? nom;
 print("Entrer votre nom");
  nom=stdin.readLineSync()!.trim().toLowerCase();
  stdout.write(nom);
  */
  Aventurier gagnan = Aventurier("$nom", 3);
  print("---------------------------------------");
  List<Obstacle> Obstacles = [
    Enigme("quelle est le plus grand océan du monde", "océan parcifique"),
    Piege(),
    Gardiens(),
  ];
  for (var Obstacle in Obstacles) {
    if (gagnan.vies == 0) break;
    await Obstacle.affronter(gagnan);
    print("---------------------------------------");
    if (gagnan.vies > 0) {
      print("Felicitation ${gagnan.nom} à survécu à l'enventure");
    }
  }
 /* Aventurier gagnan = Aventurier("Fredi", 3);
  Enigme enigme=Enigme("quelle est le plus grand océan du monde", "océan parcifique");
  await enigme.affronter(Aventurier("fredi", 3));
  Piege piege=Piege();
  await piege.affronter(Aventurier("fredi", 3));
   Gardiens gardiens=Gardiens();
   await gardiens.affronter(Aventurier("fredi", 3)); 
  */
}
