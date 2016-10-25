class Line{


float x;
float y;
float speed;
float x1;
boolean mouse;


Line(){
  x=0;
  y=0;
  x1=random(10,30);
  speed=random(1);
  mouse=false;
  
}

// Line speed
void move(){
  x=x+speed;
  if(x>width/2-10){
  x=-20;
  }
}
  
  //Line images
  void display(){
    if(mouse){
      fill(255);
    }else{
      fill(255,100);
    }
    noStroke();
    rect(x,0,x1,height);
  }
  

  void more(int mx,int my){
  if(x>mx && mx<x+x1){
    mouse=true;
  }else{
    mouse=false;
  }
  }
}