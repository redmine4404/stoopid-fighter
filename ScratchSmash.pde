import processing.core.PApplet;
import processing.core.PImage;

public class ScratchSmash extends PApplet {
    public static PImage CRouge, CBleu, Terrain;
    public static ScratchSmash instance;
void setup() {
  fullScreen();
  //size(800, 600);

        CubeBleu.CB = new CubeBleu();
        CubeRouge.CR = new CubeRouge();
        Terrain = loadImage("Terrain.png");
        Terrain.resize(width, height);
        background(Terrain);
    }
    public void draw() {
        background(Terrain);
        CubeBleu.CB.draw();
        CubeRouge.CR.draw();
    }
}