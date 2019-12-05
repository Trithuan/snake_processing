PImage photoAlice;
PImage photoBob;
int nbCases;
int tailleCase;
Pers alice;
Pers bob; 

void setup () {
  fullScreen();  
  nbCases = 20;
  tailleCase =  width/nbCases; 
  alice = new Pers();
  bob = new Pers();
  photoAlice = loadImage("alice.png");
  photoBob = loadImage("bob.png");
  alice.posX = 0;
  alice.posY = 0;
  bob.posX = 5*tailleCase;
  bob.posY = 5*tailleCase;
}

void draw() { 
  background(51);
  bck();
  image(photoBob, bob.posX, bob.posY, tailleCase, tailleCase);   
  image(photoAlice, alice.posX, alice.posY, tailleCase, tailleCase);
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      alice.posY -= tailleCase;
    } else if (keyCode == DOWN) {
      alice.posY += tailleCase;
    } else if (keyCode == LEFT) {
      alice.posX -= tailleCase;
    } else if (keyCode == RIGHT) {
      alice.posX += tailleCase;
    }
  } else if (key == 'Z' || key == 'z') {
    bob.posY -= tailleCase;
  } else if (key == 'S' || key == 's') {
    bob.posY += tailleCase;
  } else if (key == 'Q' || key == 'q') {
    bob.posX -= tailleCase;
  } else if (key == 'D' || key == 'd') {
    bob.posX += tailleCase;
  }
}

void bck() {
  for (int i = 0; i < tailleCase*nbCases+10; i+=tailleCase) {
    for (int j = 0; j < tailleCase*nbCases+10; j+=tailleCase) {
      rect(i, j, tailleCase, tailleCase);
    }
  }
}