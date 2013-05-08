void setup() {
  size(640,640);
  strokeWeight(3);
  fill(0);
  textSize(32);
}

void draw() {
  background(220);
  stroke(255, 0, 0);
  line(mouseX, 0, mouseX, height);
  stroke(0, 0, 255);
  line(0, mouseY, width, mouseY);
  display(mouseX, mouseY);
}

void display(int x, int y) {
  String coords = x+","+y;
  float dx = 0;
  float dy = 0;
  /* near right edge, align text to the right of x */
  // if (x + textWidth(coords) > width) dx = -textWidth(coords);
  /* near top edge, align text below y */
  // if (y < textAscent()) dy = textAscent() + textDescent();  
  text(coords, x + dx, y + dy - textDescent());
}
