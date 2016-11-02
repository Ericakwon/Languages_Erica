//Title : Shake your head
//Made by Erica

import processing.video.*;


float r;

// Size of each cell in the grid, ratio of window size to video size
int videoScale= 10;
// Number of columns and rows in our system
int cols,rows;

Capture video;

void setup(){
  size(1280,960);     
  
// Initialize columns and rows
   cols=width/videoScale;
   rows=height/videoScale;

  video=new Capture(this,cols,rows);
  video.start();
}

void captureEvent(Capture video){
   // Read from the camera when a new image is available
 video.read();
}


void draw(){
   background(0);
    video.loadPixels();

//column loop
 for(int i=0; i<cols;i++){
   //row loop
 for(int j=0; j<rows;j++){
   
 pushMatrix();
 
 int x=i*videoScale;
 int y=j*videoScale;
 
 translate(x, y);
 
 
 int loc=(video.width-i-1)+j*video.width;
 color c=video.pixels[loc];
 //a function of tje pixel's brightness
 float sz=(brightness(c)/255)*videoScale;
 
  rectMode(CENTER);
  fill(c);
  stroke(0);
  //drawn ar an (x,y)location scaled and sized by videoscale
  ellipse(x+videoScale,y+videoScale,sz,sz); 
  popMatrix();
    
  fill(c-20);  
   rect(x+videoScale,y+videoScale,sz,sz);
   }
  }
 }