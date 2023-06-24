
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
      if (gunCadence != 1) gunCadence -= 1;
      gunX = CB.x - 50.0;
      gunY = CB.y + 50.0;
      image(gunImage, gunX, gunY);
      if (mousePressed && frameCount%gunCadence < 1) {
      tirGun.add(new Tirs());
      gunCadence = 20;
      }
    }
  }
}

ArrayList <Tirs> tirGun;
Tirs tir;
class Tirs {
  float x, y;
  Tirs() {
    x = gun.gunX;
    y = gun.gunY;
  }
  void draw() {
    push();
    fill(#F3F723);
    stroke(#000000);
    strokeWeight(2);
    ellipse(x, y, 20, 20);
    pop();
    x -= 10;
    if (dist(x, y, CR.x, CR.y) < 40) {
      tirGun.remove(this);
    }
  }
  boolean supr() {
    if (x < 0) {
      return true;
    } else {
      return false;
    }
  }
}

void tirOpti() {
  for (int i =tirGun.size() -1; i >= 0; i--) {
    tir = tirGun.get(i);
    tir.draw();
    if (tir.supr()) tirGun.remove(i);
  }
}
