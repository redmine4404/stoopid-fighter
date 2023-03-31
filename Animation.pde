HashMap<String, PImage[]> animationlist = new HashMap<>();

void addAnimation(String name, PImage[] Animation) {
  animationlist.put(name, Animation);
}

//pour le chargement de toutes les images
PImage[] getAllImage() {
  ArrayList<PImage> image = new List<PImage>;
   animationlist.keySet().stream().forEach(key -> image.add(animationlist.get(key));
  return image;
}
