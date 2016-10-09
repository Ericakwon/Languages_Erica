
String state= "pregame";
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;

void setup() {
  size(1280, 720);
  background(255);
  img1 = loadImage("frame.jpg");
  img2 = loadImage("grandmom.png");
  img3 = loadImage("market.jpg");
  img4 = loadImage("momd.jpg");
    img5 = loadImage("cry.jpg");
}



void draw() {
  textSize(36);
  textAlign(CENTER);
  if (state=="pregame") {
    image(img1,0,0,1280,720);
    text( "Help me to find my parents", width/2, height/2);
  }else if(state=="start"){
     image(img1,0,0,1280,720);
     image(img2,300,400);

  }else if(state=="market"){
    image(img3,0,0,1280,720);
   
  }else if(state=="mom"){
    background(255);
    imageMode(CENTER);
    image(img4,width/2,height/2);
  }else if (state=="lost"){
    background(255);
    imageMode(CENTER);
    image(img5,width/2,height/2);
  }
    
    
       
}

void mousePressed() {
  if (state=="pregame") {
      state="start";
  }else if (state=="start"){
if(mouseX>=250&& mouseX<=550 && mouseY>=170 && mouseY<=470){
    state="market";
}
}else if(state=="market"){
  if(mouseX>=1000 && mouseX<=1400 && mouseY>=300 && mouseY<=800){
    state="mom";
  }else if(mouseX>=100 && mouseX<=300 && mouseY>=100 && mouseY<=400){
    state="lost";

  }
}
}