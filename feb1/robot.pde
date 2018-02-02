// variables globales
//la posición de mi robot;
int x,y;
//la velocidad de movimiento
int v;
//el color de la cabeza
color cabeza = color(255);

//la rotación de los brazos;
float r;

void setup(){
  size(400,400);
  x = width/2;
  y = height/2;
  v = 4;
}


void draw(){
  //mouseX y mouseY almacenan la posición de mi mouse al momento;
  //x = mouseX;
  //y = mouseY;
  background(255);
  robot(x,y);
  controlesDelRobot();
  mouseSobreRobot();
}

/*
// esto es para eventos discretos
void keyPressed(){
  println(key);
  switch(key){
    //si presiono a el robot se mueve a la izquierda
    case 'a':
     x-=10;
    break;
    //si presiono s el robot se mueve abajo
    case 's':
      y+=10;
    break;
    //si presiono d el robot se mueve a la derecha
    case 'd':
      x += 10;
    break;
    //si presiono w el robot se mueve arriba;
    case 'w':
      y -= 10;
    break;
  }
}

*/

//esta función dibuja mi robot;
void robot(int xi, int yi){
  //abro la matriz donde voy a dibujar mi robot
  pushMatrix();
  translate(xi,yi);
  //dibujo la cabeza
  fill(cabeza);
  ellipse(0,-25,30,30);  
  //dibujo el cuerpo
  fill(0,0,255);
  rectMode(CENTER);
  rect(0,0,30,50);
  //dibujo las ruedas;
  fill(0,255,255);
  for(int i = 0; i<4; i++){
    ellipse(-12+i*8,27,8,8);
  } 
  //dibujo el brazo derecho;
  pushMatrix();
  translate(15,-20);
  rotate(-r);
  rectMode(CORNER);
  fill(0,0,255);
  rect(0,0,10,30);
  popMatrix();  
  //dibujo el brazo izquiero
  pushMatrix();
  translate(-15,-20);
  rotate(r);
  rectMode(CORNER);
  fill(0,0,255);
  rect(0,0,-10,30);
  popMatrix();
  //cierro la matriz;
  popMatrix();
}

//esta función me dice si el mouse está sobre el robot
void mouseSobreRobot(){
  //me fijo si el mouse está dentro del cuerpo del robot
  if( (mouseX> x -15) && (mouseX< x +15) && (mouseY> y -25) && (mouseY< y +25)){
    println("mouse sobre el robot");
    cabeza = color(255,0,0);
  }
  else{
    println("no robot");
    cabeza = color(255);
  }
  //si además de estár sobre el robot, presiono el botón del mouse
  if (mousePressed == true){
    //hago que los brazos roten
    r += 0.1;
  }
}

//esta función sirve para controlar al robot con el teclado
void controlesDelRobot(){
  //verifico si hay un keyPress
  if (keyPressed == true){
    println(key);
    switch(key){
      //si presiono a el robot se mueve a la izquierda
      case 'a':
         x -= v;
      break;
      //si presiono s el robot se mueve abajo
      case 's':
        y += v;
      break;
      //si presiono d el robot se mueve a la derecha
      case 'd':
        x += v;
      break;
      //si presiono w el robot se mueve arriba;
      case 'w':
          y -= v;
      break;
    }
  }
}
