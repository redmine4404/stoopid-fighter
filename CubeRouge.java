public class CubeRouge {
    public static CubeRouge CR;
    int x, y;

    CubeRouge() {
      ScratchSmash.CRouge = ScratchSmash.instance.loadImage("CubeRouge.png");
      y = 200;
      x = 200;
    ScratchSmash.CRouge.resize(128, 128);
    }

    void affiche() {
        ScratchSmash.instance.image(ScratchSmash.instance.CRouge, x, y);
    }

    void draw() {
      affiche();
    }
  }