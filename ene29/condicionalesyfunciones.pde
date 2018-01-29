// declarar variables universales
float x,y,dx,dr;

//es la función que se llama al inicio de mi programa y solo se ejecuta una vez
void setup(){
  size(400,400);
  background(255);
  //indica la velocidad de mi sketch
  //frameRate(60);
  x = 0;
  y = height/2;
  dx = 2.5;
}


void draw(){
  background(255);
  // cambio la posición de mi circulo
  x+=dx;
  dr +=0.01;
  noStroke();
  //evaluo su posición y esablezco el color
  // si el circulo está de la mitad hacia la izquierda va a ser rojo
  if( x < 200 ){
     fill(255,0,0);    
  }
  //si no va a ser azul
  else{
    fill(0,0,255);
  } 
  //lo vou a detener en la orilla derecha
  if (x>400){
    println("DETENTE!!!");
    //lo detenie
    //dx = 0;
    //rebota
    dx = -2.5;
  }
  if(x<0){
    dx = 2.5;
  }
  particula(x,y);
  //println(frameRate);
}

//especifico mi propia función.
void particula (float xi, float yi){
  for (int i = 100; i > 0; i-=10){
    fill(255,255 -i*3,255 -i*3);
    stroke(0);
    //modifica el comportamiento de la función rect
    rectMode(CENTER);
    
    // declaro una matriz
    pushMatrix();
    //realizo las transformaciones lineales
    translate(xi,yi);
    rotate(i/100f +dr);
    //dibujo mi geometría
    rect(0,0,i,i);
    //cierro mi matriz
    popMatrix();
  }
}
