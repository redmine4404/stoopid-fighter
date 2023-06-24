PImage CRouge, CBleu, Terrain, gunImage;
float gunCadence = 1;

void setup() {
  fullScreen();
  CB = new CubeBleu();
  CR = new CubeRouge();
  gun = new Armes("Gun");
  tirRight = new Tirs("Right");
  tirLeft = new Tirs("Left");
  tirGun = new ArrayList<Tirs>();
  Terrain = loadImage("Terrain.png");
  Terrain.resize(width, height);
  background(Terrain);
}

void draw() {
  background(Terrain);
  CB.draw();
  CR.draw();
  gun.draw();
  tirRightOpti();
  tirLeftOpti();
}
