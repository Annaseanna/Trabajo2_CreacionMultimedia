class Caida4 {
  float x;
  float y;
  
  Caida4(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  void mostrar() {
    noStroke();
    fill(#E0995F);
    ellipse(x, y, 35, 35);
    
    fill(#04CB23);
    stroke(2);
    square(x-13, y - 10, 10); 
    square(x+3, y - 10, 10); 
    rect(x-3,y-8,6,4);
    
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(10);
    text("MOR",x,y+7);
  }
}
