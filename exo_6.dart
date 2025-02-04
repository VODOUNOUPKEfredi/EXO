mixin Nageur{
  //Methode
  void nager(){
    print("nage");
  } 
}class Poisson with Nageur {
  //constructeur
//methode
@override
void nager(){
print("le poisson nage dans l'eau");
}
  
}
void main(){
  Poisson poisson=Poisson();
  poisson.nager();
}