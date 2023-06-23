
Armes gun;
class Armes {
  String type = "";
  float gunX, gunY;
  Armes(String t) {
    gunImage = loadImage("Gun.png");
    type = t;
  }
  void draw() {
    if (type == "Gun") {
      gunX = CB.x - 50.0;
      gunY = CB.y + 50.0;
      image(gunImage, gunX, gunY);
      if (mousePressed && frameCount%60 < 1) {
      
      }
    }
  }
}

ArrayList <Tirs> tirGun;
Tirs tir;
class Tirs {
  float x, y;
  Tirs() {
    
  }
  
  
  
}
