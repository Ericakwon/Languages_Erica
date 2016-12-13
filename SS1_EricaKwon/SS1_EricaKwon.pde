//Title : The colorful plates 
//Erica Kwon

void setup(){
  size (1080,720);
  
}
void draw(){
stroke (1000,1000,1000);
strokeWeight(2);
line (0,205,1080,685);
line ( 1080,555,0,605);

stroke (1000,1000,1000);
strokeWeight(2);
line (0,205,1080,685);
line ( 1080,555,0,605);

// left, up
noFill();
stroke (1000,1000,1032);
strokeWeight (4);
quad (4,4,200,0,305,400,0,500);

//left down
stroke (1000,1000,1000);
strokeWeight (3);
quad (0,500,305,400,800,720,0,720);


//start
background (255,209,209);
//size (1080,720);

stroke(1000,1000,1000);
triangle (453,0,1080,0,1080,300);

//largest one
strokeWeight(1);
fill (237,198,198);
ellipse (780,450,710,710);


noFill();
triangle (453,0,1080,0,1080,300);

line (453,300,1080,300);

//middle
fill(255,242,230);
ellipse (780,450,550,550);


//deep yellow circle
fill (254,235,180);
ellipse (300,200,320,320);

//yellow circle
fill (250,236,197);
ellipse (300,200,300,300);


//purple circle
fill (66,0,52);
ellipse (780,450,500,500);
// The Color Plates by Dawon Erica Kwon


strokeWeight (0);
fill (147,70,109);
rect(305,0,156,300);


strokeWeight (1);
noFill();
stroke (1000,1000,1000);
ellipse (300,200,300,300);


fill (222,168,168);
quad (0,0,305,300,305,605,0,605);
noFill ();
strokeWeight(9);
quad (5,605,305,605,800,715,5,715);
strokeWeight(2);
line (305,605,1080,300);

//deep yellow circle again
strokeWeight(5);
stroke (254,235,180);
ellipse (300,200,315,315);

//yellow circle stroke
strokeWeight (1);
stroke (1000,1000,1000);
noFill();
ellipse (300,200,300,300);


strokeWeight(1);
fill (75,0,37);
triangle (780,418,1080,300,1080,385);
noFill();
ellipse (780,450,500,500);
ellipse (780,450,550,550);
ellipse (780,450,720,720);
}