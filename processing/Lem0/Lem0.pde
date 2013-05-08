PImage bg;
PImage cmdSprite;

float cmdX = 0;

void setup() {
  size(800, 600);
  bg = loadImage("earthrise800x600.jpg");
  cmdSprite = loadImage("cm-corgi.png");
}

void draw() {
  background(bg);
  image(cmdSprite, cmdX, 90);
  cmdX = cmdX + 3;
  if (cmdX > width) cmdX = 0;
}

