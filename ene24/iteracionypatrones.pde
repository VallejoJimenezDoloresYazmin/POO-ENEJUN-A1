/*
for loops anidados en Processing
Benjamín R. Moreno O.
UGTO
*/

int x,y,w,h,c,p;
size(400,400);
background(255);
noStroke();
for (int i = 0; i<20; i++){
  for (int j= 0; j<20; j++){
    fill(random(255),random(255),random(255));
    rect(i*20,j*20,20,20);
  }
}
