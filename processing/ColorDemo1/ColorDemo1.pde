/* control the blue level by rotating scroll wheel 
 (two-finger vertical drag on Macs)
 */

import java.awt.event.*;

int blueLevel = 127;

void setup() {
  size(255, 255);
  noStroke();
  // Java makes this is ridiculously complicated...
  addMouseWheelListener(new MouseWheelListener() { 
    public void mouseWheelMoved(MouseWheelEvent mwe) { 
      mouseWheel(mwe.getWheelRotation());
    }
  }
  );
}

void mouseWheel(int delta) {
  blueLevel += delta*4;
  if (blueLevel < 0) blueLevel = 0;
  else if (blueLevel > 255) blueLevel = 255;
}

void display(int blueLevel) {
  fill(0, 0, blueLevel);
  rect(0, blueLevel-textAscent(), 
  textWidth("123456"), textAscent()+textDescent());
  fill(255);
  text(blueLevel, 0, blueLevel);
}

void draw() {
  background(mouseX, mouseY, blueLevel);
  display(blueLevel);
}

