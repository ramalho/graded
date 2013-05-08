float x, y, vx, vy;
int radius = 50;

void setup() {
  size(500, 500);
  noStroke();
  ellipseMode(RADIUS);
  fill(255, 255, 0);
  x = 0;
  y = 0;
  vx = random(3, 20);
  vy = random(3, 20);
  //frameRate(20);
}

void draw() {
  background(127, 200, 255);
  ellipse(x, y, radius, radius);
  x = x + vx;
  y = y + vy;
  if (x > width || x < 0) vx = -vx;
  if (y > height || y < 0) vy = -vy; 
}

