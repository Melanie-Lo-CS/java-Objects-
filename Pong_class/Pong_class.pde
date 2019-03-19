Boolean start = false;
Boolean fire = false;
Ball Ball1 = new Ball(350, 300, color(0, 255, 0));
Ball Ball2 = new Ball(350, 320, color(0, 255, 0));
leftPaddle LeftPaddle = new leftPaddle();
rightPaddle RightPaddle = new rightPaddle();
int score1 = 0;
int score2 = 0;
Boolean firework = false;
firework[]fireworks=new firework[100];
float x;
float y;

void setup() {
  size(700, 600);

  //screenChecker();


  //Code to change "Start" Boolean Variable to true

  for (int i = 0; i < fireworks.length; i++) {
    fireworks[i]=new firework(width/2, height/2);
  }
}
void draw() {


  StartStop();
  //arithemetic to calcaulte starting positions of paddles and ball
  background(0);

 

  rectMode(CENTER);
  fill(LeftPaddle.colour);
  rect(LeftPaddle.x, LeftPaddle.y, LeftPaddle.padwidth, LeftPaddle.padHeight);
  LeftPaddle.leftMove();

  RightPaddle.rightMove();

  rectMode(CENTER);
  fill(RightPaddle.colour);
  rect(RightPaddle.x, RightPaddle.y, RightPaddle.padwidth, RightPaddle.padHeight);

  //printing score
  fill(175, 100, 220);
  textSize(0.1*width);
  text(int (score1), (width*1/5)-(0.1*width), height*1/5  );
  text(int(score2), width*4/5, height*1/5);
  println(" P1 score: " + int(Ball1.score) + " P2 score: ");

  if (start==true) {
   
    Ball1.step();
    
    ellipse(Ball1.x, Ball1.y, Ball1.diameter, Ball1.diameter);
  } else {
    if (fire) {
      
      for (int i = 0; i < fireworks.length; i++) {
        fireworks[i].step();
      }
      for (int i = 0; i < fireworks.length; i++) {
        fireworks[i].draw();
      }
    }
  }
  
   Ball2.step();
   ellipse(Ball2.x, Ball2.y, Ball2.diameter, Ball2.diameter);
}
