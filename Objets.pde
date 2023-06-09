String weaponType = "null";
Armes gun;
class Armes {
  String type = "";
  float gunX, gunY;
  boolean gunRight, gunLeft;
  Armes(String t) {
    gunImage = loadImage("Gun.png");
    type = t;
  }
  void draw() {
    if (key == '&' && keyPressed) {
      weaponType = "Gun";
    }
    if (key == 'é' && keyPressed) {
      weaponType = "Knife";
    }
    push();
    fill(#000000);
    textSize(100);
    text(weaponType + "mode", CB.x, CB.y - 50);
    pop();
    if (type == "Gun" && weaponType == "Gun") {
      if (gunCadence != 1) gunCadence -= 1;
      gunAffiche();
      tirer();
    }
    if (mouseButton == CENTER && mousePressed) {
      gunLeft = false;
      gunRight = false;
      weaponType = "null";
    }
  }
  void imageGunInversew() {
    if (gunImage.width > 0) { // Vérifie si l'image est chargée
      push();
      scale(-1, 1);
      image(gunImage, -gunX - gunImage.width, gunY); // Affiche l'image inversée
      pop();
    }
  }
  void tirer() {
    if (mouseButton == LEFT && mousePressed && gunCadence == 1) {
      if (right == false && left == true) {
        tirGun.add(new Tirs("Right"));
        gunCadence = 20;
      }
      if (right == true && left == false) {
        tirGun.add(new Tirs("Left"));
        gunCadence = 20;
      }
    }
    if (mouseButton == LEFT && mousePressed && gunCadence == 1) {
      if (gunRight == true) {
        tirGun.add(new Tirs("Left"));
        gunCadence = 20;
      }
      if (gunLeft == true) {
        tirGun.add(new Tirs("Right"));
        gunCadence = 20;
      }
    }
  }
  void gunAffiche() {
    if (right == false && left == true) {
      gunX = CB.x - 50.0;
      gunY = CB.y + 50.0;
      image(gunImage, gunX, gunY);
      gunLeft = true;
      gunRight = false;
    }
    if (right == true && left == false) {
      gunX = CB.x + 128.0;
      gunY = CB.y + 50;
      imageGunInversew();
      gunLeft = false;
      gunRight = true;
    }
    if (right == false && left == false) {
      if (gunLeft == true) {
        gunX = CB.x - 50.0;
        gunY = CB.y + 50.0;
        image(gunImage, gunX, gunY);
      }
      if (gunRight == true) {
        gunX = CB.x + 128.0;
        gunY = CB.y + 50;
        imageGunInversew();
      }
    }
  }
}


ArrayList <Tirs> tirGun;
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
    if (type == "Right") x -= 20;
    if (type == "Left") x += 20;
    if (dist(x, y, CR.x + 64, CR.y + 59) < 70) {
      tirGun.remove(this);
      pvCubeRouge -= 5;
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

void tirOpti() {
  for (int i =tirGun.size() -1; i >= 0; i--) {
    Tirs t = tirGun.get(i);
    t.draw();
    if (t.supr()) tirGun.remove(i);
  }
}
