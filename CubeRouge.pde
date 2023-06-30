CubeRouge CR;
float barWidth;

class CubeRouge {
  int x, y;
  CubeRouge() {
    x = 200;
    y = 200;
    CRouge = loadImage("CubeRouge.png");
  }
  void affiche() {
    image(CRouge, x, y);
    push();
    fill(#000000);
    textSize(100);
    text(pvCubeRouge, x, y - 50);
    pop();
    push();
    barWidth = map(pvCubeRouge, 0, 100, 0, width - 20);
    
    // Calcul des coordonnées x pour centrer la barre de vie horizontalement
    float barX = (width - barWidth) / 2;
    
    // Dessin de la barre de vie (rectangle vert)
    fill(0, 255, 0);
    rect(barX, height / 2 - 10, barWidth, 20);
    
    // Dessin de la partie restante de la barre de vie (rectangle rouge)
    fill(255, 0, 0);
    rect(barX + barWidth, height / 2 - 10, (width - 20 - barWidth), 20);
    pop();
  }

  void draw() {
    affiche();
  }
}
