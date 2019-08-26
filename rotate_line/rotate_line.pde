
void setup() {
  size(400, 400);
  frameRate(10);
  surface.setResizable(true);
}

// the limit should be less than 10^5
void recodeFrameUntil(int limit) {
  saveFrame("frames/#####.png");
  if ( frameCount >= limit) {
    exit();
  }
}

void draw() {
  background(255);
  float endX = 100 + 100 * sin(frameCount/ (2 * PI));
  float endY = 100 + 100 * cos(frameCount/ (2 * PI));
  line(100, 100, endX, endY);
  recodeFrameUntil(200);
}
