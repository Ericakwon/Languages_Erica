//title : where is my parent?
//Erica Kwon

int presscolor =0;
String a2 = "This way???";
String state= "pregame";
PImage img1;
PImage img2;
PImage img22;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage img10;

float rx;
float ry;


//int radius=-20;
//int direction=1;
//float x= -radius;
//float speed=0.3;

int speed =1;
int time1= 3000;
int time2= 5500;
int time3= 9000;
int time4= 12000;
int currentTime=0; 
int savedTime=0;

float r=random(0,255);
float g=random(0,255);
float b=random(0,255);

void setup() {

  
  size(1280, 720);
  smooth();
  background(255);
  img1 = loadImage("frames.jpg");
  img2 = loadImage("grandmom.png");
  img22 = loadImage("speech.png");
  img3 = loadImage("market2.jpg");
  img4 = loadImage("mnd2.jpg");
  img5 = loadImage("cry.jpg");
  img6 = loadImage("dnd.jpg");
  img7 = loadImage("amuse.jpg");
  img8 = loadImage("lost2.gif");
  

  
}


void draw() {


  textSize(36);
  textAlign(CENTER);
  if (state=="pregame") {
  background(r+20,g+20,b+20);
  fill(0, 102, 153);
  text( "Travel to the past", width/2, height/2);
    
    
  }else if(state=="start"){
     imageMode(CORNER);
     image(img1,0,0);
     image(img2,985,290);
     image(img22,500,6);
     
    //left up
     noStroke();
     fill(r,g,b);
     triangle(445, 623, 415,668,475, 668);
     rectMode(CENTER);
     rect(445,674,20,30);
     
    //right up
     triangle(706, 623,676,668,736, 668);
     rectMode(CENTER);
     rect(706,674,20,30); 
     
    currentTime= millis(); 
if (currentTime> time1 && currentTime< time2 ) {
   fill(0, 102, 153);
   text( "Hello ! I MISS MY PARENTS", 830,120);
   
}else if (currentTime> time2 && currentTime< time3 ) { 
  fill(0, 102, 153);
  textSize(30);
  text( "Through pictures, I can go back to the past", 833,110,431,90);
  
}else if (currentTime> time3 ) { 
  fill(0, 102, 153);
  textSize(30);
  text( "Please help me to meet my parents",833,110,431,90);


  //second image
  }
  }else if(state=="market2"){
    imageMode(CORNER);
    image(img3,0,0,1280,720);
    left(130, 515,190,471,190,557, r, g, b, "left"); 
    right(1175, 515,1115,471,1115,557,r,g,b, "right");
    semitext(0,0,0,a2,"Which way do you want to go?");
  
  //third
  }else if(state=="mom"){
    background(255);
    imageMode(CENTER);
    image(img4,width/2,height/2+100,width/2+100,height*2/3);
    right(1175, 515,1115,471,1115,557,r,g,b, "right");
    finaltext(192,89,221,"I met mom!!!");
    println("congratulation!!");
     
   //fourth   
  }else if (state=="lost"){
    background(255);
    imageMode(CENTER);
    image(img8,width/2,height*2/3-50);
    left(130, 515,190,471,190,557, r, g, b, "Go back"); 
    finaltext(255,0,0,"I am lost..!!");
    println("I am lost..");


  }else if(state=="amuse"){
    imageMode(CORNER);
    background(255);
    image(img7,0,0,1280,720);
    left(130, 515,190,471,190,557, r, g, b, "left"); 
    right(1175, 515,1115,471,1115,557,r,g,b, "right");
    semitext(0,0,0,a2,"Which way do you want to go?");

 
  }else if(state=="daddy"){
    background(255);
    imageMode(CENTER);
    image(img6,width/2,height/2+70,width/2+80,height*2/3+100); 
    right(1175, 515,1115,471,1115,557,r,g,b, "right");
    finaltext(192,89,221,"I found dad!!!");
    println("congratulation!!");
  

  } else if (state=="lost2"){
    background(255);
    imageMode(CENTER);
    image(img8,width/2,height*2/3-50);
    left(130, 515,190,471,190,557, r, g, b, "Go back"); 
    finaltext(255,0,0,"I am lost..!!");
    println("I am lost..");
  }
  //title
    fill(0);
  textSize(15);
  text("where is my parent?",80,15);
  text("Made by Dawon Erica Kwon",110,35);
}

  
  
void finaltext(int r1, int g1, int b1,String shout){

    fill(r1,g1,b1);
    textSize(40);
    text(shout, width/2, height/5);
}

void semitext(int r1, int g1, int b1,String a2,String shout){

    println(a2);
    rectMode(CORNER);
    fill(255);
    strokeWeight(5);
    stroke(169,202,13);
    rect(370,ry,550,85);
    fill(r1,g1,b1);
    textSize(30);
    text(shout, width/2, ry+50);
      ry=ry+speed;
    if(ry>0 ){
      speed=speed*1;
    }if(ry>=90){
     ry=90;

    }    
}

void left(int x, int y,int x1, int y1,int x2, int y2, float r, float g, float b, String direction) {  
  noStroke();
  fill(random(0, 255), random(0, 255), random(0, 255));
  rectMode(CENTER);
  rect(200,515,40,30); 
  triangle(x,y,x+60, y-44,x+60, y+42);
  textAlign(CENTER);
  textSize(20);
  text(direction, x+55, y+70);

  
  }

void right(int x, int y,int x1, int y1,int x2, int y2, float r, float g, float b, String direction) {  
  noStroke();
  fill(random(0, 255), random(0, 255), random(0, 255));
  rectMode(CENTER);
  rect(1100,515,40,30); 
  triangle(x,y,x-60, y-44,x-60, y+42);
  textAlign(CENTER);
  textSize(20);
  text(direction, x-55, y+70);

  }

void mousePressed() {
  //Mom part
  
  if (state=="pregame") {
      state="start";
      
      
  }else if (state=="start"){
   if(mouseX>=339&& mouseX<=549 && mouseY>=319 && mouseY<=593){
    state="market2";
   }else if(mouseX>=593&& mouseX<=779 && mouseY>=319 && mouseY<=593){
    state="amuse";


}
}else if(state=="market2"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
         state="mom";
         }else if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
                  state="lost";



}
}else if(state=="lost"){
      if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
       state="market2";
    
  
}
}else if (state=="mom"){
      if(mouseX>=1000 && mouseX<=1400 && mouseY>=300 && mouseY<=800){
         state="start";
    
    
    
      ////Daddy part    
}
}else if(state=="amuse"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
         state="daddy";
         }else if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
          state="lost2";
        
  
}
}else if(state=="lost2"){
      if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
         state="amuse";
    
  
}
}else if (state=="daddy"){
      if(mouseX>=1000 && mouseX<=1400 && mouseY>=300 && mouseY<=800){
         state="start";
}
}
}

void keyPressed() {
  if (presscolor==0) {
    r=random(0, 255); g= random(0, 255); b=random(0, 255);
  } else {
     r=255; g= 30; b=100;
  }
}