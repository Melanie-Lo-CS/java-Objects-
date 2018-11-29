class rectangle extends Shape{
 private float width;
 private float height;
 private color c;
  float xSpeed;
  float ySpeed;
  
  private rectangle (float x, float y, float width, float height, color c){
  super(x, y);
  this.width = width;
  this.height = height;
  this.c = c;
  this.xSpeed = 5;
  this.ySpeed = 5;
  }
  
  void draw(){
    fill(c);
    rect(x,y, width, height);
}
void step(){
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
