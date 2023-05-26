<<<<<<< HEAD
import processing.core.PApplet;
=======
>>>>>>> main

public class keys {

    public static boolean right, left;

<<<<<<< HEAD



=======
>>>>>>> main
    static void keysIn() {
        if (ScratchSmash.instance.key == 'd') {
            right = true;
            System.out.println("machin");
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