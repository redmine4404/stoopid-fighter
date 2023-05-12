
public class keys {

    public static boolean right, left;

    static void keysIn() {
        if (ScratchSmash.instance.key == 'd') {
            right = true;
        }
        if (ScratchSmash.instance.key == 'q') {
            left = true;
        }
    }

    static void keysOut() {
        if (ScratchSmash.instance.key == 'd') {
            right = false;
        }
        if (ScratchSmash.instance.key == 'q') {
            left = false;
        }

    }
}