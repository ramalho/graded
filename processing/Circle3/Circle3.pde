void setup() {
  size(500, 500);
  smooth();
  noStroke();
  fill(255, 255, 0); 
}

void draw() {
  background(127, 200, 255);
  ellipse(mouseX, mouseY, 80, 80);
}

