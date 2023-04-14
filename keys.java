public class keys {

    public static boolean right, left;

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
    }

    void keysOut() {
        if (ScratchSmash.instance.key == 'd') {
            right = false;
        }
        if (ScratchSmash.instance.key == 'q') {
            left = false;
        }

    }
}