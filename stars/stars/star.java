class Star {
  private float x;
  private float y;
  private float radius;
  public float targetX ;
  public float targetY ;
   private int diameter;
  private static int StarCount = 50; //Number of stars or Pong Balls that will be drawn
  private static int maxRadius = 20; //can this be a ratio of width with error checking of different geometery
 
  public Star(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    targetX = x; 
    targetY = y;
    this.diameter = diameter;
  } //End of Constructor

 void step() {
    if (x < targetX) {
      x++;
    } else {
      x--;
    }


    if (y < targetY) {
      y++;
    } else {
      y--;
    }
  }




  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
  public static int getStarCount() {
    return StarCount;
  }
  public static int getMaxRadius() {
    return maxRadius;
  }

public int getDiameter() {
  return diameter;
}
}
 
  
