CubeBleu CB;

class CubeBleu {
  public int x, y;
  int xSpeed, ySpeed = 0;
  int xSpeedCooldown, ySpeedCooldown = 0;

  Thread minusCooldown = new Thread("minusCooldown");

  CubeBleu() {
    x = 953;
    y = 370;
    CBleu = loadImage("CubeBleu.png");
    CBleu.resize(128, 128);
  }
  void affiche() {
    //coords();
    colorTouch();
    image(CBleu, x, y);
    //if (colorTouch() == true) //nshgsi;
  }
  void mooves() {
    if (right == true) x += 5;
    if (left == true) x -= 5;
  }
  boolean toucheTerrainVertical = false;
  boolean toucheTerrainHorizontal = false;
  void colorTouch() {
    toucheTerrainVertical = false;
    toucheTerrainHorizontal = false;

    // Vérification des collisions verticales
    for (int h = 0; h < 128; h++) {
      for (int l = 0; l < 128; l++) {
        if (get(x + l, y + h) == -8026747) {
          if (get(128 + x, y + h) == -8026747 || get(0 + x, y + h) == -8026747) {
            if (h <= 120 && h >= 8) { //collision horizontale
              toucheTerrainHorizontal = true;
            }
          }
          if (get(x + l, y + 128) == -8026747 || get(x + l, y + 0) == -8026747) { // collision verticale
            toucheTerrainVertical = true;
          }
        }
      }
    }
    // Vérification des collisions horizontales

    // Utilisation des résultats des collisions verticales et horizontales
    if (toucheTerrainVertical) {
      // Collision verticale détectée
      // Faites quelque chose ici, comme changer la couleur ou arrêter le mouvement vertical
    }

    if (toucheTerrainHorizontal) {
      // Collision horizontale détectée
      // Faites quelque chose ici, comme changer la couleur ou arrêter le mouvement horizontal
    }
  }
  void draw() {
    println(x);
    mooves();
    affiche();
    if (mousePressed) {
      x = mouseX;
      y = mouseY;
    }
    x += xSpeed;
    y += ySpeed;
  }

  void minusCooldown() {
    if (xSpeedCooldown < 0) {
      xSpeed -= 1 / (int) frameRate;
    } else {
      xSpeedCooldown -= 1 / (int) frameRate;
    }
    if (ySpeedCooldown < 0) {
      ySpeed -= 1 / (int) frameRate;
    } else {
      xSpeedCooldown -= 1 / (int) frameRate;
    }
  }
}
