class Snow{
  
float x;
float y;
float w;
float speed;


Snow(float x1,float y1, float w1){
  x=x1;
  y=y1;
  w=w1; 
}
//snow images
  void display(){
    ellipse(x,y,10,10);
    fill(random(10,200));
    noStroke();
  }
  
  //falling snows
    void fall() {
    if (y>height+10) {
      y=-10;
    } else {
      y++;
  }
 }
}