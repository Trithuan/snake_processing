PImage photo;
int nbCases = 20;
int tailleCase =  50; 
int posXAlice = 0;
int posYAlice = 0;

void setup () {
  fullScreen();  
  photo = loadImage("alice.png");
}

void draw() {
  if(frameCount % 60 == 0) {
   posXAlice += tailleCase; 
  }

  background(51);
  for (int i = 0; i < tailleCase*nbCases; i+=tailleCase) {
    for (int j = 0; j < tailleCase*nbCases; j+=tailleCase) {
      rect(i,j,tailleCase,tailleCase);
    }
  }
    image(photo, posXAlice, posYAlice,tailleCase,tailleCase);   
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      posYAlice -= tailleCase;
    } else if (keyCode == DOWN) {
      posYAlice += tailleCase;
    } else if (keyCode == LEFT) {
      posXAlice -= tailleCase;
    } else if (keyCode == RIGHT) {
      posXAlice += tailleCase; 
    }
}
}
  