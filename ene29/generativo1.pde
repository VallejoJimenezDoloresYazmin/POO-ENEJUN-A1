/*
ejemplos dibujo procedimental y saveFrame();
Benjamín R. Moreno O.
UGTO
*/

size(800,600);
background(0,20,40);
for (int i = 200; i<600; i++){
  float x = i+random(-200,200);
  float y = random(100,500);
  fill(255,random(200),random(20),random(-255,255));
  stroke(200+random(55),random(200),random(20),random(-255,255)); 
  beginShape();
  vertex(i,300);
  vertex(x+random(-30,30),y+random(-30,30));
  vertex(x+random(-30,30),y+random(-30,30));
  vertex(i+random(40), 300+random(-10,10));
  endShape();
}
saveFrame();
