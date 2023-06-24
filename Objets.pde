
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
      if (right == false && left == true) {
        gunX = CB.x - 50.0;
        gunY = CB.y + 50.0;
        image(gunImage, gunX, gunY);
      }
      if (right == true && left == false) {
        gunX = CB.x + 128.0;
        gunY = CB.y + 50;
        if (gunImage.width > 0) { // Vérifie si l'image est chargée
          push();
          scale(-1, 1);
          image(gunImage, -gunX - gunImage.width, gunY); // Affiche l'image inversée
          pop();
        }
      }
      if (mousePressed && gunCadence == 1) {
        if (right == false && left == true) {
          tirGun.add(new Tirs("Right"));
          gunCadence = 20;
        }
        if (right == true && left == false) {
          tirGun.add(new Tirs("Left"));
          gunCadence = 20;
        }
      }
    }
  }
}

ArrayList <Tirs> tirGun;
Tirs tirRight, tirLeft;
class Tirs {
  String type = "";
  float x, y;
  Tirs(String t) {
    if (t == "Right") {
      x = gun.gunX;
      y = gun.gunY;
    }
    if (t == "Left") {
      x = gun.gunX + 50;
      y = gun.gunY;
    }
    type = t;
  }
  void draw() {
    push();
    fill(#F3F723);
    stroke(#000000);
    strokeWeight(2);
    ellipse(x, y, 20, 20);
    pop();
    if (type == "Right") x -= 10;
    if (type == "Left") x += 10;
    if (dist(x, y, CR.x + 64, CR.y + 59) < 70) {
      tirGun.remove(this);
    }
  }
  boolean supr() {
    if (x < 0 || x > width) {
      return true;
    } else {
      return false;
    }
  }
}

void tirRightOpti() {
  for (int i =tirGun.size() -1; i >= 0; i--) {
    tirRight = tirGun.get(i);
    tirRight.draw();
    if (tirRight.supr()) tirGun.remove(i);
  }
}

void tirLeftOpti() {
  for (int i =tirGun.size() -1; i >= 0; i--) {
    tirLeft = tirGun.get(i);
    tirLeft.draw();
    if (tirLeft.supr()) tirGun.remove(i);
  }
}
