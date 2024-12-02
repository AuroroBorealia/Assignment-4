class Cat{
  PImage img; //image variable
  PVector position;
  PVector velocityY;
  PVector accelerationY;
  PVector flySpeed;
  float gravity = 0.015;
  
  Cat() { //constructor, use instead of setup
    img = loadImage("cat-sprite.png");
    accelerationY = new PVector (0, 0.015);
    velocityY = new PVector (0, 0);
    position = new PVector (300, 300);
    flySpeed = new PVector (0, -20);
  }
  
  void display() {
   image(img, position.x, position.y);  //starting position for now
  }
  
  void fall() {
    position.add(velocityY);
    velocityY.add(accelerationY);
  }
  
  void fly() {
    velocityY.y = flySpeed.y;
  }
}
