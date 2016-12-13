import processing.sound.*;
SoundFile file;


import processing.serial.*;
Serial myPort;
String portStream;
String state= "pregame";

PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;

int speed =1;
int time1= 800;
int time2= 2500;
int time3= 4800;
int time4= 6000;
int currentTime; 
int saveTime=0;
int saveTime1=0;
int saveTime2=0;
int saveTime3=0;
int saveTime4=0;
int saveTime5=0;
int saveTime6=0;
int saveTime7=0;
int saveTime8=0;
int saveTime9=0;
int saveTime11=0;
int savedTime=0;
int save_Time=0;
Rain[] Rains= new Rain[200];
 
int B1in = 0;
int B2in = 0;
int B3in = 0;
int B11in = 0;
int B22in = 0;
int B33in = 0;
int B111in = 0;
int B222in = 0;
int B333in = 0;
int B4in = 0;
 
float scale = 0.8; 
float m;
float a;
float v;
float b;
float d;
float x;
float y;

int counter;

float[][] dots;
int numdots = 20;
 
 
 
void setup() {
  size(1280, 720);
  smooth();
   file = new SoundFile(this, "bgm.mp3");
  file.play();
img1 = loadImage("water.png");
img2 = loadImage("light.png");
img3 = loadImage("water 2.png");
img4 = loadImage("light2.png");
img5 = loadImage("well.png");
  
    String portName = Serial.list()[1];
      myPort = new Serial(this, portName, 9600);
      myPort.bufferUntil('\n');
      
      noStroke();
      for(int i=0;i<Rains.length;i++){
      Rains[i]= new Rain(int(random(width)), int (random(height)),10);
     
    }
   

  
   }
 
 
 
