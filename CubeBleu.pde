public class CubeBleu {
  public static CubeBleu CB;
  int x, y;
  boolean toucheTerrain;
  CubeBleu() {
    x = 600;
    y = 600;
    ScratchSmash.CBleu = ScratchSmash.instance.loadImage("CubeBleu.png");
    CBleu.resize(128, 128);
  }
  void affiche() {
    ScratchSmash.instance.image(ScratchSmash.CBleu, x, y);
    colorTouch();
    //if (colorTouch() == true) //nshgsi;
    //coords();
  }
  void mooves() {
    if (keys.left == true) x-= 5;
    if (keys.right == true) x += 5;
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
