public class FighterInstance {
  int x, y;
  Animation animationList;

  public FighterInstance(Animation animation){
    this.animationList = animation;
  }

  public void affiches() {
    
  }

  public void draw(){
    ScratchSmash.instance.image(animationList.getAnimation("idle").get(0), x, y);
  }
}
