package main.Client;

import main.ScratchSmash;

public class keys {

    public static boolean right, left;

    public static void keysIn() {
        if (ScratchSmash.instance.key == 'd') {
            right = true;
        }
        if (ScratchSmash.instance.key == 'q') {
            left = true;
        }
    }

    public static void keysOut() {
        if (ScratchSmash.instance.key == 'd') {
            right = false;
        }
        if (ScratchSmash.instance.key == 'q') {
            left = false;
        }

    }
}