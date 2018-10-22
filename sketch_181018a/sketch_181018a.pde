Ball ball = new Ball(250,250, 25);

public void setup(){
 size(500,600);
 ellipseMode(CENTER);
}

public void draw (){
  
  ball.step();
  
  background(0);
  ellipse(ball.getX(), ball.getY(), ball.getDiameter(), ball.getDiameter());
  
  }

void mouseClicked() {
  
 ball.targetX = mouseX;
 ball.targetY = mouseY;
  
}
