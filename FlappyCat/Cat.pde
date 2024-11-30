class Cat{
  PImage img; //image variable
  float catY; //variable for cat's y position
  
  Cat() { //constructor, use instead of setup
    img = loadImage("cat-sprite.png");
  }
  
  void display() {
   image(img, 300, 300);  //starting position for now, will change to be catY and catX later
  }
}
