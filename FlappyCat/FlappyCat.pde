Cat witchCat;
Crows crows;
EndScreen ending;
StartScreen start;

int menu = 0;
//0 - starting screen; 1 - game state; 2 - game end
//anita showed me a video for the menu switching
//credits: https://www.youtube.com/watch?v=p3rt3zDr2SE&t=1887s

float crowX = random(750);
float crowY = random(750);

boolean collision = false; //testing for collision between cats and crows

int frameTimer = 150;

ArrayList<Crows> birds;


// update i have given up on collison i cant get it work! there is still a lose condition
//circleCircle collison boolean
//boolean circleCircle(PVector caP, float caR, PVector crP, float crR) {

//float disPos = witchCat.colliderPosition.sub (crows.colliderPosition).mag();
//float distance = sqrt( disPos);

//if (distance <= crows.colliderPosition.add(witchCat.colliderPosition).mag()) {
// return true;
// }
// return false;
//}


void setup() {
  noStroke();
  size(800, 800);
  birds = new ArrayList<Crows>();

  witchCat = new Cat();
  crows = new Crows();
  ending = new EndScreen();
  start = new StartScreen();
}

void draw() {
  noStroke();

  switch (menu) {
  case 0:
    {
      start.display();
      start.pressTheButton();
      if (start.isClicked()) {
        menu = 1;
      }
    }
    break;

  case 1:
    {
      background(222, 168, 98);
      fill(245, 234, 205);
      circle(400, 90, 250); //moon
      fill(255, 255, 255, 50);
      //clouds for added background details
      ellipse(100, 250, 300, 150);
      ellipse(160, 200, 250, 100);
      ellipse(500, 160, 375, 125);
      ellipse(650, 210, 300, 135);


      witchCat.display(); //display the cat
      witchCat.fall();
      crows.display();
      crows.glide();

      for (int i = 0; i < birds.size(); i++) { //arraylist for spawning new crows in
        birds.get(i).display();
        birds.get(i).glide();
      }

      if (frameCount%frameTimer == 1) { //the rate at which the crows will spawn
        birds.add(new Crows());
      }

      if (witchCat.position.y > height) {
        //alternate line of code for in case I can't get collison to work out
        menu = 2;
      }
    }
    break;

  case 2:
    {
      ending.display();
      ending.tryAgain();
      if (ending.isClicked()) {
       menu = 1; 
       witchCat = new Cat(); //restarting the game only works once but hey it works
      }
    }
  }
}


void keyPressed() {
  witchCat.fly(); //make the cat jump in the air slightly
}
