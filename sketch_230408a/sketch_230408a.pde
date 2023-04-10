int[] positionX={200,250,300,350,400};
boolean[] keys = {false,false,false,false,false};
int keysHeight;
int[] colums;
int speed=2;
int nPuntos=20;
PVector[] puntos=new PVector[nPuntos];
int score=0;
int x=30;
int y=30;
Caida1 caida1;
Caida2 caida2;
Caida3 caida3;
Objeto objeto;
Objeto objeto1;
Objeto objeto2;
Objeto objeto3;
Objeto objeto4;
Objeto objeto5;
Objeto objeto6;
cara2 cara2;

void setup(){
  size(600,700);
  background(0);
  strokeWeight(3);
  rectMode(CENTER);
  keysHeight=height*5/6;
  fill(89,241,245);
  for (int i=0;i<nPuntos;i++){
    int randI=floor(random(5));
    puntos[i]=new PVector(positionX[randI],floor(random(1,30))*-40);
  }
   objeto=new Objeto(width*1/6,height*1/5);
   objeto1=new Objeto(width*1/6,height*2/5);
   objeto2=new Objeto(width*1/6,height*3/5);
   objeto3=new Objeto(width*1/6,height*4/5);
   objeto4=new Objeto(width*5/6,height*1/4);
   objeto5=new Objeto(width*5/6,height*2/4);
   objeto6=new Objeto(width*5/6,height*3/4);
  
}
void dibujarCirculo(int a) {
  //int a;
  //a=round(random(3));
  switch (a){
    case 1:
    caida1.mostrar();
    break;
    case 2:
    cara2.mostrar();
    break;  
    case 3:
    caida2.mostrar();
    break;    
  }
}
void draw(){
  background(0);
  stroke(255);
  for (int i=0;i<positionX.length;i++){
    line(positionX[i],0,positionX[i],height);
  }
  fill(#59F1F5);
  for(int i=0;i<puntos.length;i++){
    caida1 = new Caida1(puntos[i].x,puntos[i].y);
    caida2 = new Caida2(puntos[i].x,puntos[i].y);
    caida3 = new Caida3(puntos[i].x,puntos[i].y);
    cara2= new cara2(puntos[i].x,puntos[i].y);
    //ellipse(puntos[i].x,puntos[i].y,30,30);
    dibujarCirculo(3); //aqui va el parametro que cambia las figuras
    puntos[i].y +=speed;
    if(puntos[i].y>height+15){
      puntos[i].y=floor(random(1,30))*-40;
    }
  }
  for (int i=0;i<puntos.length;i++){
    for(int j=0;j<keys.length;j++){
      if(keys[j] && positionX[j]==puntos[i].x && puntos[i].y>keysHeight-30 && puntos[i].y < keysHeight+30){
        puntos[i].y=floor(random(1,30))*-40;
        score+=4;
      }
    }
    if(puntos[i].y > keysHeight + 50){
      score = 0;
    }
  }
  
 for(int i=0;i<keys.length;i++){
   if (keys[i]){
     fill(0);
   } else{
     fill(255);
   }
   rect(positionX[i],keysHeight,35,35);
   
 }
   // Draw the score rectangle
  fill(255);
  rect(width/2, keysHeight + 50, 80, 30);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Puntos: " + score, width/2, keysHeight + 50);
  // Dibujar el circulo
  objeto.mostrar();
  objeto.onda(random(1,150));
  objeto1.mostrar();
  objeto1.onda(random(1,150));
  objeto2.mostrar();
  objeto2.onda(random(1,150));
  objeto3.mostrar();
  objeto3.onda(random(1,150));
  objeto4.mostrar();
  objeto4.onda(random(1,150));
  objeto5.mostrar();
  objeto5.onda(random(1,150));
  objeto6.mostrar();
  objeto6.onda(random(1,150));
}


void keyPressed(){
  if (key=='q'){
    keys[0]=true;
  }
  if (key=='w'){
    keys[1]=true;
  }
  if (key=='e'){
    keys[2]=true;
  }
  if (key=='r'){
    keys[3]=true;
  }
  if (key=='t'){
    keys[4]=true;
  }
}
void keyReleased(){
  if (key=='q'){
    keys[0]=false;
  }
  if (key=='w'){
    keys[1]=false;
  }
  if (key=='e'){
    keys[2]=false;
  }
  if (key=='r'){
    keys[3]=false;
  }
  if (key=='t'){
    keys[4]=false;
  }
}
