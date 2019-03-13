firework[]fireworks=new firework[100];



void setup(){
  size(500,600);
  for (int i = 0; i < fireworks.length; i++) {
    fireworks[i]=new firework(mouseX,mouseY);
  }
} 

void draw(){
   
  background(255);
  for (int i = 0; i < fireworks.length; i++) {
  fireworks[i].step();}
  for (int i = 0; i < fireworks.length; i++) {
  fireworks[i].draw();
  }
}
    void mouseClicked(){
  for (int i = 0; i < fireworks.length; i++) {
 fireworks[i] = new firework (mouseX,mouseY);
    
  }
    }
