Boolean start = false;
Ball Ball1 = new Ball(350, 300, color(0, 255, 0));
Ball Ball2 = new Ball(350, 320, color(0, 255, 0));
leftPaddle LeftPaddle = new leftPaddle();
rightPaddle RightPaddle = new rightPaddle();


void setup() {
  size(700, 600);

  //screenChecker();


  //Code to change "Start" Boolean Variable to true
}
void draw() {

  StartStop();
  //arithemetic to calcaulte starting positions of paddles and ball
  background(0);
  if (start==true) {

    LeftPaddle.leftMove();
    rectMode(CENTER);
    fill(LeftPaddle.colour);
    rect(LeftPaddle.x, LeftPaddle.y, LeftPaddle.padwidth, LeftPaddle.padHeight);

    RightPaddle.rightMove();
    rectMode(CENTER);
    fill(RightPaddle.colour);
    rect(RightPaddle.x, RightPaddle.y, RightPaddle.padwidth, RightPaddle.padHeight);

    Ball1.step();
    Ball2.step();
    fill(Ball1.colour);
    fill(Ball2.colour);
    ellipse(Ball1.x, Ball1.y, Ball1.diameter, Ball1.diameter);
    ellipse(Ball2.x, Ball2.y, Ball2.diameter, Ball2.diameter);

//score for p1


//printing score
    fill(175, 100, 220);
    textSize(0.1*width);
    text(int (Ball1.score), (width*1/5)-(0.1*width), height*1/5  );
    text(int(Ball2.score), width*4/5, height*1/5);
    println(" P1 score: " + int(Ball1.score) + " P2 score: " + int(Ball2.score));
  }
  
  
}