//importamos las librerias necesarias para conectar a pure data
import netP5.*;
import oscP5.*;
//hacemos un arreglo de enteros con las posiciones de los cuadrados del guitarhero
int[] positionX={200,250,300,350,400};
//hacemos un arreglo de datos boleeanos que representan el estado de cada uno de los cuadrados
boolean[] keys = {false,false,false,false,false};
//Valor de la altura de los cuadrados
int keysHeight;
int[] colums;
//Velocidad en que caen las figuras
int speed=2;
//Numero de figuras que caen
int nPuntos=20;
//arreglo de vectores con cordenadas x y y de cada punto
PVector[] puntos=new PVector[nPuntos];
//Puntaje asociado a la cantidad de objetos presionados
int score=0;
//Numeros asignados a la longitud por 
int x=30;
int y=30;
float p1;
float h1;
float b1;
float ba1;
float m1;
int instrumento=0;

Caida1 caida1;
Caida2 caida2;
Caida3 caida3;
Caida4 caida4;
Objeto objeto;
Objeto objeto1;
Objeto objeto2;
Objeto objeto3;
Objeto objeto4;
Objeto objeto5;
Objeto objeto6;
Objeto objeto7;
/*Mandala mandala;
Mandala mandala1;
Mandala mandala2;
Mandala mandala3;
Mandala mandala4;
Mandala mandala5;
Mandala mandala6;*/
cara2 cara2;
OscP5 oscCHEAP;
OscP5 oscREPTILIA;
OscP5 oscMANEATER;
OscP5 oscmsjC;
OscP5 oscmsjR;
OscP5 oscmsjM;
NetAddress myRemoteLocationC;
NetAddress myRemoteLocationR;
NetAddress myRemoteLocationM;
void setup(){
  //se crea el objeto de conexion con su numero de conexion
  oscCHEAP = new OscP5(this, 11111);
  oscREPTILIA = new OscP5(this, 11112);
  oscMANEATER = new OscP5(this, 11113);
  oscmsjC = new OscP5(this,12000);
  oscmsjR = new OscP5(this,12002);
  oscmsjM = new OscP5(this,12004);
  myRemoteLocationC = new NetAddress("192.168.56.1",12001);
  myRemoteLocationR = new NetAddress("192.168.56.1",12003);
  myRemoteLocationM = new NetAddress("192.168.56.1",12005);
  
  //leerdatos1 es la funcion para sacar los mensajes de la ventana1 
  //oscPIANO.plug(this, "leerDatos1", "/datos1");
  //Tamaño de la pantalla
  size(600,700);
  //Fondo negro
  background(0);
  //Grosor de las lineas
  strokeWeight(3);
  //Centrar las figuras
  rectMode(CENTER);
  //Ubicar los cuadros del guitarhero en 5/6 de la pantalla
  keysHeight=height*5/6;
  for (int i=0;i<nPuntos;i++){
    int randI=floor(random(5));
    puntos[i]=new PVector(positionX[randI],floor(random(1,30))*-40);
  }
   objeto=new Objeto(width*1/6,height*1/5);
   objeto1=new Objeto(width*1/6,height*2/5);
   objeto2=new Objeto(width*1/6,height*3/5);
   objeto3=new Objeto(width*1/6,height*4/5);
   objeto4=new Objeto(width*5/6,height*1/5);
   objeto5=new Objeto(width*5/6,height*2/5);
   objeto6=new Objeto(width*5/6,height*3/5);
   objeto7=new Objeto(width*5/6,height*4/5);
   
   /*mandala=new Mandala(width*1/6,height*1/5);
   mandala1=new Mandala(width*1/6,height*2/5);
   mandala2=new Mandala(width*1/6,height*3/5);
   mandala3=new Mandala(width*1/6,height*4/5);
   mandala4=new Mandala(width*5/6,height*1/4);
   mandala5=new Mandala(width*5/6,height*2/4);
   mandala6=new Mandala(width*5/6,height*3/4);*/
  
}

void oscEvent(OscMessage oscMessage){
  //ACA SE MIRA EL NOMBRE DEL DATO QUE SE ESTA PASANDO, EL DATO SE PASA COMO UN ARRAY PERO COMO SE PASA SOLAMENTE UN NUMERO PUES ES POSICION 0
  if(oscMessage.checkAddrPattern("/P1")){
    instrumento=1;
    p1 =oscMessage.get(0).floatValue();
    //p1 = map(oscMessage.get(0).floatValue(), 76, 85, 75, 100);
    //println(" addrpattern: "+oscMessage.addrPattern());
    //println(p1);
  }
   else if(oscMessage.checkAddrPattern("/H1")){
    instrumento=2;
    h1 = oscMessage.get(0).floatValue();
   // println(" addrpattern: "+oscMessage.addrPattern());
    //println(p4);
  }

   else if(oscMessage.checkAddrPattern("/B1")){
    instrumento=3;
    b1 = oscMessage.get(0).floatValue();
    //println(" addrpattern: "+oscMessage.addrPattern());
    //println("bi");
  }
   else if(oscMessage.checkAddrPattern("/BA1")){
    instrumento=4;
    ba1 = oscMessage.get(0).floatValue();
    //println(" addrpattern: "+oscMessage.addrPattern());
    //println(p4);
  }
   else if(oscMessage.checkAddrPattern("/M1")){
    instrumento=5;
     m1 = oscMessage.get(0).floatValue();
    //println(" addrpattern: "+oscMessage.addrPattern());
    //println(p4);
  }
}

