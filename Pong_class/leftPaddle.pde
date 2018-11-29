class leftPaddle{
  int x;
  float y;
  int padwidth;
  int padHeight;
  color colour;
  
  leftPaddle(){
    x=10;
    y=300;
    padwidth=15;
    padHeight=100;
    colour=#FF0808;
   
  }
  
  void leftMove(){
   
    
      if( key == 'w'){
        
      y+=-2;
      
    }
    
    if (y < 45){
      y = 45;
    }
    
    
    if (key == 's'){
     
      y+=2;
    }
    
    
     if (y > 550){
      y = 550;


     }
  }
}
