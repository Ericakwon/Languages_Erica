
import processing.serial.*;
Serial myPort;
String portStream;
String state= "pregame";

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
 
float scale = 0.8; 
float m;
float a;
float v;
float b;
float d;

int counter;

float[][] dots;
int numdots = 20;
 
 
 
void setup() {
  size(1280, 720);
  smooth();
  
    String portName = Serial.list()[1];
      myPort = new Serial(this, portName, 9600);
      myPort.bufferUntil('\n');
      
      noStroke();
      for(int i=0;i<Rains.length;i++){
      Rains[i]= new Rain(int(random(width)), int (random(height)),10);
     
    }
   }
 
 
 
void draw() {
    background(0);
    if(portStream != null) {
    if (portStream.length() == 11 && portStream.charAt(0) == 'S' && portStream.charAt(8) == 'E') {
      B1in = int(portStream.substring(1,2));  
      B2in = int(portStream.substring(2,3));  
      B3in = int(portStream.substring(3,4)); 
      B11in = int(portStream.substring(4,5));  
      B22in = int(portStream.substring(5,6));  
      B33in = int(portStream.substring(6,7)); 
      B111in = int(portStream.substring(7,8)); 
      
      counter++;
      noStroke(); 
  
      currentTime=millis();
       strokeCap(ROUND);


if(state=="start1"){
  b=0;
}
if(state=="start2"){
  a=0;
}
if(state=="start3"){
  v=0;
}

 if(state=="water"){
  if (currentTime-saveTime> time2 && currentTime-saveTime< time3) {
   fill(255,0,0);
     textSize(15);
   textAlign(CENTER);
   text( "TOO MUCH WATER!! TURN OFF!",260,height*4/5);

  }
  if(currentTime-saveTime> time3&&currentTime-saveTime> time4) {
        fill(255, 0,0);
         textSize(30);
           text( "DIED, START AGAIN",260,height*4/5);
            b=0;
     
    
  }
}

 if(state=="water2"){
  if (currentTime-savedTime> 2000 && currentTime-savedTime< 4000) {
   fill(255,0,0);   
     textSize(15);
   text( "TOO MUCH WATER!! TURN OFF!",400,height*4/5);
  }
  if(currentTime-savedTime> 4000) {
        fill(255, 0,0);
         textSize(40);
           text( "DIED, START AGAIN",360,height*4/5);
           a=0;
     
    
  }
}

 if(state=="water3"){
  if (currentTime-save_Time> 3000 && currentTime-save_Time< 6000) {
   fill(255,0,0);
     textSize(15);
   text( "TOO MUCH WATER!! TURN OFF!",900,height/2);
  }
  if(currentTime-save_Time> 6000) {
        fill(255, 0,0);
         textSize(40);
           text( "DIED, START AGAIN",800,height/2);
           v=0;
     
    
  }
}

if(state=="dry1"){
  if (currentTime-saveTime1> 2000 && currentTime-saveTime1< 4000) {
   fill(105,60,60);
     textSize(15);
   text( "TOO DRY..TURN OFF THE LIGHT",140,height*4/5);
  }
  if(currentTime-saveTime1> 4000 && currentTime-saveTime1< 6500) {
        fill(255, 0,0);
         textSize(40);
           text( "DIED, START AGAIN",100,height*4/5);
           b=0;
     
    
  }
}
 
  
  if(state=="dry2"){
  if (currentTime-saveTime2> 3500 && currentTime-saveTime2< 5000) {
   fill(105,60,60);
     textSize(15);
   text( "TOO DRY..TURN OFF THE LIGHT",400,height*4/5);
  }
  if(currentTime-saveTime2> 5000 && currentTime-saveTime2< 7500) {
        fill(255, 0,0);
         textSize(40);
           text( "DIED, START AGAIN",360,height*4/5);
           a=0;
     
    
  }
}

if(state=="dry3"){
  if (currentTime-saveTime3> 5500 && currentTime-saveTime3< 7000) {
   fill(105,60,60);
     textSize(15);
   text( "TOO DRY..TURN OFF THE LIGHT",900,height*4/5);
  }
  if(currentTime-saveTime3> 7500 && currentTime-saveTime3< 8500) {
        fill(255, 0,0);
         textSize(40);
           text( "DIED, START AGAIN",800,height*4/5);
           v=0;
     
    
  }
}


if(state=="need1"){
  if (currentTime-saveTime4> 2500 && currentTime-saveTime4< 4000) {
   fill(105,60,60);
    textSize(25);
   text( "Need water",260,height/2);
  }
  else if(currentTime-saveTime4> 7500 && currentTime-saveTime4< 6000) {
        fill(255, 0,0);
         textSize(40);
           text( "DIED, START AGAIN",260,height/2);
           state="start1";
         }
       }
           
           
if(state=="need2"){
  if (currentTime-saveTime3> 4500 && currentTime-saveTime3< 5500) {
   fill(105,60,60);
   textSize(25);
   text( "Need water",560,height/2);
  }
  if(currentTime-saveTime3> 7500 && currentTime-saveTime3< 7500) {
        fill(255, 0,0);
          textSize(25);
           textSize(40);
           text( "DIED, START AGAIN",560,height/2);
           state="start1";
     
    
  }
}
  
//////////////////////////////
/////////Water and Growing

  if (B11in == 1) {
    state="water";
    b = b + 0.0028;
      if (b >= 7) {
       b =7;
       }
        for(int i=0;i<Rains.length;i++){
         Rains[i].display();           
         Rains[i].fall(); 
          }
          }else {
          saveTime=currentTime;
         
            
}

            
if (B22in == 1) {
       state="water2";
       a = a + 0.0028;
       if (a >= 7) {
       a =7;
       }
        for(int z=0;z<Rains.length;z++){
       Rains[z].display();           
        Rains[z].fall(); 
        }
        }else{
          
        savedTime=currentTime;
}
     
          
if (B33in == 1) {
  state="water3";
       v = v + 0.0028;
       if (v >= 7) {
       v =7;
       }
  for(int i=0;i<Rains.length;i++){
    Rains[i].display();           
    Rains[i].fall();   
        }
        }else{
        save_Time=currentTime;
}
                        


/////////////////////////////////////////
/////////////Light and Growing

if (B1in == 1) {

fill(255,255,255,100); 
triangle(263,-100,50,height,width/3+50,height);
drawTree1(width/5,height-50, -10, 15, 5, 160, b);
b = b + 0;
state="dry1";
}else{
      
      drawTree1( width/5,height-50, -10, 15, 5, 160, b);
      b = b + 0.0015;
      if (b >= 7) {
      b = 7;
 }
saveTime1=currentTime;
}
       
     
        
if (B2in == 1) {
  
noStroke();
fill(255,255,255,96); 
triangle(526,-100,width/3-100,height,width*2/3-80,height);

drawTree2( width*2/5,height-70, -10, 15, 5, 150, a);
a = a + 0;
state="dry2";
}else{
     drawTree2( width*2/5,height-70, -10, 15, 5, 150, a);
     a = a + 0.0015;
     if (a >= 7) {
     a = 7;
}
saveTime2=currentTime;
}

if (B3in == 1) {
 
noStroke();
fill(255,255,255,96); 
triangle(789,-100,width*2/3+50,height,width,height);
drawTree3(width*4/5,height-20, -10, 7, -5, 170, v);
v = v + 0;
 state="dry3";
}else{
 
     drawTree3(width*4/5,height-20, -10, 7, -5, 170, v);
     v = v+ 0.0015;
     if (v >= 7) {
     v = 7;
  }
  saveTime3=currentTime;
  }





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