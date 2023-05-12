public class CubeRouge extends FighterInstance{
    public static CubeRouge CR;


    CubeRouge(Animation animationList) {
        super(animationList);
        ScratchSmash.CRouge = ScratchSmash.instance.loadImage("CubeRouge.png");
      y = 200;
      x = 200;
    ScratchSmash.CRouge.resize(128, 128);
    }

    public void affiche() {
    }

    public void draw() {
      affiche();
    }
  }