import processing.core.PApplet;
import processing.core.PImage;

import java.util.ArrayList;
import java.util.List;

public class ScratchSmash extends PApplet {
    public static PImage CBleu, Terrain;
    public static ScratchSmash instance;
    public ArrayList<FighterInstance> fighterInstances = new ArrayList<FighterInstance>();

public void setup() {
  //size(800, 600);
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

    public void settings(){
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
    }
    @Override
    public void keyReleased() {
        keys.keysOut();
    }

}