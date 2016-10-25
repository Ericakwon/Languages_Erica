Snow[] snows= new Snow[200];
Line[] lines= new Line[50];
Rect[] rects= new Rect[30];
Ball[] balls= new Ball[30];


void setup(){
  
  size(600,600);
  
    for(int i=0;i<snows.length;i++){
      snows[i]= new Snow(int(random(width)), int (random(height)),10);
    }
      
       for(int i=0;i<lines.length;i++){
         lines[i]= new Line(); 
  }
          for(int i=0;i<rects.length;i++){
           rects[i]= new Rect(); 
  
}
            for(int i=0;i<balls.length;i++){
             balls[i]= new Ball(int(random(width)), int (random(height)),20); 
  }
}


void draw(){
  background(0);
  fill(115,236,247);
  rect(0,0,width/2,height/2);
    fill(203,237,46);
  rect(width/2,0,600,height/2);
    fill(115,31,128);
  rect(0,height/2,width/2,600);
    fill(112,95,217);
  rect(width/2,height/2,600,600);
  
  if(mouseX>=0&& mouseX<=width/2 && mouseY>=0 && mouseY<=height/2){
  for(int i=0;i<snows.length;i++){
    snows[i].display();             //snow images
    snows[i].fall();                //falling snow effect
  }
  } else if(mouseX>=0 && mouseX<=300 && mouseY>=height/2 && mouseY<=height){
    for(int i=0;i<lines.length;i++){
    lines[i].move();                //line moving speed 
    lines[i].display();             //line images
    lines[i].more(mouseX,mouseY);   //checking the point of mouse
  }
  }else if(mouseX>=300&& mouseX<=width && mouseY>=0 && mouseY<=height/2){
    for(int i=0;i<rects.length;i++){
      rects[i].display();           //rect images
      rects[i].move();              //moving rects using states
    }
  } else if(mouseX>=300&& mouseX<=width && mouseY>=300 && mouseY<=height){
      for(int i=0;i<balls.length;i++){
         balls[i].display();        //ball images
          balls[i].move();          //ball speed
           balls[i].gravity();      //bounce back up

      }
  }
}