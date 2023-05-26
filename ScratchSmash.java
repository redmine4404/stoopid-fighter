import processing.core.PApplet;
import processing.core.PImage;

import java.util.ArrayList;

public class ScratchSmash extends PApplet {

    public static PImage CBleu, Terrain;
    public static ScratchSmash instance;
    public ArrayList<FighterInstance> fighterInstances = new ArrayList<FighterInstance>();

   public static void main(String[] args) {
       PApplet.main(new String[]{"ScratchSmash"});
  }
    public void setup() {
        Animation CubeRougeAnimation = new Animation();
        ArrayList<PImage> list = new ArrayList<PImage>();
        list.add(0, loadImage("CubeRouge.png"));
        CubeRougeAnimation.addAnimation("idle", list);

        instance = this;
        CubeBleu.CB = new CubeBleu();
        fighterInstances.add(new CubeRouge(CubeRougeAnimation));
        Terrain = loadImage("Terrain.png");
        Terrain.resize(width, height);
        background(Terrain);
    }

    public void settings() {
        fullScreen();
    }

    public void draw() {
        background(Terrain);
        CubeBleu.CB.draw();
        CubeRouge.CR.draw();

    }

    @Override
    public void keyPressed() {
        keys.keysIn();
<<<<<<< HEAD
        System.out.println("truc");
    }
=======
    }

>>>>>>> main
    @Override
    public void keyReleased() {
        keys.keysOut();
    }

}