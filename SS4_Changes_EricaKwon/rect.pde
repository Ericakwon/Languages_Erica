class Rect{
  
 float x;
 float y;
 float speed;
 float w;
 int state;
 
 Rect(){
   x=0;
   y=0;
   speed=random(2);
   state=0;
   
  
 }
 //rect images
 void display(){
   fill(random(0,255));
   noStroke();
   rect(x,y,10,10);
 }
 
 
 //moving rect using stages
 void move(){
 if(state==0){
   x=x+speed*5;
   if(x>=width-10){
     x=width-10;
     state=1;
   }
   }else if(state==1){
   y=y+speed*2;
   if(y>=height/2-10){
     y=height/2-10;
     state=2;
   }
   }else if(state==2){
     x=x-speed*3;
     if(x<=0){
     state=3;
     }
   }else if(state==3){
   y=y-speed;
   if(y<=0){
   state=0;
   }
   }
}
}