
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
PImage img11;
PImage img12;
PImage img13;
PImage img14;
PImage img15;
PImage img16;
PImage img17;
PImage img18;
PImage img19;
PImage img20;
PImage img21;


float rx;
float ry;
float im;


//int radius=-20;
//int direction=1;
//float x= -radius;
//float speed=0.3;

int speed =1;
int time1= 800;
int time2= 2500;
int time3= 5800;
int time4= 8000;
int currentTime; 
int saveTime=0;

float r=random(0,255);
float g=random(0,255);
float b=random(0,255);

void setup() {

  
  size(1280, 720);
  smooth();
  background(255);
  img1 = loadImage("street.jpg");
  img2 = loadImage("girl.png");
  img22 =loadImage("speech.png");
  img3 = loadImage("market2.jpg");
  img4 = loadImage("mnd2.jpg");
  img5 = loadImage("cry.jpg");
  img6 = loadImage("dnd.jpg");
  img7 = loadImage("amuse.jpg");
  img8 = loadImage("lost2.gif");
  img9 = loadImage("lost2.gif");
  img10 = loadImage("market3.jpg");
  img11 = loadImage("book1.jpg");
  img12 = loadImage("book2.jpg");
  img13 = loadImage("garden.jpg");
  img14 = loadImage("darkmarket.jpg");
  img15 = loadImage("market4.jpg");
  img16 = loadImage("th.jpg");
  img17= loadImage("oldman.png");
  img18 =loadImage("boy.png");
  img19 =loadImage("angry.jpg");
  img20 =loadImage("drunk.png");
    img21 =loadImage("th1.jpg");
  

  
}


