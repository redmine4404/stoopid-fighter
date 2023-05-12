import processing.core.PApplet;
import processing.core.PImage;

import java.util.ArrayList;
import java.util.List;

public class ScratchSmash extends PApplet {
    public static PImage CRouge, CBleu, Terrain;
    public static ScratchSmash instance;
    public ArrayList<FighterInstance> fighterInstances = new ArrayList<FighterInstance>();

public void setup() {
  //size(800, 600);
        Animation CubeRougeAnimation = new Animation();
        CubeRougeAnimation.addAnimation("idle", new ArrayList<PImage>());

        instance = this;
        CubeBleu.CB = new CubeBleu();
        fighterInstances.add(new CubeRouge());
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