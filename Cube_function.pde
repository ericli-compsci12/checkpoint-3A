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

void cube2 () {
  pushMatrix();
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
  popMatrix();
}
