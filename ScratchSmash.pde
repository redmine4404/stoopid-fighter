PImage CRouge, CBleu, Terrain;

void setup() {
  fullScreen();
  CB = new CubeBleu();
  CR = new CubeRouge();
  Terrain = loadImage("Terrain.png");
  Terrain.resize(width, height);
  background(Terrain);
}

void draw() {
  CR.affiche();
  CB.affiche();
}
