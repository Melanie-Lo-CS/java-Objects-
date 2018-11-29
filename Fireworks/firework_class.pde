class firework{
  // variables
 float x;
 float y;
 color c;
 float Xspeed;
 float Yspeed;
 float diameter;
 float gravity;
 int count =100000;
  //Procedures and functions
  
  firework(float height, float width) {
   //x and y are values when pong ball scores
    this.x = mouseX;
    print(x);
    this.y = mouseY;
    print(y);
    this.Xspeed = random(-10,10); 
    this.Yspeed = random(-10,10);
    this.c = color(int(random(250)), int (random(250)), int(random(250)));
    print(c);
    this.diameter = random(width*1/25);
    print(diameter);
    gravity = 0.5;
   }
    void draw(){
   fill(c);
   ellipse(x,y,diameter,diameter);
   
  }
  
  void step(){
    x +=Xspeed;
    y +=Yspeed;
    
    Yspeed += gravity;
  }
 


}
