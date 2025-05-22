PImage blockt;
PImage blocks;
PImage blockb;
float rotx,roty;

void setup () {
  size(800,800,P3D);
  blockt = loadImage("Grass_Block_Top_C.png");
  blocks = loadImage("Grass_Block_Side.png");
  blockb = loadImage("Dirt_(texture)_JE2_BE2.png");
  textureMode(NORMAL);
}


void draw () {
  background(0);
  pushMatrix();
  translate(width/2,height/2,0);
  scale(200);
  rotateX(rotx);
  rotateY(roty);
  noStroke();
  beginShape(QUADS);
  texture(blockb);
  //bottom
  //     x,y,z,tx,ty
  vertex(0,0,0,0,0);
  vertex(1,0,0,1,0);
  vertex(1,0,1,1,1);
  vertex(0,0,1,0,1);
  
  endShape();
  
  beginShape(QUADS);
  texture(blockt);
  
  //top
  vertex(0,-1,0,0,0);
  vertex(1,-1,0,1,0);
  vertex(1,-1,1,1,1);
  vertex(0,-1,1,0,1);
  
  endShape();
  
  beginShape(QUADS);
  texture(blocks);
  
  //front
  vertex(0,0,1,1,1);
  vertex(1,0,1,0,1);
  vertex(1,-1,1,0,0);
  vertex(0,-1,1,1,0);
  
  //back
  vertex(0,0,0,1,1);
  vertex(1,0,0,0,1);
  vertex(1,-1,0,0,0);
  vertex(0,-1,0,1,0);
 
  
  //left
  vertex(0,0,0,1,1);
  vertex(0,0,1,0,1);
  vertex(0,-1,1,0,0);
  vertex(0,-1,0,1,0);
 
  //right
  vertex(1,0,0,1,1);
  vertex(1,0,1,0,1);
  vertex(1,-1,1,0,0);
  vertex(1,-1,0,1,0);
  
  endShape();
  popMatrix();
}

void mouseDragged () {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*-0.01;
}
