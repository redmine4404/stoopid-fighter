public class CubeRouge extends FighterInstance{
    public static CubeRouge CR;


    CubeRouge(Animation animationList) {
        super(animationList);
        CR = this;
      y = 200;
      x = 200;
    }

    public void affiche() {
        ScratchSmash.instance.image(this.animationList.getAnimation("idle").get(0), x, y);
    }

    public void draw() {
      affiche();
    }
  }