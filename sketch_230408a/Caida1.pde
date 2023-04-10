class Caida1 {
  float x;
  float y;
  
  Caida1(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  void mostrar() {
    noStroke();
    fill(255, 0, 0);
    ellipse(x, y, 20, 20);
    
    fill(0);
    ellipse(x - 4, y - 2, 4, 4); 
    ellipse(x + 4, y - 2, 4, 4); 
    
    stroke(0);
    strokeWeight(1);
    noFill();
    arc(x, y + 4, 12, 8, 0, PI);
    
    stroke(0);
    strokeWeight(2);
    line(x - 6, y - 6, x - 2, y - 4);
    line(x + 2, y - 4, x + 6, y - 6);
  }
}
