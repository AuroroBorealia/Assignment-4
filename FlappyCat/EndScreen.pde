class EndScreen {
  boolean Pressed = false;
  boolean Clicked = false;

  EndScreen() {
  }

  void display() {
    fill(0);
    rect(0, 0, 800, 800); //background screen for end screen

    rectMode(CORNER);
    fill(167, 36, 255);
    rect(200, 350, 400, 100); //button

    textSize(90);
    fill(0);
    text("RETRY", 275, 430);
  }

  void tryAgain() { //pressing the retry button
    if (mousePressed == true && Pressed == false) {
      Pressed = true;
      if (mouseX>= 200 && mouseX <= 600 && mouseY >= 350 && mouseY <= 450) {
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
