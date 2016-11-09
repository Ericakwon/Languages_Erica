
class circle_{

float x;
float y;
float r;

circle_(float x1,float y1,float r1){
  x=x1;
  y=y1;
   r=r1;
}


boolean contains(float mx,float my){
  if(dist(mx,my,x,y)<r){
    return true;
  }else{
    return false;
  }
}  


void display(float mx, float my){
  if(contains(mx,my)){
    fill(27,32,251);
  }else{
    fill(100,100,100);
  }
  strokeWeight(1);
 ellipseMode(CENTER);
 ellipse(x,y,r,r);
 stroke(0);

}

void display2(float a,float b,float aa,float bb){
  
  ellipse(a,b,aa,bb);
}
}