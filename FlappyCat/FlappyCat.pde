Cat witchCat;
Crows crows;



int menu = 0;
//0 - starting screen; 1 - game state; 2 - game end

float crowX = random(750);
float crowY = random(750);

boolean collision = false; //testing for collision between cats and crows

int frameTimer = 150;

ArrayList<Crows> birds;

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
  
  for (int i = 0; i < birds.size(); i++) {
   birds.get(i).display();
   birds.get(i).glide();
  }
  
  if (frameCount%frameTimer == 1) {
    birds.add(new Crows());
  }
  
  
}

void keyPressed() {
  witchCat.fly(); //make the cat jump in the air slightly

}