void draw() {

  currentTime=millis();
  textSize(36);
  textAlign(CENTER);
  if (state=="pregame") {
  background(r+20,g+20,b+20);
  fill(0, 102, 153);
  text( "Where is my mom?", width/2, height/2);
  
    
  }else if(state=="start"){
     imageMode(CORNER);
     image(img1,0,0,1280,720);
  imageMode(CENTER);
     image(img2,width/2-30,height/2+50);
  imageMode(CORNER);
     image(img22,0,6);
     //saveTime=currentTime;
     
    //left up
    
     fill(0);
     textAlign(CORNER);
     text("Bookstore", 200,360);
     noStroke();
     fill(r,g,b);
     triangle(103,350,165,290,165,410);
     rectMode(CENTER);
     rect(170,350,50,50);
     
     fill(0);
     textAlign(CORNER);
     text("Park", 200,560);
     noStroke();
     fill(r,g,b);
     triangle(103,550,165,490,165,610);
     rectMode(CENTER);
     rect(170,550,50,50);

     
     
    //right up
     fill(0);
     textAlign(CORNER);
     text("Market", 955,360);
     noStroke();
     fill(r,g,b);
     triangle(1180,350,1115,290,1115,410);
     rectMode(CENTER);
     rect(1110,350,50,50);
     
         
     fill(0);
     textAlign(CORNER);
     text("Garden", 955,560);
     noStroke();
     fill(r,g,b);
     triangle(1180,550,1115,490,1115,610);
     rectMode(CENTER);
     rect(1110,550,50,50);
     
     
     
    //currentTime= millis(); 
if (currentTime-saveTime> 1000 && currentTime-saveTime< 3500) {
   fill(255);
   text( "Excuse me, can you help me?", 321,99,420,100);
   
}else if (currentTime-saveTime> 3500 && currentTime-saveTime< 5500 ) { 
  fill(255);
  textSize(30);
  text( "I came here with mom, but I lost her near here..", 321,105,390,105);
  
}else if (currentTime-saveTime> 5500 && currentTime-saveTime< 7500 ) { 
  fill(255);
  textSize(30);
  text( "I think she is looking for me", 321,105,340,105);
  
}else if (currentTime-saveTime> 7500 ) { 
  fill(255);
  textSize(30);
  text( "Please help me to find her",321,130,431,100);
 
}

  //second image
  
  }else if(state=="market2"){
    imageMode(CORNER);
    image(img3,0,0,1280,720);
    if (currentTime-saveTime> time1 && currentTime-saveTime< time2 ) {
    semitext(1280,720,0,0,0,a2,"Mom said we will go to the market");
    }else if (currentTime-saveTime> time2 ) { 
     semitext(1280,720,0,0,0,a2,"we can find her");  
    
    left(130, 515,190,471,190,557, r, g, b, "Inside"); 
    right(1175, 515,1115,471,1115,557,r,g,b, "Outside");
    }
   
    
    
    
    }else if(state=="market3"){
    imageMode(CORNER);
    image(img10,0,0,1280,720);
   
    if(currentTime-saveTime> time1 && currentTime-saveTime< time2 ) {
     fill(0, 102, 153);
      semitext(1280,720,0,0,0,a2,"Wow, There are a lot of people");
     }else if(currentTime-saveTime> time2 ) {
       semitext(1280,720,0,0,0,a2,"go inside?");
  
    left(130, 515,190,471,190,557, r, g, b, "Yes"); 
    right(1175, 515,1115,471,1115,557,r,g,b, "Go outside");
     }
    
    }else if(state=="darkmarket"){
  
    imageMode(CORNER);
    image(img14,0,0,1280,720);
 
    if(currentTime-saveTime>1000 && currentTime-saveTime< 3500 ) {
     fill(0, 102, 153);
        fill(255, 0,0);
         textSize(60);
           text( "she was not my mom!!",width/2,height/2);
    }else if(currentTime-saveTime> 3500) {
        fill(255, 0,0);
         textSize(60);
           text( "I am so scared!!!",width/2,height/2);
           noStroke();
            rectMode(CENTER);
             fill(255);  
               rect(184,578,215,30); 
     left(130, 515,190,471,190,557, r, g, b, "Find other places"); 
      right(1175, 515,1115,471,1115,557,r,g,b, "Go back");

    }
    }else if(state=="market4"){
    imageMode(CORNER);
    image(img15,im,0);
          im=im-3;
          if(im<=-700){
            im=-700;        
    }

 
        if(currentTime-saveTime> time2 && currentTime-saveTime< time3 ) {
          fill(0, 102, 153);
            semitext(1280,720,0,0,0,a2,"Look! She looks like my mom!");
     }else if(currentTime-saveTime> time3 ) {
        semitext(1280,720,0,0,0,a2,"We need to follow her!");
         noStroke();
  rectMode(CENTER);
  fill(255);  
  rect(184,578,215,30);
  
      left(130, 515,190,471,190,557, r, g, b, "go to the other way"); 
    right(1175, 515,1115,471,1115,557,r,g,b,"Follow her");
    
     }
  //third
   }else if(state=="mom"){
    background(255);
    imageMode(CENTER);
    
        if(currentTime-saveTime> time1 && currentTime-saveTime< time2 ) {
          textSize(100);
          fill(200,50,50);
            text("There is my mom!!!!",width/2,height/2);
     }else if(currentTime-saveTime> time2 ) {

    image(img4,width/2,height/2+100,width/2+100,height*2/3);
    finaltext(1280,720,192,89,221,"I met mom!!! Thank you");
    println("congratulation!!");
        right(1175, 515,1115,471,1115,557,r,g,b, "Go back");
     }  
   //fourth   
  }else if (state=="lost"){
    background(255);
    imageMode(CENTER);
    image(img8,width/2,height*2/3-50);
    left(130, 515,190,471,190,557, r, g, b, "Go back"); 
    finaltext(1280,720,255,0,0,"I am lost..!!");
    println("I am lost..");


  }else if(state=="amuse"){
    imageMode(CORNER);
    background(255);
    image(img7,0,0,1280,720);
            if(currentTime-saveTime> time1 && currentTime-saveTime< time2 ) {
          fill(0, 102, 153);
            semitext(1280,720,0,0,0,a2,"I am not sure..");
     }else if(currentTime-saveTime> time2 ) {
        semitext(1280,720,0,0,0,a2," keep going?");
    left(130, 515,190,471,190,557, r, g, b, "Yes"); 
    right(1175, 515,1115,471,1115,557,r,g,b, "No");
     }

 
  }else if(state=="drunk"){
    background(255);
    imageMode(CENTER);
    image(img20,width/2,height/2+70,width/2+80,height*2/3+100); 
    if(currentTime-saveTime> time1 && currentTime-saveTime< time2 ) {
    fill(0,200,100);
    textSize(30);
    text("Hey..- are you thirsty?? ",width/2,height/5);
     }else if(currentTime-saveTime> time2 ) {
    fill(255,0,0);
    textSize(200);
    text("NO!!!!!!!!!",width/2,height/2);
    right(1175, 515,1115,471,1115,557,r,g,b, "Go back");
    }
      
    
  }else if (state=="book1"){
    background(255);
    imageMode(CORNER);
    image(img11,0,0,1280,720);
    
     if(currentTime-saveTime> time1 && currentTime-saveTime< time2 ) {
          fill(0, 102, 153);
            semitext(1280,720,0,0,0,a2,"My mom likes going to bookstore");
     }else if(currentTime-saveTime> time2 ) {
        semitext(1280,720,0,0,0,a2,"Do you think she is in there??");
         left(130, 515,190,471,190,557, r, g, b, "No"); 
          right(1175, 515,1115,471,1115,557,r,g,b, "Yes");

    }
    }else if (state=="book2"){
    background(255);
    imageMode(CORNER);
    image(img12,0,0,1280,720);
         if(currentTime-saveTime> time1 && currentTime-saveTime< time2 ) {
          fill(0, 102, 153);
            semitext(1280,720,0,0,0,a2,"Look!! there are three people");
     }else if(currentTime-saveTime> time2 ) {
        semitext(1280,720,0,0,0,a2,"we can ask them!");
        left(130, 515,190,471,190,557, r, g, b, "Go out"); 
    noStroke();
    fill(255);
    triangle(617,202,660,202,639,224);
     triangle(776,286,817,286,795,308);
      triangle(990,89,1032,89,1010,111);
    
     }
     
    }else if(state=="oldman"){
    imageMode(CENTER);
    background(255);
    image(img17,width/2,height/2);
   if(currentTime-saveTime> time1 && currentTime-saveTime< time2 ) {
        textAlign(CORNER);
    fill(0);
    textSize(30);
    text("Excuse me, do you know where my mom is?",300,800,400,1000);
     }else if(currentTime-saveTime> time2 && currentTime-saveTime< time3 ){
       textAlign(CORNER);
         fill(0);
    textSize(30);
    text("She has a dark color hair and wares a pink dress",300,800,400,1000);
     }else if (currentTime-saveTime> time3 && currentTime-saveTime< time4){
    fill(0,200,100);
    textSize(30);
    text("I don't know",1000,800,1100,1000);
    }else if (currentTime-saveTime> time4 ){
    fill(0,200,100);
    textSize(30);
    text("I am busy",1000,800,1100,1000);
    left(130, 515,190,471,190,557, r, g, b, "Go back"); 
    right(1175, 515,1115,471,1115,557,r,g,b, "Ask one more");

  }
  }else if(state=="angry"){
    imageMode(CENTER);
    background(255);
      if(currentTime-saveTime> time1 && currentTime-saveTime< time2 ) {
    fill(0);
    textSize(50);
    text("But..",width/2,height/2);
     }else if(currentTime-saveTime> time2 ){
       image(img19,width/2,height/2,700,700);
     textSize(70);
    fill(255,0,0);
    text("I do not know!!",width/2,height/6);
      right(1175, 515,1115,471,1115,557,r,g,b, "Go back");
      
  }
  }else if(state=="woman"){
    imageMode(CENTER);
    background(255);
    
     if(currentTime-saveTime> time1 && currentTime-saveTime< time2 ) {
       image(img16,width/2,height/2,500,500);
        textAlign(CORNER);
    fill(0);
    textSize(30);
    text("Excuse me, do you know where my mom is?",300,800,400,1000);
     }else if(currentTime-saveTime> time2 && currentTime-saveTime< time3 ){
       image(img16,width/2,height/2,500,500);
       textAlign(CORNER);
         fill(0);
    textSize(30);
    text("She has a dark color hair and wares a pink dress",300,800,400,1000);
     }else if (currentTime-saveTime> time3 && currentTime-saveTime< time4){
       image(img16,width/2,height/2,500,500);
      fill(0,200,100);
      textSize(30);
      text("Ummm...",1000,800,1100,1000);
      }else if (currentTime-saveTime> time4){
        image(img21,width/2,height/2,600,600);
         fill(0,200,100);
           textSize(30);
             text("I saw a woman who is looking for a child in the market",1000,800,300,1000);
      right(1175, 515,1115,471,1115,557,r,g,b, "Go back");

    }
    }else if(state=="boy"){
    imageMode(CENTER);
    background(255);
    image(img18,width/2,height/2,300,700);
      if(currentTime-saveTime> time1 && currentTime-saveTime< time2 ) {
        textAlign(CORNER);
    fill(0);
    textSize(30);
    text("Hi~, do you know where my mom is?",300,800,400,1000);
     }else if(currentTime-saveTime> time2 && currentTime-saveTime< time3 ){
       textAlign(CORNER);
         fill(0);
    textSize(30);
    text("She has a dark color hair and wares a pink dress",300,800,400,1000);
     }else if (currentTime-saveTime> time3 ){
      fill(0,200,100);
      textSize(30);
      text("Sorry..I lost my mom, too",1000,800,300,1000);
     right(1175, 515,1115,471,1115,557,r,g,b, "Go back");

     }
   
 }else if(state=="garden"){
    imageMode(CORNER);
    background(255);
    image(img13,0,0,1280,720);
    right(1175, 515,1115,471,1115,557,r,g,b, "Go back");
    semitext(1280,720,0,0,0,a2,"She does not like flower");


 
 }
    }
    

  



  
  
