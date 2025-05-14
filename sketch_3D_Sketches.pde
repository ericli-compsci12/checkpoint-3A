//x: ddefault mode
//c: user control mode
//a: autonomous mode
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
  cube2();
  cube(width/2+200,height/2+200,0,#0000FF,30);
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
