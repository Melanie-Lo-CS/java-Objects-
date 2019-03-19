class rightPaddle {
  int x;
  float y;
  int padwidth;
  int padHeight;
  color colour;

  rightPaddle() {
    x=690;
    y=300;
    padwidth=15;
    padHeight=100;
    colour=#FF0808;
  }

  void rightMove() {

    if (keyPressed) {
      if ( keyCode == UP) {

        y+=-7;
      }




      if (keyCode == DOWN) {

        y+=7;
      }
    }
    if (y < 45) {
      y = 45;
    }

    if (y > 550) {
      y = 550;
    }
  }
}
