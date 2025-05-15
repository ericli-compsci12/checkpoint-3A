float rotx,roty;
void setup() {
  textureMode(NORMAL);
  size(800,800,P3D);
  rotx = radians(45);
  roty = radians(45);
}




void draw () {
  background(255);
  int y=40;
  while (y <= height) {
    int x=-100;
    while (x <= width) {
      x=x+180;
       cube(x,y,0,#0000FF,50);
    }
    y=y+180;
  }
  
  int y2=130;
  while (y2 <= height) {
    int x2=-20;
    while (x2 <= width) {
      x2=x2+180;
       cube(x2,y2,0,#0000FF,50);
    }
    y2=y2+180;
  }
  
  int _y=40;
  while (_y <= height) {
    int _x=-20;
    while (_x <= width) {
      _x=_x+180;
       sphere(_x,_y,0,#FF0000,30);
    }
    _y=_y+180;
  }
  
  int _y2=130;
  while (_y2 <= height) {
    int _x2=-100;
    while (_x2 <= width) {
      _x2=_x2+180;
       sphere(_x2,_y2,0,#FF0000,30);
    }
    _y2=_y2+180;
  }
  
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*0.01;
}

void cube (float x,float y,float z,color c,float size) { 
  pushMatrix();
  translate(x,y,z); 
  fill(c);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  stroke(0);
  strokeWeight(3);
  box(size);  //size length
  popMatrix();
}

void sphere (float x,float y,float z,color c,float size) {
  fill(c);
  stroke(0);
  strokeWeight(1);
  pushMatrix();
  translate(x,y,z); 
  rotateX(rotx);
  rotateY(roty);
  sphere(size);
  popMatrix();
}
