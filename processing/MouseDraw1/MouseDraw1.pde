/* right-click to clear the image */

int x;
int y;
boolean strokeStarted = false;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  if (mousePressed) {
    if (strokeStarted)
      line(mouseX, mouseY, x, y);
    else
      strokeStarted = true;
    x = mouseX;
    y = mouseY;
  }
}

void mouseReleased() {
  strokeStarted = false;
  if (mouseButton == RIGHT) {
    background(255);
  }
}
