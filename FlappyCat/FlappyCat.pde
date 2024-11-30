Cat witchCat;

void setup() {
  noStroke();
 size(800, 800); 
 
 witchCat = new Cat();
}

void draw() {
  noStroke();
  background(222, 168, 98);
  fill(245, 234, 205);
  circle(400, 90, 250); //moon
  
  witchCat.display();
}
