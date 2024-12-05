class Crows {

  PImage img; //sprite variable
  PVector position;
  PVector velocity;
  PVector acceleration;
  boolean isOffScreen = false;

  PVector crowColliderPosition;
  float crowColliderRadius;

  Crows() {
    img = loadImage("crow-sprite.png");
    position = new PVector (-110, random(750));
    velocity = new PVector(1, 0);
    acceleration = new PVector(0.001, 0);

    crowColliderRadius = 65;
  }

  void display() {
    image(img, position.x, position.y);
  }

  void glide() {
    velocity.add(acceleration);
    position.add(velocity);

    crowColliderPosition = new PVector(position.x + 55, position.y + 45);

    //circle(colliderPosition.x, colliderPosition.y, colliderRadius); testing the radius of the crows
  }
}
