class Mandala {
  float x;
  float y;
  
  Mandala(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
color color1= color(255, 225, 93);
color color2= color(244, 157, 26);
color color3= color(220, 53, 53);
color color4= color(176, 30, 104);
color color5= color(255, 245, 228);
color color6= color(255, 196, 196);
color color7= color(238, 105, 131);
color color8= color(133, 14, 53);
color color9= color(59, 154, 225);
color color10= color(49, 32, 224);
color color11= color(240, 234, 190);

color[] colors  = {  
  color1, color2, color3, color4, color5, color6, color7, color8, color9, color10, color11
};

void figuraMayor(){
  int a=int(random(1,3));
  int b=int(random(1,11));
  switch(a){  
        case 1:
          fill(colors[b]);
          noStroke();
          square(x-40,y-40,80);
          break;
        case 2:
          fill(colors[b]);
          noStroke();
          circle(x,y,80);
          break;
        case 3:
          fill(colors[b]);
          noStroke();
          quad(x,y-40,x+40,y,x,y+40,x-40,y);
        break;
      }
   }
 void figuraMedio(){
  int a=int(random(1,3));
  int b=int(random(1,11));
  switch(a){  
        case 1:
          fill(colors[b]);
          noStroke();
          square(x-30,y-30,60);
          break;
        case 2:
          fill(colors[b]);
          noStroke();
          circle(x,y,60);
          break;
        case 3:
          fill(colors[b]);
          noStroke();
          quad(x,y-30,x+30,y,x,y+30,x-30,y);
        break;
      }
   }

 void figuraMedio2(){
  int a=int(random(1,3));
  int b=int(random(1,11));
  switch(a){  
        case 1:
          fill(colors[b]);
          noStroke();
          square(x-20,y-20,40);
          break;
        case 2:
          fill(colors[b]);
          noStroke();
          circle(x,y,40);
          break;
        case 3:
          fill(colors[b]);
          noStroke();
          quad(x,y-20,x+20,y,x,y+20,x-20,y);
        break;
      }
   }
  
  void figuraPeque(){
  int a=int(random(1,3));
  int b=int(random(1,11));
  switch(a){  
        case 1:
          fill(colors[b]);
          noStroke();
          square(x-10,y-10,20);
          break;
        case 2:
          fill(colors[b]);
          noStroke();
          circle(x,y,20);
          break;
        case 3:
          fill(colors[b]);
          noStroke();
          quad(x,y-10,x+10,y,x,y+10,x-10,y);
        break;
      }
   }
}
