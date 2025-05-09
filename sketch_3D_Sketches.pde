float rotx,roty;
void setup () {
  size(800,800,P3D);
  rotx = radians(45);
  roty = radians(45);
}

void draw () {
  translate(width/2,height/2,0);
  noFill();
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  box(100,100,100);  //W(idth) H(eight) D(iameter)
}

void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY);
  
}
