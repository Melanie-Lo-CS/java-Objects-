class Ball {
 private int x ;
 private int y ;
 private int diameter;
  
 public int targetX ;
 public int targetY ;

Ball(int x, int y, int diameter){
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    targetX = x; //starting value must match initial instance value
    targetY = y; //starting value must match initial instance value
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


public int getX() {
  return x;
}
public int getY() {
  return y;
}
public int getDiameter() {
  return diameter;
}
}
