class Objeto{
  float x;
  float y;
  
  Objeto(float x_, float y_) {
    x = x_;
    y = y_;
  }
  void mostrar(){
    fill(255);
    circle(x,y,75);
  }
  void onda(float amplitud,color c){
    noStroke();
    //noFill();
    fill(c);
    rectMode(CENTER);
    circle(x,y,amplitud);
  }
}
