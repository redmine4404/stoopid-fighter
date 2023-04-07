import processing.core.PImage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Animation {

    HashMap<String, PImage[]> animationlist = new HashMap<>();

    public void addAnimation(String name, PImage[] Animation) {
  animationlist.put(name, Animation);
}

//pour le chargement de toutes les images
public PImage[] getAllImage() {
  ArrayList<PImage> image = new ArrayList<PImage>();

    for(String string : animationlist.keySet()){
        for(PImage pImage : animationlist.get(string)){
            image.add(pImage);
        }
    }
    return (PImage[]) image.toArray();
}
}