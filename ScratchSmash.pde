PImage CRouge, CBleu, Terrain, gunImage;

void setup() {
  fullScreen();
  CB = new CubeBleu();
  CR = new CubeRouge();
  gun = new Armes("Gun");
  tir = new Tirs();
  Terrain = loadImage("Terrain.png");
  Terrain.resize(width, height);
  background(Terrain);
}

void draw() {
  background(Terrain);
  CB.draw();
  CR.draw();
  println(mouseX, mouseY);
  gun.draw();
}
