boolean right, left, up;

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
  if (key == ' ') {
    up = true;
  }
}

void keysOut() {
  if (key == 'd') {
    right = false;
  }
  if (key == 'q') {
    left = false;
  }
  if (key == ' ') {
    up = false;
  }
}
