class Crows{
  
 PImage img; //sprite variable
 
 Crows() {
   img = loadImage("crow.png");
 }
 
 void display() {
   image(img, 600, 20);
 }


}
