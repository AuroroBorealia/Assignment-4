Cat witchCat;
Crows crows;


int menu = 0;
//0 - starting screen; 1 - game state; 2 - game end

float crowX = random(750);
float crowY = random(750);

boolean collision = false; //testing for collision between cats and crows

int frameTimer = 150;

ArrayList<Crows> birds;

//circleCircle collison boolean
boolean circleCircle(PVector caP, float caR, PVector crP, float crR) {

  float disPos = witchCat.colliderPosition.sub (crows.colliderPosition).mag();
  float distance = sqrt( disPos);

  if (distance <= crows.colliderPosition.add(witchCat.colliderPosition).mag()) {
    return true;
  }
  return false;
}


void setup() {
  noStroke();
  size(800, 800);
  birds = new ArrayList<Crows>();

  witchCat = new Cat();
  crows = new Crows();
}

void draw() {
  noStroke();
  background(222, 168, 98);
  fill(245, 234, 205);
  circle(400, 90, 250); //moon


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

  //check for collison
  boolean touch = circleCircle(witchCat.colliderPosition, witchCat.colliderRadius, crows.colliderPosition, crows.colliderRadius);
  if (touch) {
  }
  
  //if (witchCat.position.y > height) {
    //alternate line of code for in case I can't get collison to work out
  //}
}

void keyPressed() {
  witchCat.fly(); //make the cat jump in the air slightly
}
