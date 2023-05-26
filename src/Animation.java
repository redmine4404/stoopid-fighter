import processing.core.PImage;

import java.util.ArrayList;
import java.util.HashMap;

public class Animation {

  HashMap<String, ArrayList<PImage>> animationlist = new HashMap<String, ArrayList<PImage>>();

  public Animation addAnimation(String name, ArrayList<PImage> Animation) {
    animationlist.put(name, Animation);
    return this;
  }

  public Animation() {

  }

  // pour le chargement de toutes les images
  public PImage[] getAllImage() {
    ArrayList<PImage> image = new ArrayList<PImage>();

    for (String string : animationlist.keySet()) {
      for (PImage pImage : animationlist.get(string)) {
        image.add(pImage);
      }
    }
    return (PImage[]) image.toArray();
  }

  public ArrayList<PImage> getAnimation(String name) {
    return animationlist.get(name);
  }
}