void dibujarCirculo() {
  switch (instrumento){
    case 1:
    caida1.mostrar();
    break;
    case 2:
    cara2.mostrar();
    break;  
    case 3:
    caida2.mostrar();
    break;    
    case 4:
    caida3.mostrar();
    break; 
    case 5:
    caida4.mostrar();
    break;     
  }
}

int xxx = 5;
int abc1 = xxx;
int abc2 = xxx;
int abc3 = xxx;
int abc4 = xxx;
int abc5 = xxx;
int abc6 = xxx;
int abc7 = xxx;
int abc8 = xxx;

void enviar(int e){
  OscMessage myMsj = new OscMessage("/score");
  myMsj.add(e);
  oscmsjC.send(myMsj,myRemoteLocationC);
  oscmsjR.send(myMsj,myRemoteLocationR);
  oscmsjM.send(myMsj,myRemoteLocationM);
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
    caida4 = new Caida4(puntos[i].x,puntos[i].y);
    cara2= new cara2(puntos[i].x,puntos[i].y);
    //ellipse(puntos[i].x,puntos[i].y,30,30);
    dibujarCirculo(); //aqui va el parametro que cambia las figuras
    puntos[i].y +=speed;
    if(puntos[i].y>height+15){
      puntos[i].y=floor(random(1,30))*-40;
    }
  }
  for (int i=0;i<puntos.length;i++){
    for(int j=0;j<keys.length;j++){
      if(keys[j] && positionX[j]==puntos[i].x && puntos[i].y>keysHeight-30 && puntos[i].y < keysHeight+30){
        puntos[i].y=floor(random(1,30))*-40;
        score+=2;
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
  //objeto.mostrar(); //circulo bombo
  if (b1!=0){
    abc1--;
    //mandala.figuraMayor(80);
      objeto.onda(60 + abc1*20,#1C62EA);
      if(abc1 == 0){
        b1=0;
        abc1=xxx;
      }
      
  }
  //objeto1.mostrar(); //circulo hi-hat
  if (h1!=0){
    abc2--;
    //mandala1.figuraMayor(80);
      objeto1.onda(60 + abc2*20,#48E335);
      if(abc2 == 0){
        h1=0;
        abc2=xxx;
      }
  }
  //objeto2.mostrar(); //circulo B
  if (p1==83 || p1==71 || m1 ==83 || ba1==47 || m1==71){
    abc3--;
    //mandala2.figuraMayor(80);
      objeto2.onda(60 + abc3*20,#35E3E1);
      if(abc3 == 0){
        p1=0;
        m1=0;
        ba1=0;
        abc3=xxx;
      }
  }
  //objeto3.mostrar(); //circulo D
  if (p1==74 || ba1==38 || m1==74){
    abc4--;
    //mandala3.figuraMayor(80);
      objeto3.onda(60 + abc4*20,#D8F231);
      if(abc4 == 0){
        m1=0;
        p1=0;
        ba1=0;
        abc4=xxx;
      }
  }
  //objeto4.mostrar(); //circulo E
  if (p1==76 || ba1==40 || ba1==52 || m1==76){
    abc5--;
    //mandala4.figuraMayor(80);
      objeto4.onda(60 + abc5*20,#F23175);
      if(abc5 == 0){
        m1=0;
        p1=0;
        ba1=0;
        abc5=xxx;
      }
  }
 // objeto5.mostrar(); //G
 if (p1==80 || ba1==44 || m1==80 || m1==67 || p1==67 || ba1==43){
   abc6--;
   //mandala5.figuraMayor(80);
      objeto5.onda(60 + abc6*20,#5E50E8);
      if(abc6 == 0){
        p1=0;
        ba1=0;
        m1=0;
        abc6=xxx;
      }
  }
  //objeto6.mostrar(); //A
  if (p1==69 || ba1==45||m1==81 || m1==69){
    abc7--;
    //mandala6.figuraMayor(80);
    objeto6.onda(60 + abc7*20,#F01619);
    if(abc7 == 0){
      p1=0;
      m1=0;
      ba1=0;
      abc7=xxx;
    }
  }
    //objeto6.mostrar(); //F#
  if (p1==78||ba1==42 || p1==73 ||ba1==49 || m1==73 || m1==78){
    abc8--;
    //mandala6.figuraMayor(80);
    objeto7.onda(60 + abc8*20,#F09C16);
    if(abc8 == 0){
      m1=0;
      p1=0;
      ba1=0;
      abc8=xxx;
    }
  }
  enviar(score);
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
