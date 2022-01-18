float rotX, rotY;
PImage diamond, furnacetop, furnaceside, furnaceface, observerface, observerbottom, observerside, observertop, observerback;

void setup() {
  size(800, 800, P3D);
  diamond  = loadImage("diamond.png");
  furnacetop = loadImage("furnacetop.png");
  furnaceside = loadImage("furnaceside.png");
  furnaceface = loadImage("furnaceface.png");
  observerface = loadImage("observerface.png");
  observerbottom = loadImage("observerbottom.png");
  observerside = loadImage("observerside.png");
  observertop = loadImage("observertop.png");
  observerback = loadImage("observerback.png");
  textureMode(NORMAL);
}

void draw() {
  background(0);
  textureCube(width/2, height/2, 0, diamond, 100);
  textureCube(width/4, height/4, 0, furnaceside, furnacetop, furnaceface, 100);
  textureCube(width*3/4, height*3/4, 0, observerside, observertop, observerbottom, observerface, observerback, 100);
}

void textureCube(float x, float y, float z, PImage texture, float size) {
  pushMatrix();

  translate(x, y, z);
  scale(size);
  rotateX(rotX);
  rotateY(rotY);

  noStroke();

  beginShape(QUADS);
  texture(texture);

  //top
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //left
  vertex(0, 0, 0, 1, 0);
  vertex(0, 1, 0, 1, 1);
  vertex(0, 1, 1, 0, 1);
  vertex(0, 0, 1, 0, 0);
  //right
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(1, 1, 1, 0, 1);
  vertex(1, 0, 1, 0, 0);
  endShape();

  popMatrix();
}

void textureCube(float x, float y, float z, PImage sidetexture, PImage topbottomtexture, PImage facetexture, float size) {
  pushMatrix();

  translate(x, y, z);
  scale(size);
  rotateX(rotX);
  rotateY(rotY);

  noStroke();



  beginShape(QUADS);
  texture(topbottomtexture);

  //top
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);

  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();


  beginShape(QUADS);
  texture(facetexture);

  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();



  beginShape(QUADS);
  texture(sidetexture);
  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //left
  vertex(0, 0, 0, 1, 0);
  vertex(0, 1, 0, 1, 1);
  vertex(0, 1, 1, 0, 1);
  vertex(0, 0, 1, 0, 0);
  //right
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(1, 1, 1, 0, 1);
  vertex(1, 0, 1, 0, 0);
  endShape();

  popMatrix();
}

void textureCube(float x, float y, float z, PImage sidetexture, PImage toptexture, PImage bottomtexture, PImage facetexture, PImage backtexture, float size) {
  pushMatrix();

  translate(x, y, z);
  scale(size);
  rotateX(rotX);
  rotateY(rotY);

  noStroke();



  beginShape(QUADS);
  texture(toptexture);

  //top
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);

  endShape();



  beginShape(QUADS);
  texture(bottomtexture);
  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();


  beginShape(QUADS);
  texture(facetexture);

  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);

  endShape();



  beginShape(QUADS);
  texture(backtexture);

  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);

  endShape();



  beginShape(QUADS);
  texture(sidetexture);

  //left
  vertex(0, 0, 0, 1, 0);
  vertex(0, 1, 0, 1, 1);
  vertex(0, 1, 1, 0, 1);
  vertex(0, 0, 1, 0, 0);
  //right
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(1, 1, 1, 0, 1);
  vertex(1, 0, 1, 0, 0);
  endShape();

  popMatrix();
}

void mouseDragged() {
  rotX = rotX + (pmouseY - mouseY)*0.01;
  rotY = rotY + (pmouseX - mouseX)*0.01;
}
