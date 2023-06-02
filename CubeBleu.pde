CubeBleu CB;

class CubeBleu {
  int x, y;
  boolean toucheTerrain;
  CubeBleu() {
    x = 600;
    y = 600;
    CBleu = loadImage("CubeBleu.png");
    CBleu.resize(128, 128);
  }
  void affiche() {
    //coords();
    colorTouch();
    image(CBleu, x, y);
    //if (colorTouch() == true) //nshgsi;
  }
  void mooves() {
    if (right == true) x += 5;
    if (left == true) x -= 5;
  }
  void colorTouch() {
    toucheTerrain = false;
    for (int l = 0; l < 128; l++) {
      for (int h = 0; h < 128; h++) {
        if (get(x + l, y + h) == -8026747) {
          toucheTerrain = true;
        }
      }
    }
  }
  void draw() {
    mooves();
    affiche();
  }
}
