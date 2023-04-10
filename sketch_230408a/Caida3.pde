class Caida3 {
  
  float x;
  float y;
  Caida3(float x_, float y_){
    x=x_;
    y=y_;
  }

  void mostrar(){
    // Definir variables del mandala
    float radio = min(x, y, 15); // radio máximo de 15 píxeles
    int num_petalos = 8; // menos pétalos para una figura más compacta
    float centro_x = x;
    float centro_y = y;
    
    // Dibujar pétalos del mandala
    for (int i = 0; i < num_petalos; i++) {
      float angulo = radians(i * 360/num_petalos);
      float x1 = centro_x + radio * cos(angulo);
      float y1 = centro_y + radio * sin(angulo);
      float x2 = centro_x + radio * cos(angulo + radians(360/num_petalos));
      float y2 = centro_y + radio * sin(angulo + radians(360/num_petalos));
      float x3 = centro_x + radio * cos(angulo + radians(2 * 360/num_petalos));
      float y3 = centro_y + radio * sin(angulo + radians(2 * 360/num_petalos));
      //fill(255);
      //rect(x,y,30,30);
      fill(255, i * 255/num_petalos, 0);
      stroke(0);
      triangle(x1, y1, x2, y2, x3, y3);
    }
  }
}
