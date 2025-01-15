final int TAILLEIcone = 300;

//Liste des pages
Page Accueil = new Page();
Page Salle = new Page();

//Bouton Page Accueil
Bouton quitter = new Bouton();
Bouton bsalle = new Bouton();
Bouton RU = new Bouton();
Bouton affluence = new Bouton();
Bouton exam = new Bouton();
Bouton creneau = new Bouton();

//Bouton Page Salle
Bouton salleEDT = new Bouton();
Bouton salleCoche = new Bouton();
Bouton salleRecherche = new Bouton();

Page pageactive; //Définit la page active donc celle qui s'affiche

Page[]lstPage = {Accueil, Salle};


void settings() {
  fullScreen();
}


void setup() {
  fill(0);
  textAlign(CENTER);
  PFont font = createFont("Arial", 50);
  textFont(font);
  background(255);
  PImage Iquitter = loadImage("Croix.PNG");
  quitter.init(50, 50, Iquitter, 1870, 0, "");
  quitter.actif = true;

  //Page accueil
  PImage Isalle = loadImage("Icone_salle.png");
  bsalle.init(TAILLEIcone, TAILLEIcone, Isalle, 165, 160, "Salle");
  PImage IRU = loadImage("icone_RU.png");
  RU.init(TAILLEIcone, TAILLEIcone, IRU, 795, 160, "Affluences RU");
  PImage Iaffluence = loadImage("icone_affluence.PNG");
  affluence.init(TAILLEIcone, TAILLEIcone, Iaffluence, 1455, 160, "Affluences batiment");
  PImage Iexam = loadImage("Icone_Exam.jpg");
  exam.init(TAILLEIcone, TAILLEIcone, Iexam, 480, 620, "Informations Examens");
  PImage Icreneau = loadImage("icone_horloge.png");
  creneau.init(TAILLEIcone, TAILLEIcone, Icreneau, 1140, 620, "Temps libre commun");
  Accueil = new Page();
  Bouton[]lstAccueil = {bsalle, RU, affluence, exam, creneau};
  Accueil.init(lstAccueil);
  pageactive = Accueil;

  //Page Salle
  PImage IsalleEDT = loadImage("icone_edt_salle.png");
  salleEDT.init(TAILLEIcone, TAILLEIcone, IsalleEDT, 165, 390, "EDT par salle");
  PImage IsalleCoche = loadImage("icone_coche.png");
  salleCoche.init(TAILLEIcone, TAILLEIcone, IsalleCoche, 795, 390, "Occupations par créneau");
  PImage IsalleRecherche = loadImage("icone_loupe.png");
  salleRecherche.init(TAILLEIcone, TAILLEIcone, IsalleRecherche, 1455, 390, "Recherche de salle");
  Salle = new Page();
  Bouton[]lstSalle = {salleEDT, salleCoche, salleRecherche};
  Salle.init(lstSalle);
}


void draw() {
  background(255);
  for (int i = 0; i < lstPage.length; i++) {
    lstPage[i].pageactif = false;
  }

  quitter.dessin();
  pageactive.pageactif = true;
  pageactive.affiche();
}


void mousePressed() {
  if (quitter.estClique(mouseX, mouseY)) {
    exit();
  }

  if (bsalle.estClique(mouseX, mouseY)) {
    pageactive = Salle;
  }
}
