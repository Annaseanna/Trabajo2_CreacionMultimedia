class cara2{
   float x;
   float y;
  
  cara2(float x_, float y_) {
    x = x_;
    y = y_;
  }
void mostrar() {
  fill(255, 255, 0); // amarillo
  stroke(0); // negro
  strokeWeight(1); // reduce el grosor del borde a 1 píxel
  ellipse(x, y, 30, 30); // reduce el tamaño de la cabeza a 30x30
  fill(0); // negro
  ellipse(x - 8, y- 5, 6, 6); // reduce el tamaño de los ojos a 6x6
  ellipse(x + 8, y - 5, 6, 6);
  fill(255); // blanco
  noFill();
  strokeWeight(2); // reduce el grosor del borde de la sonrisa a 2 píxeles
  arc(x, y + 1, 24, 15, 0, PI); // reduce el tamaño de la sonrisa a 24x15
}
}
