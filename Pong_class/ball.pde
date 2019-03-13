class Ball {
  float x ;
  float y ;
  float diameter ;
  color colour;
  float xSpeed;
  float ySpeed;
  float score;
  boolean fire = false;


  Ball(float x, float y, color myColour) {
    this.x = x;
    this.y = y;
    diameter = 20;
    colour = myColour;
    xSpeed = 3;
    ySpeed = 3;
    score = 0;
  }

  void step() {
    for (int i = 0; i < fireworks.length; i++) {
    fireworks[i]=new firework(width/2,height/2);
  }
    x += xSpeed;
    y += ySpeed;

    //    if (x+xSpeed < 0 || x+xSpeed > width) {
    //      xSpeed *= -1;
    //    }
    if (y+ySpeed < 0 || y+ySpeed > height) {
      ySpeed *= -1;
    }

    if (x - diameter/2 > LeftPaddle.x && x - diameter/2 < LeftPaddle.x + LeftPaddle.padwidth/2 && y +diameter/2 > LeftPaddle.y && y - diameter/2 < LeftPaddle.y + LeftPaddle.padHeight/2) {
      xSpeed *= -1;
    }
    if (x + diameter/2 > RightPaddle.x && x - diameter/2 < RightPaddle.x + RightPaddle.padwidth/2 && y + diameter/2 > RightPaddle.y &&  y - diameter/2 < RightPaddle.y + RightPaddle.padHeight/2) {
      xSpeed *= -1;
    }


    if (x <= 0 ) {      
      score2 +=1;
      fire = true;
      x = width/2;
      y = height/2;
    }



    if (x >= width) {
      score1 += 1;
      fire = true;
      x = width/2;
    y = height/2;
    }
    
    if (fire) {
      for (int i = 0; i < fireworks.length; i++) {
        fireworks[i].step();
      }
      for (int i = 0; i < fireworks.length; i++) {
        fireworks[i].draw();
     }
     fire = false;
    }
    
  }
}
