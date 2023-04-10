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
  void onda(float amplitud){
    noStroke();
    //noFill();
    fill(#15EA3E);
    rectMode(CENTER);
    circle(x,y,amplitud);
  }
}
