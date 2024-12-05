class Cat{
  PImage img; //image variable
  PVector position;
  PVector velocityY;
  PVector accelerationY;
  PVector flySpeed;
  float gravity = 0.5;
  
  PVector catColliderPosition;
  float catColliderRadius;
  
  Cat() { //constructor, use instead of setup
    img = loadImage("cat-sprite.png");
    accelerationY = new PVector (0, gravity);
    velocityY = new PVector (0, 0);
    position = new PVector (300, 300);
    flySpeed = new PVector (0, -10);
    
    catColliderRadius = 150;
  }
  
  void display() {
   image(img, position.x, position.y);  //starting position for cat before gravity kicks in
   
  }
  
  void fall() {
    position.add(velocityY);
    velocityY.add(accelerationY);
    
    catColliderPosition = new PVector(position.x + 110, position.y + 85);
    
  }
  
  void fly() {
    velocityY.y = flySpeed.y;
  }
}
