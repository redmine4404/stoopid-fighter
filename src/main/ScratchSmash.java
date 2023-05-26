package main;

import main.Client.keys;
import processing.core.PApplet;
import processing.core.PImage;

import java.util.ArrayList;

public class ScratchSmash extends PApplet {

    public static PImage CBleu, Terrain;
    public static ScratchSmash instance;
    public ArrayList<FighterInstance> fighterInstances = new ArrayList<FighterInstance>();

   public static void main(String[] args) {
       PApplet.main(new String[]{"src.main.ScratchSmash"});
  }
    public void setup() {

    }

    public void settings() {
        fullScreen();
    }

    public void draw() {
        background(Terrain);
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