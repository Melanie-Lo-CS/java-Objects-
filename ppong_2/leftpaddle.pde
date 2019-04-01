class leftPaddle {
  int x;
  float y;
  int padwidth;
  int padHeight;
  color colour;
  float diameter;

  leftPaddle() {
    x=10;
    y=300;
    padwidth=15;
    padHeight=100;
    colour=#FF0808;
  }

  void leftMove() {

      if (x + diameter/2 > LeftPaddle.x && x - diameter/2 < LeftPaddle.x + LeftPaddle.padwidth/2 && y +diameter/2 > LeftPaddle.y && y - diameter/2 < LeftPaddle.y + LeftPaddle.padHeight/2) {
      }
    
    if (keyPressed) {
      if ( key == 'w') {

        y+=-7;
      }

      if (key == 's') {

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
