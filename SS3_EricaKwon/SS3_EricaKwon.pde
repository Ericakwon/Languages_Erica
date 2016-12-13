//Dawon Erica Kwon
// Title : Click me
//there are four different designs, so you can click 
//each other * the last one, you should click right mouse button.


boolean button=false;
float count=0;
float x=0;
float y=0;
float r=random(255);
float g=random(255);
float b=random(255);
float a=random(255);
  float distance=abs(mouseX-1);
  float opposit=abs(mouseX+2);
  float d=0;
  float e=0;
  float f=0;
  float h=0;
  float i=0;
  float j=0;
  
int x1=0;
int y1=0;
int x2=0;
int y2=0;
int x3=0;
int y3=0;
int x4=0;
int y4=0;
int x5=0;
int y5=0;
int speed=3;
int state=0;
  
void setup(){
  size(800,800);
}
void draw(){
  float distance=abs(mouseX-1);
  float opposit=abs(mouseX+2);
  background(255);

  
  noStroke();
  fill(distance,g,50);
  rect(0,0,200,height);
  fill(r,g,opposit);
  rect(200,0,200,height);
  fill(opposit,opposit,distance);
  rect(400,0,200,height);
  fill(150,distance,opposit);
  rect(600,0,200,height);
  
 
  fill(255);
  ellipse(100,height/2,x+20,y+20);
  
  rect(300,height/2-10,d+20,e+20);
  textAlign(CENTER);
  stroke(0);
  textSize(10);
  text("mouse Pressed",310,height/2-20);
  
  noFill();
  stroke(100);
  strokeWeight(2);
  ellipse(500,height/2,f+20,h+20);
  
  
  strokeWeight(4);
  rect(700,height/2-10,i+16,j+16);
  textAlign(CENTER);
  stroke(0);
  textSize(10);
  fill(0);
  text("mouse Pressed",708,height/2-20);
  
float r=random(0,255);
float g=random(0,255);
float b=random(0,255);
float a=random(0,255);
  if(mouseX>80 && mouseX<120 && mouseY>height/2-20 && mouseY<height/2+20){
    button=true;
    }else{
    button=false;
    } if(button){
    x=x+2;
    y=y+2;
    }else{
    x=0;
    y=0;
  }if(x>100){
  fill(0);
  }if(x>200){
  fill(252,227,108);
   } if (button){
      x=x+0.1;
     y=y+0.1;
     stroke(255);
     strokeWeight(1);
     ellipse(100,200,x,y);
     ellipse(100,600,x,y);
     ellipse(100,400,x,y);
  }
  
  if(mouseX>300 && mouseX<320 && mouseY>height/2-10 && mouseY<height/2+20){
   noStroke();
   fill(0);
   rect(x1,y1,20,20);
 

   if(state==0){
   x1=x1+speed*5;
   if(x1>380){
     x1=380;
     state=1;
   }
   }else if(state==1){
   y1=y1+speed*2;
   if(y1>height-20){
     y1=height-20;
     state=2;
   }
   }else if(state==2){
     x1=x1-speed*3;
     if(x1<200){
     x1=200;
     state=3;
     }
   }else if(state==3){
    y1=y1-speed;
    if(y1<0){
    y1=0;
    state=0;
   }
   }
   }
  

 if(mousePressed){
   if(mouseX>300 && mouseX<320 && mouseY>height/2-10 && mouseY<height/2+20){
   stroke(255);
   fill(81,199,198);
   rect(x2,y2,10,10);
   rect(x3*3,y3*3,40,40);
   rect(x4,y4,25,25);
 if(state==0){
   x2=x2+speed*3;
   x3=x3+speed*2;
   x4=x4+speed*4;
   if(x2>500 && x3>200 && x4>600 && x5>140 ){
     x2=500;
     x3=200;
     x4=600;
     state=1;
   }
   }else if(state==1){
   y2=y2+speed*3;
   y3=y3+speed*5;
   y4=y4+speed*2;

   if(y2>height-10 && y3>height-40 && y4>height-25 && y5>height-30){
     y2=height-10;
      y3=height-40;
       y4=height-25;
    
     state=2;
   }
   }else if(state==2){
     x2=x2-speed*3;
     x3=x3-speed*3;
     x4=x4-speed*5;
     
     if(x2<300 && x3<100 && x4<300 && x2<40){
     x2=300;
     x3=100;
      x4=300;

       
     state=3;
     }
     }else if(state==3){
     y2=y2-speed;
     y3=y3-speed;
     y4=y4-speed;
 if(y2<0 && y3<0 && y4<0){
  y2=0;
  y3=0;
  y4=0;
  state=0;
   }
   }
   }
 }
if(mouseX>400 && mouseX<600 && mouseY>0 && mouseY<height){
     button=true;
     if(button){
     stroke(0);
      strokeWeight(1);
   }
    for(int q=0;q<height;q+=20){
    line(400,q,600,q);
}if(mouseX>400 && mouseY<200){
  strokeWeight(0);
  fill(255,210,0,a);
  rect(400,0,200,200);
}else if (mouseX>400 && mouseY>200 && mouseY<400){
  strokeWeight(0);
  fill(251,22,194,a);
  rect(400,200,200,200);
}else if (mouseX>400 && mouseY>400 && mouseY<600){
  strokeWeight(0);
  fill(239,90,44,a);
  rect(400,400,200,200);
}else if(mouseX>400 &&mouseY>600){
  strokeWeight(0);
  fill(r,g,b,a);
  rect(400,600,200,200);
}
}

if(mousePressed){
  if(mouseX>700&&mouseX<716&&mouseY>height/2-10&&mouseY<height/2+20){
   fill( r, g, b);
   strokeWeight(2);
   frameRate(5);
   fill(r,g,b,a);
   ellipse(700, 400, r, g+50);
   ellipse(500, 400, r, g+100);
   ellipse(300, 400, r+30, g);
   ellipse(100, 400, r+10, g);
   frameRate(50);
  
   fill(r,g,b,a);
   ellipse(700, 400, r, g+50);
   ellipse(500, 400, r, g+100);
   ellipse(300, 400, r+30, g);
   ellipse(100, 400, r+10, g);
  }
  }
  }


 

void keyPressed(){
background(r,g,b,a);  
}