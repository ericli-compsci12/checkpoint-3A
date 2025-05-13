float rotx,roty;
boolean ckey = false;
boolean akey = false;
float anx;
float anb;

void setup () {
  textureMode(NORMAL);
  size(800,800,P3D);
  if (!akey) {
   anx = 45;
   anb = 45;
  rotx = radians(anx);
  roty = radians(anb);
  }
}

void draw () {
  background(255);
  if (ckey) {
  translate(mouseX,mouseY,0); 
}
  else if (!ckey) {
  translate(width/2,height/2,0); 
}
  
  fill(255,0,0);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  stroke(0);
  strokeWeight(3);
  box(200,200,200);  //W(idth) H(eight) D(iameter)
  
  if (akey) {
   anx = anx + 5;
   anb = anb + 5;
  rotx = radians(anx);
  roty = radians(anb);
  }
}

void mouseDragged() { 
  if (!akey && (!ckey || ckey)) {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*-0.01;
  }
}

void keyPressed () {
  if (key == 'c' || key == 'C') ckey = true;
  if (key == 'X' || key == 'x') {
    ckey = false;
    akey = false;
  }
  if (key == 'a' || key == 'A') akey = true;
}
