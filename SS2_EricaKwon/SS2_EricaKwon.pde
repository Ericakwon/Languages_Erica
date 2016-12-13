//Title : winter is coming
//Erica Kwon


float r;
float g;
float b;
float a;
float X;
float Y;
float s;
float move;
float grow;
float number;
float inc;




void setup() {
  size(800, 800);
}


void draw() {


number= number+1.2;
  move=move+0.9;
  grow=grow+0.5;
  background(255); 

  ellipseMode(CENTER);


  
 
  ellipse(move, 0, 50, 50);
  ellipse(move, 100, 50, 50);
  ellipse(move, 200, 50, 50);
  ellipse(move, 300, 50, 50);
  ellipse(move, 400, 50, 50);
  ellipse(move, 500, 50, 50);
  ellipse(move, 600, 50, 50);
  ellipse(move, 700, 50, 50);
  ellipse(move, 800, 50, 50);


  strokeWeight(3);
  stroke(5);
  fill(255, 234, 115);
  rect(move+300, 50, 50, 50);
  rect(move+100, 150, 50, 50);
  rect(move+100, 250, 50, 50);
  rect(move+300, 350, 50, 50);
  rect(move+100, 450, 50, 50);
  rect(move+100, 550, 50, 50);
  rect(move+300, 650, 50, 50);
  rect(move+100, 750, 50, 50);
  rect(move+100, 850, 50, 50);

  r=random(255);
  g=random(255);
  b=random(255);
  a=random(255);
  fill(r, g, b, a);
  strokeWeight(2);
  ellipse(154, grow-200, 350, 350);
  ellipse(575, grow+200, 350, 350);
  ellipse(grow, 577, 350, 350);


  strokeWeight(0);
  stroke(0);
  fill(241, 58, 79);
  ellipse(move-400, 50, 20, 20);
  ellipse(move-400, 350, 20, 20);
  ellipse(move-400, 650, 20, 20);

  strokeWeight(1);
  stroke(0);
  fill(100, 110, 180);
  ellipse(inc-900, 450, 80, 80);
  ellipse(move-600, 750, 80, 80);




  strokeWeight(1);
  stroke(1);
  fill(255, 234, 115);
  rect(138, inc+-1002, 10, 10);
  rect(238, inc +-982, 10, 10);
  rect(100, inc +-1025, 10, 10);
  rect(760, inc +-1155, 10, 10);
  rect(660, inc +-1305, 10, 10);
  rect(560, inc +-1055, 10, 10);
  rect(520, inc +-1275, 10, 10);
  rect(160, inc +-1145, 10, 10);
  rect(640, inc +-1159, 10, 10);
  rect(340, inc+-1056, 10, 10);
  rect(270, inc+-1278, 10, 10);
  rect(290, inc+-1112, 10, 10);
  
    strokeWeight(1);
    fill(255, 234, 115);
  rect(138, inc+-2002, 10, 10);
  rect(238, inc +-382, 10, 10);
  rect(100, inc +-3025, 10, 10);
  rect(760, inc +-3155, 10, 10);
  rect(660, inc +-3305, 10, 10);
  rect(560, inc +-3055, 10, 10);
  rect(520, inc +-3275, 10, 10);
  rect(160, inc +-2145, 10, 10);
  rect(640, inc +-3159, 10, 10);
  rect(340, inc+-2056, 10, 10);
  rect(270, inc+-2278, 10, 10);
  rect(290, inc+-2112, 10, 10);

  if (mousePressed==true) {
    fill(r, 100, b, a);
    
  }else{
    fill(255);
    noStroke();
    noFill();
  }
  strokeWeight(2);
  ellipse(move, 0, 50, 50);
  ellipse(move, 100, 50, 50);
  ellipse(move, 200, 50, 50);
  ellipse(move, 300, 50, 50);
  ellipse(move, 400, 50, 50);
  ellipse(move, 500, 50, 50);
  ellipse(move, 600, 50, 50);
  ellipse(move, 700, 50, 50);
  ellipse(move, 800, 50, 50);
 
  ellipse(move-600, 100, 30, 30);
  ellipse(move-600, 200, 30, 30);
  ellipse(move-600, 400, 30, 30);
  ellipse(move-600, 500, 30, 30);
  ellipse(move-600, 700, 30, 30);
  ellipse(move-600, 800, 30, 30);
  
  strokeWeight(0);
  frameRate(60);
  ellipse(move-1100, 100, 250, 250);
  ellipse(move-1100, 400, 250, 250);
  ellipse(move-1100, 700, 250, 250);
  }

  void keyPressed() {
    println("winter is coming!!!!");
  }