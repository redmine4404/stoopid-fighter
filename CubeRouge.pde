CubeRouge CR;

class CubeRouge {
  int x, y;
  CubeRouge() {
    x = 200;
    y = 200;
    CRouge = loadImage("CubeRouge.png");
  }
  void affiche() {
    image(CRouge, x, y);
  }
}
