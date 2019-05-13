Boolean start = false;
Boolean fire = false;
Ball Ball1 = new Ball(350, 300, color(0, 255, 0));
leftPaddle LeftPaddle = new leftPaddle();
rightPaddle RightPaddle = new rightPaddle();
int score1 = 0;
int score2 = 0;
Boolean firework = false;
firework[]fireworks=new firework[100];
float x;
float y;
boolean inGame = false;

void setup() {
  size(700, 600);

  //screenChecker();


  //Code to change "Start" Boolean Variable to true

  for (int i = 0; i < fireworks.length; i++) {
    fireworks[i]=new firework(width/2, height/2);
  }
}
void draw() {
  if (!inGame) {
    background(0);
    textSize(45);
    text("Press space to start",width/5, height/2);
  }
  if (inGame) {
    StartStop();
    //arithemetic to calcaulte starting positions of paddles and ball
    background(0);

    rectMode(CENTER);
    fill(LeftPaddle.colour);
    rect(LeftPaddle.x, LeftPaddle.y, LeftPaddle.padwidth, LeftPaddle.padHeight);
    LeftPaddle.leftMove();
    rectMode(CENTER);
    fill(LeftPaddle.colour);
    rect(LeftPaddle.x, LeftPaddle.y, LeftPaddle.padwidth, LeftPaddle.padHeight);
    LeftPaddle.leftMove();




    rectMode(CENTER);
    fill(RightPaddle.colour);
    rect(RightPaddle.x, RightPaddle.y, RightPaddle.padwidth, RightPaddle.padHeight);
    RightPaddle.rightMove();
    rectMode(CENTER);
    fill(RightPaddle.colour);
    rect(RightPaddle.x, RightPaddle.y, RightPaddle.padwidth, RightPaddle.padHeight);
    RightPaddle.rightMove();

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
  }
}
void keyPressed() {
  if(!inGame && key==' ') {
    inGame = true;
  }
}
