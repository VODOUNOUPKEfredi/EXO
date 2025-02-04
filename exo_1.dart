class Employe{
  //Propriété
  String nom;
  int age;
  double salaire;
  //Methode
  void afficheInfo(){
    print("nom:$nom,  age:$age,salare:$salaire");
  }
  //Constructeur
  Employe(this.nom,this.age,this.salaire);
}
class Developpeur extends Employe{
  //Propriété
String langage;
//Methode
void developpeur(){
  super.afficheInfo();
  print("$langage");
}
//Constructeur
@override
Developpeur(String nom,int age,double salaire,this.langage):super(nom,age,salaire);
}
class Manager extends Employe{
  //Propriété
  int nombreEmployesSousGestion;
  //Methode
  @override
  void afficheInfo() {
    super.afficheInfo();
    print("$nombreEmployesSousGestion");
  }
  //Constructeur
  @override
  Manager( String nom,int age,double salaire,this.nombreEmployesSousGestion):super(nom,age,salaire);
}

//création d'une list 
afficherEmploye(List<Employe> employe){
  // 
  for(Employe employe in employe){
print(employe);
  }
}

void main(){

  //instanciation deveellopeur
  Developpeur developpeur1=Developpeur("fredi",25,15000,"Dart");
developpeur1.afficheInfo();
//intanciation Manager
Manager manager1=Manager("FREDI",29,520400,50);
manager1.afficheInfo(); 
}