class Caida3 {
  float x;
  float y;
  Caida3(float x_, float y_){
    x=x_;
    y=y_;
  }
  
void mostrar() {
  stroke(0, 0, 255);
  fill(0, 0, 255);
  arc(x-7.5, y, 15, 20, PI,TWO_PI);
  arc(x+8, y, 15, 20, PI, TWO_PI);
  //triangle(x,y+15,x+15,y+30,x+30,y+15);
  triangle(x-13.5,y,x,y+15,x+14,y);
  }
}
