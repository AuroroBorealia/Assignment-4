class EndScreen {
  boolean Pressed = false;
  boolean Clicked = false;

  EndScreen() {
  }

  void display() {
    fill(0);
    rect(0, 0, 800, 800); //background screen for end screen

    rectMode(CORNERS);
    fill(1, 71, 234);
    rect(200, 200, 600, 600); //button
    
    
  }

  void update() {
    if (mousePressed == true && Pressed == false) {
      Pressed = true;
      if (mouseX>= 200 && mouseX <= 600 && mouseY >= 200 && mouseY <= 600) {
        Clicked = true;
      } else {
        Clicked = false;
        Pressed = false;
      }
    }
  }
  boolean isClicked() {
    return Clicked;
  }
}