void draw() {
    background(0,10);
    if(portStream != null) {
    if (portStream.length() == 14 && portStream.charAt(0) == 'S' && portStream.charAt(11) == 'E') {
      B1in = int(portStream.substring(1,2));  
      B2in = int(portStream.substring(2,3));  
      B3in = int(portStream.substring(3,4)); 
      B11in = int(portStream.substring(4,5));  
      B22in = int(portStream.substring(5,6));  
      B33in = int(portStream.substring(6,7)); 
      B111in = int(portStream.substring(7,8)); 
      B222in = int(portStream.substring(8,9)); 
      B333in = int(portStream.substring(9,10)); 
            B4in = int(portStream.substring(10,11)); 

      noStroke(); 
      currentTime=millis();
       strokeCap(ROUND);
       
 fill(0,10);
 rect(0,0,width,height);
 fill(255,186,1);
 ellipse(random(width),random(height),x,y);
 if(x>=4&&y>=4){
   x--;
   y--;
 }else{
   x++;
   y++;
 }

// Welcome to the dark world.  All of creatures live in the dark. Make a plants to grow up
}
if(state=="tree1"){
drawTree1(width/5,height-50, -10, 15, 5, 160, b);
b=0;
saveTime1=currentTime;
saveTime=currentTime;
saveTime4=currentTime;
saveTime7=currentTime;

    }else if(state=="tree2"){
    drawTree2( width*2/5,height-70, -10, 15, 5, 150, a);
    a=0;
    saveTime2=currentTime;
savedTime=currentTime;
saveTime5=currentTime;
saveTime8=currentTime;
    }else if(state=="tree3"){
    drawTree3(width*4/5,height-20, -10, 7, -5, 170, v);
    v=0;
    saveTime3=currentTime;
save_Time=currentTime;
saveTime6=currentTime;
saveTime9=currentTime;
    }





textAlign(CORNER);


if(state=="start1"){
drawTree1(width/5,height-50, -10, 15, 5, 160, b);
b=0;
saveTime4=currentTime;
}
else if(state=="start11"){
drawTree1(width/5,height-50, -10, 15, 5, 160, b);
b=0;
saveTime7=currentTime;
    }
    
else if(state=="water"){
  if (currentTime-saveTime> time2 && currentTime-saveTime< time3) {
   fill(255,0,0);
     textSize(15);
   textAlign(CENTER);
   text( "TOO MUCH WATER!! TURN OFF!",260,height*4/5);

  }else if(currentTime-saveTime> time3&&currentTime-saveTime> time4) {
        fill(255, 0,0);
         textSize(30);
           text( "DIED, START AGAIN",260,height*4/5);
            b=0; 
  }
}

else if(state=="dry1"){
  if (currentTime-saveTime1> 2000 && currentTime-saveTime1< 4000) {
   fill(105,60,60);
     textSize(15);
       text( "TOO DRY..TURN OFF THE LIGHT",140,height*4/5);
  }
  else if(currentTime-saveTime1> 4000 && currentTime-saveTime1< 6500) {
        fill(255, 0,0);
         textSize(30);
           text( "DIED, START AGAIN",100,height*4/5);
            b=0;
         }
}


    if(state=="start2"){    
      drawTree2( width*2/5,height-70, -10, 15, 5, 150, a);
      a=0;
      saveTime5=currentTime;
    }else if(state=="start22"){    
      drawTree2( width*2/5,height-70, -10, 15, 5, 150, a);
      a=0;
      saveTime8=currentTime;
}else if(state=="water2"){
  if (currentTime-savedTime> 2000 && currentTime-savedTime< 4000) {
   fill(255,0,0);   
     textSize(15);
      text( "TOO MUCH WATER!! TURN OFF!",400,height*4/5);
  }
  else if(currentTime-savedTime> 4000) {
        fill(255, 0,0);
         textSize(30);
           text( "DIED, START AGAIN",360,height*4/5);
           a=0;

  }
}
  else if(state=="dry2"){
  if (currentTime-saveTime2> 3500 && currentTime-saveTime2< 5000) {
   fill(105,60,60);
   textSize(15);
   text( "TOO DRY..TURN OFF THE LIGHT",400,height*4/5);
  }
  else if(currentTime-saveTime2> 5000 && currentTime-saveTime2< 7500) {
        fill(255, 0,0);
         textSize(30);
           text( "DIED, START AGAIN",360,height*4/5);
           a=0;
}
}

 if(state=="start3"){ 
   drawTree3(width*4/5,height-20, -10, 7, -5, 170, v);
   v=0;
   saveTime6=currentTime;
 }else if(state=="start33"){ 
   drawTree3(width*4/5,height-20, -10, 7, -5, 170, v);
   v=0;
   saveTime9=currentTime;
 }else if(state=="water3"){
  if (currentTime-save_Time> 3000 && currentTime-save_Time< 6000) {
   fill(255,0,0);
     textSize(15);
   text( "TOO MUCH WATER!! TURN OFF!",900,height*4/5);
  }
  else if(currentTime-save_Time> 6000) {
        fill(255, 0,0);
         textSize(30);
           text( "DIED, START AGAIN",800,height*4/5);
           v=0;
}
}

else if(state=="dry3"){
  if (currentTime-saveTime3> 5500 && currentTime-saveTime3< 7000) {
   fill(105,60,60);
     textSize(15);
   text( "TOO DRY..TURN OFF THE LIGHT",900,height*4/5);
  }
  else if(currentTime-saveTime3> 7500 && currentTime-saveTime3< 8500) {
        fill(255, 0,0);
         textSize(30);
           text( "DIED, START AGAIN",800,height*4/5);
           v=0;
}
}

 
//////////////////////////////
/////////Water and Growing


if (B1in == 1) {  //light
 int g=0;
 for (int y=400; y>=0; y=y-1) {
    if (g>=0) {
      g=g+1;
      stroke(g, g, g);
      line(0, y,width, y);
    }
     drawTree1(width/5,height-50, -10, 15, 5, 160, b);
b = b + 0;
  }

state="dry1";
saveTime7=currentTime;
}else if (B1in == 0){
      drawTree1( width/5,height-50, -10, 15, 5, 160, b);
      b = b + 0.0015;
      if (b >= 6) {
      b = 6;
      image(img5,200,height/2,160,160);
      stroke(255);
      textSize(20);
      text("Press S to restart",170,height/2+230);
}
      saveTime1=currentTime;
}



if (B11in == 1) {   //water
saveTime4=currentTime;
    state="water";
    b = b + 0.0028;
      if (b >= 6) {
       b =6;
       }
        for(int i=0;i<Rains.length;i++){
         Rains[i].display();           
         Rains[i].fall(); 
          }
}else if(B11in == 0){
         saveTime=currentTime;   
          }
if (B111in == 1) {
  state="tree1";
}

if (B2in == 1) {
saveTime8=currentTime;

 int q=0;
 for (int y=500; y>=0; y=y-1) {
    if (q>=0) {
      q=q+1;
      stroke(q, q, q);
      line(0, y,width, y);
    }
    noStroke();
drawTree2( width*2/5,height-70, -10, 15, 5, 150, a);
a = a + 0;
  }

state="dry2";
}else{
     drawTree2( width*2/5,height-70, -10, 15, 5, 150, a);
     a = a + 0.0015;
     if (a >= 6) {
     a = 6;
     image(img5,450,height/2,160,160);
           stroke(255);
      textSize(20);
      text("Press S to restart",420,height/2+230);
       
}
saveTime2=currentTime;
}


            
if (B22in == 1) {
       saveTime5=currentTime;
       state="water2";
       a = a + 0.0028;
       if (a >= 6) {
       a =6;
       }
        for(int z=0;z<Rains.length;z++){
        Rains[z].display();           
        Rains[z].fall(); 
        }
        }else{
        savedTime=currentTime;
     
}

if (B222in == 1) {
  state="tree2";
}

     
     
if (B3in == 1) {
saveTime9=currentTime;

 int x=0;
 for (int y=600; y>=0; y=y-1) {
    if (x>=0) {
      x=x+1;
      stroke(x, x, x);
      line(0, y,width, y);
    }
    noStroke();
drawTree3(width*4/5,height-20, -10, 7, -5, 170, v);
v = v + 0;
  }

 state="dry3";
}else{
     drawTree3(width*4/5,height-20, -10, 7, -5, 170, v);
     v = v+ 0.0015;
     if (v >= 6) {
     v = 6;
  }
   if(v==6){
       image(img5,950,height/2,160,160);
             stroke(255);
      textSize(20);
      text("Press S to restart",920,height/2+230);
       

}
  saveTime3=currentTime;
  }
     
          
if (B33in == 1) {
  state="water3";
  saveTime6=currentTime;
       v = v + 0.0028;
       if (v >= 6) {
       v =6;
       }
  for(int i=0;i<Rains.length;i++){
    Rains[i].display();           
    Rains[i].fall();   
        }
        }else{
        save_Time=currentTime;
          
}
if (B333in == 1) {
  state="tree3";
}

if (B4in == 1) {
  state="welcom";
}



 image(img4,180,80,50,50);
 image(img3,290,80,50,50);
   image(img4,442,80,50,50);
   image(img3,552,80,50,50);
    image(img4,938,80,50,50);
    image(img3,1060,80,50,50);
 
 
  if (currentTime-saveTime4> 8500 && currentTime-saveTime4< 11000) {
       image(img1,290,80,50,50);
         fill(0,100,200);
         textSize(15);
         text( "NEED WATER",270,150);
          }
            else if(currentTime-saveTime4> 11000 && currentTime-saveTime4< 13500) {
               
              if(b>=6){
                b=6;
               }else{
                b=0;
                fill(255, 0,0);
                textSize(15);
                text( "DIED",301,150);
               }
 }      else if(currentTime-saveTime4> 13500){
    saveTime4=currentTime;
 }
 
   if (currentTime-saveTime7> 20000 && currentTime-saveTime7< 22500) {
   image(img2,180,80,50,50);
   fill(254,183,11);
   textSize(15);
   text( "NEED LIGHT",160,150);
    }
    else if(currentTime-saveTime7>22500 && currentTime-saveTime7< 26000) {
     
      if(b>=7){
                b=7;
               }else{
              fill(255, 0,0);
              textSize(15);
              text( "DIED",188,150);
              b=0;
               }
    }else if( currentTime-saveTime7> 26000) {
    saveTime7=currentTime;
 }
         
    
    
      if (currentTime-saveTime5> 5500 && currentTime-saveTime5< 8500) {
        image(img1,552,80,50,50);
        fill(0,100,200);
        textSize(15);
        text( "NEED WATER",532,150);
        }
           else if(currentTime-saveTime5>8500 && currentTime-saveTime5< 10500) {
               if(a>=6){
                 a=6;
               }else{
           fill(255, 0,0);
           textSize(15);
           text( "DIED",563,150);
           a=0;
               }
               }else if( currentTime-saveTime5> 10500){
    saveTime5=currentTime;
 }
           
 
    if (currentTime-saveTime8> 15000 && currentTime-saveTime8< 19000) {
      image(img2,442,80,50,50);
      fill(254,183,11);
      textSize(15);
      text( "NEED LIGHT",422,150);
      }
      else if(currentTime-saveTime8>19000 && currentTime-saveTime8< 21000) {
           if(a>=6){
                 a=6;
               }else{
           fill(255, 0,0);
           textSize(15);
           text( "DIED",453,150);
           a=0;
      }
      }else if(currentTime-saveTime8> 21000){
    saveTime8=currentTime;
 }
    
    if (currentTime-saveTime6> 10000 && currentTime-saveTime6< 13000) {
          image(img1,1060,80,50,50);
          fill(0,100,200);
          textSize(15);
          text( "NEED WATER",1040,150);
    }
    else if(currentTime-saveTime6>13000 && currentTime-saveTime6< 15500) {
         if(v>=6){
                 v=6;
               }else{
          fill(255, 0,0);
          textSize(15);
          text( "DIED",1071,150);
          v=0;
               }
               }
                else if (currentTime-saveTime6> 15500){
    saveTime6=currentTime;
 }
 
 
   if (currentTime-saveTime9> 17000 && currentTime-saveTime9< 20000) {
        image(img2,938,80,50,50);
        fill(254,183,11);
        textSize(15);
        text( "NEED LIGHT",918,150);
    }
    else if(currentTime-saveTime9>20000 && currentTime-saveTime9< 23000) {
         if(v>=6){
                 v=6;
               }else{
          fill(255, 0,0);
          textSize(15);
          text( "DIED",949,150);
          v=0;
    }
    }else if( currentTime-saveTime9> 23000){
    saveTime9=currentTime;
 }
} 

if(state=="pregame"){
background(0);
textAlign(CENTER);
if (currentTime-saveTime11> 1000 && currentTime-saveTime11< 3500) {
   fill(255);
   textSize(30);
   text( "Welcome to the Dark World", width/2,height/2);
   
}else if (currentTime-saveTime11> 3500 && currentTime-saveTime11< 6000 ) { 
  fill(255);
  textSize(30);
  text( "Trees can live in the dark in this world", width/2,height/2 );
  
}else if (currentTime-saveTime11> 5500 && currentTime-saveTime11< 8000 ) { 
  fill(255);
  textSize(30);
  text( "They grow up faster with a little water and light",  width/2,height/2);
  
}else if (currentTime-saveTime11> 7500&&currentTime-saveTime11< 10000  ) { 
  fill(255);
  textSize(30);
  text( "By pressing the buttons, make trees grow up!", width/2,height/2);
 
}else if (currentTime-saveTime11> 1000 ) { 
state="tree1";
a=0;
b=0;
v=0;
state="tree2";
state="tree3";
 saveTime=currentTime;
 saveTime1=currentTime;
 saveTime2=currentTime;
 saveTime3=currentTime;
 saveTime4=currentTime;
 saveTime5=currentTime;
 saveTime6=currentTime;
 saveTime7=currentTime;
 saveTime8=currentTime;
 saveTime9=currentTime;
 savedTime=currentTime;
 save_Time=currentTime;



    }
    }
}



    

 




