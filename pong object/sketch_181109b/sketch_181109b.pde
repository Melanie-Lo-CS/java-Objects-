
Boolean start = false;
Ball myBall = new Ball(50, 100, color(0, 255, 0));
Ball yourBall = new Ball(50, 75, color(0, 255, 0));

void setup() {
  size(700, 600);

  //screenChecker();


  //Code to change "Start" Boolean Variable to true
}
void draw() {


  startStop();
  //arithemetic to calcaulte starting positions of paddles and ball
background(0);
  if (start==true) {
    
myBall.step();
  yourBall.step();
  fill(myBall.colour);
  fill(yourBall.colour);
  ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter);
  ellipse(yourBall.x, yourBall.y, yourBall.diameter, yourBall.diameter);

    //Also contains "ball squish" procedure, with change in frameRate
    // Also contains highlihgts for positive user feedback
    //contains highlihgts for positive user feedback
  }
  //println("ballX:"+ ballX, "ballY" + ballY);
}
