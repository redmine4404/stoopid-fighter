boolean right, left;

void keyPressed() {
  keysIn();
}

void keyReleased() {
  keysOut();
}


void keysIn() {
  if (key == 'd') {
    right = true;
  }
  if (key == 'q') {
    left = true;
  }
}

void keysOut() {
  if (key == 'd') {
    right = false;
  }
  if (key == 'q') {
    left = false;
  }
}
