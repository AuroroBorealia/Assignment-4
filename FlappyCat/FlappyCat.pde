Cat witchCat;
Crows crowOne;

void setup() {
  noStroke();
 size(800, 800); 
 
 witchCat = new Cat();
 crowOne = new Crows();
}

void draw() {
  noStroke();
  background(222, 168, 98);
  fill(245, 234, 205);
  circle(400, 90, 250); //moon
  
  witchCat.display(); //display the cat
  witchCat.fall();
  crowOne.display();
}

void keyPressed() {
  if (keyPressed == true) {
  witchCat.fly();
  } else {
   witchCat.fall(); 
  }
}
