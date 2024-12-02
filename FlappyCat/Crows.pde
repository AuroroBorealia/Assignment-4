class Crows{
  
 PImage img; //sprite variable
 PVector position;
 PVector velocity;
 PVector acceleration;
 
 Crows() {
   img = loadImage("crow.png");
   position = new PVector (-110, random(750));
   velocity = new PVector(1, 0);
   acceleration = new PVector(0.001, 0);
 }
 
 void display() {
   image(img, position.x, position.y);
 }
 
 void glide() {
   velocity.add(acceleration);
   position.add(velocity);
   
   if (position.x > 850) {
     
   }
 }


}
