

class Caida2 {
  float x;
  float y;
  Caida2(float x_, float y_){
    x=x_;
    y=y_;
  }
  void mostrar() {
    // Dibuja los arcos del arcoiris
    strokeWeight(3);
    stroke(255, 0, 0);
    arc(x, y, 35, 35, radians(180), radians(360));
    stroke(75, 0, 130);
    arc(x, y, 30, 30, radians(180), radians(360));
    stroke(0, 0, 255);
    arc(x, y, 25, 25, radians(180), radians(360));
    stroke(0, 255, 0);
    arc(x, y, 20, 20, radians(180), radians(360));
    stroke(255, 255, 0);
    arc(x, y, 15, 15, radians(180), radians(360));
    stroke(255, 165, 0);
    arc(x, y, 10, 10, radians(180), radians(360));
    
    // Dibuja las nubes
    noStroke();
    fill(255);
    ellipse(x-15, y-23, 10, 10);
    ellipse(x-10, y-23, 10, 10);
    fill(#FFF81C);
    ellipse(x+15, y-23, 10, 10);
    stroke(#FFF81C);
    strokeWeight(2);
    for (int i = 0; i < 8; i++) {
      float angle = TWO_PI / 8 * i;
      float x1 = x+15 + cos(angle) * 3;
      float y1 = y-23 + sin(angle) * 3;
      float x2 = x+15 + cos(angle) * 8;
      float y2 = y-23 + sin(angle) * 8;
      line(x1, y1, x2, y2);
    }
  }
}
