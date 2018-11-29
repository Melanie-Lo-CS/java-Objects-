class Ball {
  float x ;
  float y ;
  float diameter ;
  color colour;
  float xSpeed;
  float ySpeed;

  Ball(float x, float y, color myColour) {
    this.x = x;
    this.y = y;
    diameter = 20;
    colour = myColour;
    xSpeed = 1;
    ySpeed = 1;
  }

  void step() {
    x += xSpeed;
    y += ySpeed;

    if (x+xSpeed < 0 || x+xSpeed > width) {
      xSpeed *= -1;
    }
    if (y+ySpeed < 0 || y+ySpeed > height) {
      ySpeed *= -1;
    }
  }
}
