int ii =0;
int li = 50;
int im = 10;
int x,y,w,h;
int ox=10;
int oy=10;
int ow=18;
int oh=20;
int ex=2;
int ey=0;
int ew=0;
int eh=0;
int ancla = 450;
String forloop;
void setup(){
  size(600,600);
}

void draw(){
  if  (im<1){
    im = 1;
  }
  background(255);
  fill(255,0,0);
  noStroke();
  for (int i = ii; i<li; i+=im){
    x = ox + i*ex;
    y = oy + i*ey;
    w = ow + i*ew;
    h = oh + i*eh;
    rect(x,y,w,h);
  }
  fill (0);
  forloop = "for (int i = " + ii+ "; i < " + li + "; i += " +im + ") {";
  text(forloop,20,ancla);
  text("x = "+ ox + " + i * " + ex,40,ancla+15);
  text("y = "+ oy + " + i * " + ey,40,ancla+30);
  text("w = "+ ow + " + i * " + ew,40,ancla+45);
  text("h = "+ oh + " + i * " + eh,40,ancla+60);
  text ("rect(x,y,w,h);",40,ancla+75);
  text ("}",20,ancla+90);
}

void keyPressed(){
  if (key == 'q'){
    ii--;
  }
  if (key == 'w'){
    ii++;
  }
  if (key == 'a'){
    li--;
  }
  if (key == 's'){
    li++;
  }
  if (key == 'z'){
    im--;
  }
  if (key == 'x'){
    im++;
  }
  
  if (key == '3'){
    ox--;
  }
  if (key == '4'){
    ox++;
  }
  if (key == 'e'){
    oy--;
  }
  if (key == 'r'){
    oy++;
  }
  
  if (key == 'd'){
    ow--;
  }
  if (key == 'f'){
    ow++;
  }
  if (key == 'c'){
    oh--;
  }
  if (key == 'v'){
    oh++;
  }
  if (key == '5'){
    ex--;
  }
  if (key == '6'){
    ex++;
  }
  if (key == 't'){
    ey--;
  }
  if (key == 'y'){
    ey++;
  }
  if (key == 'g'){
    ew--;
  }
  if (key == 'h'){
    ew++;
  }
  if (key == 'b'){
    eh--;
  }
  if (key == 'n'){
    eh++;
  }
}
