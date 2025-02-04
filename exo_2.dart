class Rectangle{
  late double longeur;
  late double largeur;
  //Methode
  double calculeSurface(longeur,largeur){
    return longeur*largeur;
    
  }
  //constructeur
  Rectangle(this.longeur,this.largeur);
  
}
void main(){
  double longeur=50;
  double largeur=20;
  
  Rectangle monRectangle=Rectangle(50,30);
  double surface=monRectangle.calculeSurface(longeur,largeur);
  print("la surface est :$surface");
}