int frame = 0;
float num_frames = 100.0;

void setup() {
  size(500, 500);
  background(0);
  noStroke();
  fill(0, 255, 0);
  ellipseMode(CORNER);
}

void draw() {
  float angle = frame/num_frames;
  frame++;
  if (angle > 2*PI)
    frame = 0;
    background(0);
  println(angle);
  arc(0, 0, width, height, 0, angle);  
}

