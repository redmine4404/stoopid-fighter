package main.Fighter;

import main.Client.Animation;
import main.ScratchSmash;
import processing.core.PImage;

import java.util.ArrayList;

public class CubeRouge {
    public static CubeRouge CR;

    public static Animation getTexture(){
        ArrayList<PImage> idle_animation = new ArrayList<>();
        Animation animation = new Animation();

        idle_animation.add(ScratchSmash.instance.loadImage("CubeRougeIdle"));
        animation.addAnimation("idle", idle_animation);
        return animation;
    }


  }