class Page{
  Bouton[] lstBouton;
  boolean pageactif = false;

  void init(Bouton[]tab){
    lstBouton = new Bouton[tab.length];
    for(int i = 0; i < lstBouton.length; i++){
      lstBouton[i] = tab[i];
    }
  }
  
  void affiche(){
    for(int i = 0; i < lstBouton.length; i++){
      lstBouton[i].actif = pageactif;
    }
    if(pageactif){
      //Affichage de la page
      for(int i = 0; i < lstBouton.length; i++){
      lstBouton[i].dessin();
      }
    }
  }
}
