class Employe {
  //propriete
  String nom;
  int age;
  double salaire;
  static int totalEmployer = 0;

  //constructeur
  Employe(this.nom, this.age, this.salaire) {
    totalEmployer++;
  }
  //methode
  void afficherInfo() {
    print("nom:$nom,age:$age,salaire:$salaire");
  }
}

class Developpeur extends Employe {
  String langage;
  //constructeur
  Developpeur(String nom, int age, double salaire, this.langage)
      : super(nom, age, salaire);
  //methode
  @override
  void afficherInfo() {
    super.afficherInfo();
    print("spécialisation :$langage");
  }
}

class Manager extends Employe {
  int nombreEmployesSousGestion;
  Manager(String nom, int age, double salaire, this.nombreEmployesSousGestion)
      : super(nom, age, salaire);
  @override
  void afficherInfo() {
    super.afficherInfo();
    print("le nombres d'employes sous gestion est:$nombreEmployesSousGestion");
  }
}

Future<List<Employe>> chargerEmployer() async {
  await Future.delayed(Duration(seconds: 5));
  return [
    Developpeur("fredi", 25, 20000, "DART"),
    Manager("Fatima", 29, 20000000, 30),
    Manager("Fatima", 27, 10000000, 20),
    Manager("Fatima", 38, 5000000, 10)
  ];
}

void main() async {
  print("Chargement...");
  List<Employe> employes = await chargerEmployer();
  for(Employe employe in employes ){
    employe.afficherInfo();
    print("----------------------");
  }
  print(Employe.totalEmployer);
}
