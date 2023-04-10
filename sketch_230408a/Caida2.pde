class Caida2 {
  float x;
  float y;
  Caida2(float x_, float y_){
    x=x_;
    y=y_;
  }
  void mostrar() {

  // Cuerpo
  noStroke();
  fill(255, 221, 202); // Color piel
  ellipse(x/2,y/2, 10, 10);

  // Vestido
  fill(255, 0, 127); // Color rosa
  rect(x/2 - 5, y/2 + 3, 10, 8, 2); // Cuerpo del vestido
  rect(x/2 - 7, y/2 + 3, 4, 8, 2); // Manga izquierda
  rect(x/2 + 3, y/2 + 3, 4, 8, 2); // Manga derecha

  // Cabeza
  fill(255, 221, 202); // Color piel
  ellipse(x/2, y/2 - 7, 5, 5);

  // Ojos
  fill(0); // Color negro
  ellipse(x/2 - 2, y/2 - 7, 2, 2); // Ojo izquierdo
  ellipse(x/2 + 2, y/2 - 7, 2, 2); // Ojo derecho

  // Pestañas
  stroke(0); // Color negro
  strokeWeight(1);
  line(x/2 - 3, y/2 - 7, x/2 - 2, y/2 - 8); // Pestaña izquierda
  line(x/2 + 3, y/2 - 7, x/2 + 2, y/2 - 8); // Pestaña derecha

  // Boca
  noFill();
  stroke(0); // Color negro
  strokeWeight(1);
  arc(x/2, y/2 - 4, 4, 3, 0, PI); // Boca sonriente

  // Brazos
  stroke(#15E5EA); // Color rosa
  strokeWeight(2);
  line(x/2 - 7, y/2, x/2 - 10, y/2 + 6); // Brazo izquierdo
  line(x/2 + 7, y/2, x/2 + 10, y/2 + 6); // Brazo derecho
  }
}
