/* click to clear the image */

int x;
int y;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  line(mouseX, mouseY, x, y);
  x = mouseX;
  y = mouseY;
}

void mouseReleased() {
  background(255);  
}

