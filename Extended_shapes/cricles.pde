class Circle extends Shape {

 private float radius;
  float x;
  float y;
 private color c;
  float xSpeed;
  float ySpeed;


  private Circle(float x, float y, float radius, color c) {
    super(x, y);
    this.c = c;
    this.radius = radius;
    this.ySpeed = 5;
    this.xSpeed = 5;
  }
  
    void draw() {
    fill(c);
    ellipse (x, y, radius, radius);
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
}

}
