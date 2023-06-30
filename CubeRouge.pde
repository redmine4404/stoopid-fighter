CubeRouge CR;
float barWidth;

class CubeRouge {
  int x, y;
  CubeRouge() {
    x = 200;
    y = 200;
    CRouge = loadImage("CubeRouge.png");
  }
  void affiche() {
    image(CRouge, x, y);
    push();
    fill(#000000);
    textSize(100);
    text(pvCubeRouge, x, y - 50);
    pop();
  }

  void draw() {
    affiche();
  }
}
