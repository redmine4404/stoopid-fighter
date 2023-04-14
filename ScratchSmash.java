import processing.core.PApplet;
import processing.core.PImage;

public class ScratchSmash extends PApplet {
    public static PImage CRouge, CBleu, Terrain;
    public static ScratchSmash instance;
public void setup() {
  //size(800, 600);
        instance = this;
        CubeBleu.CB = new CubeBleu();
        CubeRouge.CR = new CubeRouge();
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
        System.out.println("truc");
    }
    @Override
    public void keyReleased() {
        keys.keysOut();
    }

}