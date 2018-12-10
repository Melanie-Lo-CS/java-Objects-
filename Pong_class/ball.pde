class Ball {
  float x ;
  float y ;
  float diameter ;
  color colour;
  float xSpeed;
  float ySpeed;
  float score;


  Ball(float x, float y, color myColour) {
    this.x = x;
    this.y = y;
    diameter = 20;
    colour = myColour;
    xSpeed = 1;
    ySpeed = 1;
    score = 0;
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

    if (x - diameter > LeftPaddle.x && x - diameter < LeftPaddle.x + LeftPaddle.padwidth && y +diameter > LeftPaddle.y && y - diameter < LeftPaddle.y + LeftPaddle.padHeight) {
      xSpeed *= -1;
    }
    if (x + diameter > RightPaddle.x && x - diameter < RightPaddle.x + RightPaddle.padwidth && y + diameter > RightPaddle.y &&  y - diameter < RightPaddle.y + RightPaddle.padHeight) {
      xSpeed *= -1;
    }

    if (Ball1.x == 0) {
      score += 1;
      x = 350;
      y= 300;
    }
    if (Ball2.x == 0) {
      score += 1;
      x = 350;
      y= 300;
    }

    // score for p2
    if (Ball1.x == 700) {
      score += 1;
      x = 350;
      y= 300;
    }

    if (Ball2. x == 700) {
      score += 1;
      x = 350;
      y= 300;
    }
  }
}
