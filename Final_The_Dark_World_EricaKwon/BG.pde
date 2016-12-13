class BG {

  float x;
  float y; 
  float bright = -1; 
  float dir; 
  float size;
  
  void shine() {

    if(bright < 0) {
      x = random(width);
      y = random(height);
      size = random(2);
      dir = random(1, 3);
      bright = 0;
    }
  
    fill(bright);
    ellipse(x, y, size, size);

    bright = bright + dir;

    if(bright > 255) {
      bright = 255;
      dir = random(-1, -3);
    }
  }
}