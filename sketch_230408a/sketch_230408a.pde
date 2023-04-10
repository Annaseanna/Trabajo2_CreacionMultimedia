int[] positionX={50,100,150,200,250};
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

void setup(){
  size(300,700);
  background(0);
  strokeWeight(3);
  rectMode(CENTER);
  keysHeight=height*5/6;
  fill(89,241,245);
  for (int i=0;i<nPuntos;i++){
    int randI=floor(random(5));
    puntos[i]=new PVector(positionX[randI],floor(random(1,30))*-40);
  }
}
void dibujarCirculo(int a) {
  //int a;
  //a=round(random(3));
  switch (a){
    case 1:
    caida1.mostrar();
    break;
    case 2:
    caida2.mostrar();
    break;  
    case 3:
    caida3.mostrar();
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
    //ellipse(puntos[i].x,puntos[i].y,30,30);
    dibujarCirculo(1); //aqui va el parametro que cambia las figuras
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
