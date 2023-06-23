boolean right, left;

void keyPressed() {
    keysIn();
}


void keyReleased() {
    keysOut();
}


void keysIn() {
  if (key == 'd' || key == 'D') {
    right = true;
  }
    if (key == 'q' || key == 'Q' || key == 'a' || key == 'A') {
    left = true;
}
}

void keysOut() {
  if (key == 'd' || key == 'D') {
    right = false;
  }
  if (key == 'q' || key == 'Q' || key == 'a' || key == 'A') {
    left = false;
  }
}