void drawTree1(float x, float y, float theta1, float theta2, float theta3, float len, float level) {

  stroke(100, 255*(10-level)/8, 200);
  strokeWeight(level*1.5);
  
    pushMatrix();
    translate(x, y);
    line(0, 0, 0,-len);
    if (level > 1) {
    level = level - 1;

      
        pushMatrix();
        translate(0,-len/3);
        rotate(radians(theta1*2));
        drawTree1(0, 0, theta1, theta2, theta3, len*scale, level);    
        popMatrix();
      
        pushMatrix();
        translate(  0,-len*2/3);
        rotate(radians(theta2+3));
        drawTree1(0, 0, theta1, theta2, theta3, len*scale, level);    
        popMatrix();
      
 
        pushMatrix();
        translate(  0,-len);
        rotate(radians(theta3));
        drawTree1(0, 0, theta1, theta2, theta3, len*scale, level);   
        popMatrix();
       
        }
        popMatrix();  
        
      
 
 
}


void drawTree2(float x, float y, float theta1, float theta2, float theta3, float high, float level) {
  stroke(203, 255*(10-level)/10, 200);
  strokeWeight(level*1.5);
  
    pushMatrix();
    translate(x, y);
    line(0, 0, 0,-high);
    if (level > 1) {
    level = level - 1;
      
        pushMatrix();
        
        translate(0,-high/3);
        rotate(radians(theta1*3));
        drawTree2(0, 0, theta1, theta2+5, theta3, high*scale, level);    
        popMatrix();
        
      
        pushMatrix();
        translate(  0,-high*2/3);
        rotate(radians(theta2+3));
        drawTree2(0, 0, theta1, theta2, theta3, high*scale, level);    
        popMatrix();
 
        pushMatrix();
        translate(  0,-high);
        rotate(radians(theta3));
        drawTree2(0, 0, theta1, theta2, theta3, high*scale, level);   
        popMatrix();
    } 
    
  popMatrix();
  
 
 
}

void drawTree3(float x, float y, float theta1, float theta2, float theta3, float len, float level) {
  stroke(100, 255*(10-level)/10, 200);
  strokeWeight(level*1.5);
  
    pushMatrix();
    translate(x, y);
    line(0, 0, 0,-len);
    if (level > 1) {
    level = level - 1;
      
        pushMatrix();
        translate(0,-len/3);
        rotate(radians(theta1*2));
        drawTree3(0, 0, theta1, theta2, theta3, len*scale, level);    
        popMatrix();
      
        pushMatrix();
        translate(  0,-len*2/3);
        rotate(radians(theta2+3));
        drawTree3(0, 0, theta1, theta2, theta3, len*scale, level);    
        popMatrix();
      
 
        pushMatrix();
        translate(  0,-len);
        rotate(radians(theta3));
        drawTree3(0, 0, theta1+2, theta2, theta3+10, len*scale, level);   
        popMatrix();
    }
  popMatrix();
  
 
}


void serialEvent(Serial myPort) {
  portStream = myPort.readString();
}