class Rain{
  
float x;
float y;
float w;
float speed;


Rain(float x1,float y1, float w1){
  x=x1;
  y=y1;
  w=w1; 
}
//snow images
  void display(){
    ellipse(x,y,6,6);
    fill(50,50,200);
    noStroke();
  }
  
void fall() {
    if (y>height+10) {
      y=-10;
    } else {
      y=y+12;
  }
 }
}