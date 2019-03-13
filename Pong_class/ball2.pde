/*class Ball2 {
  float x ;
  float y ;
  float diameter ;
  color colour;
  float xSpeed;
  float ySpeed;
  float score;


  Ball2(float x, float y, color myColour) {
    this.x = x;
    this.y = y;
    diameter = 20;
    colour = myColour;
    xSpeed = 3;
    ySpeed = 3;
    score = 0;
  }

  void step() {

    x += xSpeed;
    y += ySpeed;

    if (x - diameter/2 > LeftPaddle.x - LeftPaddle.padwidth/2&& x - diameter/2 < LeftPaddle.x + LeftPaddle.padwidth/2 && y +diameter/2 > LeftPaddle.y && y - diameter/2 < LeftPaddle.y + LeftPaddle.padHeight/2) {
      xSpeed *= -1;
    }
    if (x + diameter/2 > RightPaddle.x + RightPaddle.padwidth/2 && x + diameter/2 < RightPaddle.x - RightPaddle.padwidth/2 && y - diameter/2 > RightPaddle.y + RightPaddle.padHeight/2 &&  y + diameter/2 < RightPaddle.y - RightPaddle.padHeight/2) {
      xSpeed *= -1;
    }

    if (Ball2.x <= 0) {
      score2 += 1;
    }
    if (Ball2.x >= 0) {
      score1 += 1;
    }
  }
}
*/
