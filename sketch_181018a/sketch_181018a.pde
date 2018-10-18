Ball ball = new Ball(250,250);

void setup(){
 size(500,600);
 ellipseMode(CENTER);
}

void draw (){
  
  ball.step();
  
  background(0);
  ellipse(ball.x, ball.y, 25, 25);

void mouseClicked(){
  
 ball.targetX = mouseX;
 ball.targetY = mouseY;
  
}
