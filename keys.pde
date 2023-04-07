    public static boolean right, left;
public class keys {

    void keyPressed() {
        keysIn();
    }

    void keyReleased() {
        keysOut();
    }


    void keysIn() {
        if (ScratchSmash.instance.key == 'd') {
            right = true;
        }
        if (ScratchSmash.instance.key == 'q') {
            left = true;
        }
  if (key == ' ') {
    up = true;
  }
}

    void keysOut() {
        if (ScratchSmash.instance.key == 'd') {
            right = false;
        }
        if (ScratchSmash.instance.key == 'q') {
            left = false;
        }
  if (key == ' ') {
    up = false;
  }
}