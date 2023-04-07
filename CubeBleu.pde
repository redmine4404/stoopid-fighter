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
  void mooves() {
    if (right == true) x += 5;
    if (left == true) x-= 5;
  }
  void draw() {
    mooves();
    affiche();
  }
}
