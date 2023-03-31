CubeBleu CB;

class CubeBleu {
  int x, y;
  CubeBleu() {
    x = 600;
    y = 600;
    CBleu = loadImage("CubeBleu.png");
  }
  void affiche() {
    image(CBleu, x, y);
  }
}
