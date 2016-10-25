class Ball{
  
  float x;
  float y;
  float w;
  float speed;
  float gravity;
  float gra2;
  
  
  
  Ball(float x1,float y, float w1){
   x=x1;
   y=0;
   w=w1;
   speed=0;
   gravity=random(0.1,0.5);
   gra2=random(0.9,0.95);
  }
  
  //ball images
  void display(){
    fill(255);
    noStroke();
    ellipse(x,y,20,20);
  }
  
  //ball speed
  void move(){
    
   y=y+speed;
   speed=speed+gravity;
  }
  
  // ball gravity to 
  void gravity(){
    if(y>height){
      speed=speed*-gra2;
      y=height;
    } 
  }
}