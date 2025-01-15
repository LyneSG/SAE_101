class Bouton{
  int x, y;
  int largeur, hauteur;
  PImage icone;
  boolean actif;
  String texte;
 
  void init(int w, int h, PImage image, int X, int Y, String chaine){
    largeur=w;
    hauteur=h;
    icone=image;
    icone.resize(w,h);
    actif=false;
    x=X;
    y=Y;
    texte = chaine;
  }
 
 
  boolean estClique(int posX, int posY){
    if(actif==true && posX>x && posX<x+largeur && posY>y && posY<y+hauteur){
      return true;
    }
    else{
      return false;
    }
  }
 
  void dessin(){
    if(actif==true){
      image(icone,x,y);
      text(texte, x +TAILLEIcone/2, y+TAILLEIcone+50);
    }
  }
}
