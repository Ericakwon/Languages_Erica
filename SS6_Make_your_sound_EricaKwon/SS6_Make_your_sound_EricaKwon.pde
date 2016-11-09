//title : Make your sound
//Erica Kwon

import processing.sound.*;

//sound files
SoundFile song1;
SoundFile song2;
SoundFile song3;

Amplitude ana;
AudioIn mic;
//three objects
line_ ellipse1;
circle_ ellipse2;
rect_ ellipse3;

boolean clapping=false;

boolean click1=false;
boolean click2=false;
boolean click3=false;

void setup() {

  size(600, 600);

  song1=new SoundFile(this, "s1.mp3");
  song2=new SoundFile(this, "s2.mp3");
  song3=new SoundFile(this, "s3.mp3");

  ana=new Amplitude(this);
  ana.input(song1);
  ana.input(song2);
  ana.input(song3);
  ellipse1=new line_(100, height/2, 50);
  ellipse2=new circle_(300, height/2, 50);
  ellipse3=new rect_(500, height/2, 50);
  
}

void draw() {

  background(255);
  float volume=ana.analyze(); 
  
  //volume and speed 
  float vol=map(mouseX, width, 100, 0, 1);
  float speed=map(mouseY, height, 100, 0, 1);

  song1.amp(vol);
  song2.amp(vol);
  song3.amp(vol);
  song1.rate(speed);
  song2.rate(speed);
  song3.rate(speed);

  //moving shapes for volume and speed 
  fill(225, 21, 218);
  stroke(0);
  rect(mouseX, 100, 48, 48);
  fill(255, 208, 22);
  stroke(0);
  rect(100, mouseY, 48, 48);

// shapes of circle with texts
textSize(15);
  ellipse1.display(mouseX, mouseY);
  text("click",85,height/2+40);
  ellipse2.display(mouseX, mouseY);
    text("click",285,height/2+40);
  ellipse3.display(mouseX, mouseY);
    text("click",485,height/2+40);
    
    //volume direction sign 
     fill(225, 21, 218);
    stroke(0);
    strokeWeight(2);
    triangle(130,40,100,20,100,60);
    textSize(20);
    text("volume",20,45);
    
    //speed direction sign
    fill(255, 208, 22);
    stroke(0);
    strokeWeight(2);
    triangle(40,130,20,100,60,100);
    textSize(20);
    text("speed",10,150);
}

void mousePressed() {
  if (mouseX>=75&&mouseX<=125&&mouseY>=height/2-25&&mouseY<=height/2+25&&click1==true) {
    song1.loop();
    click1=false;
  } else if (mouseX>=75&&mouseX<=125&&mouseY>=height/2-25&&mouseY<=height/2+25&&click1==false) {
    song1.stop();
    click1=true;
  } else if (mouseX>=300-25&&mouseX<325&&mouseY>height/2-25&&mouseY<=height/2+25&&click2==true) {
    song2.loop();
    click2=false;
  } else if (mouseX>300-25&&mouseX<325&&mouseY>height/2-25&&mouseY<=height/2+25&&click2==false) {
    song2.stop();
    click2=true;
  } else if (mouseX>500-25&&mouseX<525&&mouseY<height/2+25&&mouseY<height/2+25&&click3==true) {
    song3.loop();
    click3=false;
  } else if (mouseX>500-25&&mouseX<525&&mouseY<height/2+25&&mouseY<height/2+25&&click3==false) {
    song3.stop();
    click3=true;
  }
}