public class Fighter{
    
    boolean toucheTerrainVertical = false;
    boolean toucheTerrainHorizontal = false;
    int FallingSpeed;

    void verifierCollisionsVerticales() {
        toucheTerrainVertical = false;
        for (int l = 0; l < 128; l++) {
           if (get(x + l, y) == -8026747) {
                toucheTerrainVertical = true;
                break;
        }
        }
        
        if (toucheTerrainVertical) {
           // Collision verticale détectée
           // Faites quelque chose ici, comme changer la couleur ou arrêter le mouvement vertical
        }
}
    
    public void falling() {
        if(!toucheTerrainVertical){
            y--;
        }
    }
    
    
}