/*
for loops y random en processing
Benjamín R. Moreno O.
UGTO
*/

int x,y,w,h,c,p;
size(400,400);
background(255);
noFill();
for (int i = 0; i<2000; i++){
  x = floor(random(400));
  y = floor(random(400));
  w = floor(random(80));
  h = floor(random(80));
  c = floor(random(255));
  p = floor(random(10));
  strokeWeight(p);
  stroke(255,c,c);
  rect(x,y,w,h);
}