void finaltext(int w, int h, int r1, int g1, int b1,String shout){

    fill(r1,g1,b1);
    textSize(40);
    text(shout, w/2, h/5);
}

void semitext(int w, int h, int r1, int g1, int b1,String a2,String shout){

    println(a2);
        rectMode(CORNER);
    fill(255);
    strokeWeight(3);
    stroke(169,202,13);
    rect(350,height/5-50,575,85);
    fill(r1,g1,b1);
    textSize(30);
    text(shout, w/2, h/5);
}

void left(int x, int y,int x1, int y1,int x2, int y2, float r, float g, float b, String direction) {  
  noStroke();
  rectMode(CENTER);
  fill(255);  
  rect(x+55,y+63,120,30);
    
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
  rectMode(CENTER);
  fill(255);  
  rect(x-57,y+63,120,30);
  
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
      saveTime=currentTime;
      
      
  }else if (state=="start"){
   if(mouseX>=103&& mouseX<=360 && mouseY>=290 && mouseY<=410){
    state="book1";
          saveTime=currentTime;
   }else if(mouseX>=103&& mouseX<=360 && mouseY>=490 && mouseY<=610){
    state="amuse";
          saveTime=currentTime;
       }else if (mouseX>=955&& mouseX<=1180 && mouseY>=290 && mouseY<=410){
    state="market2";
          saveTime=currentTime;
        saveTime=currentTime;
     }else if (mouseX>=955&& mouseX<=1180 && mouseY>=490 && mouseY<=610){
    state="garden";




}
}else if(state=="market2"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
        im=0; 
        state="market4";
              saveTime=currentTime;
         }else if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
                  state="market3";
                        saveTime=currentTime;

}
}else if(state=="garden"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
         state="start";
               saveTime=currentTime;
                  
}
}else if(state=="market3"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
         state="market4";
               saveTime=currentTime;
         }else if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
                  state="lost";
                  
}
}else if(state=="market4"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
         state="darkmarket";
               saveTime=currentTime;
         }else if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
                  state="mom";
                  saveTime=currentTime;
                  
}
}else if(state=="darkmarket"){
      if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
           state="start";
           saveTime=currentTime;
         }else if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
               state="market2";
                   saveTime=currentTime;
                



}
}else if(state=="lost"){
      if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
       state="market2";
       saveTime=currentTime;
    
  
}
}else if (state=="mom"){
      if(mouseX>=1000 && mouseX<=1400 && mouseY>=300 && mouseY<=800){
         state="start";
         saveTime=currentTime;
    
    
    
      ////Daddy part    
}
}else if(state=="amuse"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
         state="start";
         saveTime=currentTime;
         }else if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
        state="drunk"; 
              saveTime=currentTime;
        
 
    
  
}
}else if (state=="drunk"){
      if(mouseX>=1000 && mouseX<=1400 && mouseY>=300 && mouseY<=800){
         state="start";
         saveTime=currentTime;
}
}else if(state=="book1"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
         state="book2";
               saveTime=currentTime;
         }else if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
          state="start";
         saveTime=currentTime;

}
}else if(state=="book2"){


      if(mouseX>=586 && mouseX<=714 && mouseY>=202 && mouseY<=481){
         state="oldman";
               saveTime=currentTime;
         }else if(mouseX>=727 && mouseX<=844 && mouseY>=286 && mouseY<=720){
          state="woman";
                saveTime=currentTime;
           }else if(mouseX>=947 && mouseX<=1063 && mouseY>=89 && mouseY<=393){
          state="boy";
                saveTime=currentTime;
          }else if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
          state="start";
          saveTime=currentTime;

         
}
}else if(state=="oldman"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
         state="angry";
               saveTime=currentTime;
         }else if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
          state="book2";
                saveTime=currentTime;
}
}else if(state=="angry"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
         state="book2";
               saveTime=currentTime;
}
}else if(state=="woman"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
         state="book2";
               saveTime=currentTime;
         }else if(mouseX>=108 && mouseX<=208 && mouseY>=447 && mouseY<=550){
          state="start";
          saveTime=currentTime;
}
}else if(state=="boy"){
      if(mouseX>=1095 && mouseX<=1195 && mouseY>=447 && mouseY<=550){
         state="book2";
               saveTime=currentTime;
      
      
      
         
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