ArrayList <Shape> shapes = new ArrayList<Shape>();

/*Shape triangle = new Shape(50, 70) {
  void draw() {
    fill(random(255), random(255), random(255));
    triangle(x, y, x-10, y+10, x+10, y+10);
  }
};*/

void setup() {
  size(500, 600);
  rectangle rHex = new rectangle (width*1/4, height*1/4, width*2/4, height*2/4, color(#0AF5FF) );//big shape
  rectangle rRGB = new rectangle (width*1/4, height*1/4, width*1/5, height*1/5, color(random(255), random(255), random(255)));//small shape
  Circle cRGB = new Circle (width* 3/16, height*1/15, width*2/15, color(random(255), random(255), random(255)));
  Circle CRGB = new Circle (width* 11/11, height*1/5, width*1/5, color(random(255), random(255), random(255)));


Shape triangle = new Shape(50, 70) {
  public void draw() {
    fill(random(255), random(255), random(255));
    triangle(x, y, x-10, y+10, x+10, y+10);
  }
  public void step() {}
};

  shapes.add(rHex);
  shapes.add(rRGB);
  shapes.add(cRGB);
  shapes.add(CRGB);
  shapes.add(triangle);

  ellipseMode(RADIUS);
  ellipseMode(RADIUS);
}

void draw() {
  background (0);

  for (int i = 0; i <shapes.size(); i++) {
    shapes.get(i).draw();
    shapes.get(i).step();
  }
}



abstract class Shape {
  float x;
  float y;


  Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }

  abstract void draw();
  abstract void step();
}
