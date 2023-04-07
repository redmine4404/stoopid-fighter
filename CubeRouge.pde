CubeRouge CR;

class CubeRouge {
  int x, y;
  CubeRouge() {
    x = 200;
    y = 200;
    CRouge = loadImage("CubeRouge.png");
    CRouge.resize(128, 128);
  }
  void affiche() {
    image(CRouge, x, y);
  }

  void draw() {
    affiche();
  }
}
