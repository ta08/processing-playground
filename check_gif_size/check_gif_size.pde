import java.lang.Math;

void setup() {
  size(400, 400);
}


void astroid(float t) {
  fill(100, 255, 100);
  float dx = (float) Math.pow(sin(t) * 5, 3);
  float dy = (float) Math.pow(cos(t) * 5, 3);
  float x = (width / 2.0) + dx;
  float y = (height / 2.0) + dy;
  circle(x, y, 10);
}

void lissajous(float t) {
  fill(255, 100, 100);
  float dx = sin(3 * t) * 100;
  float dy = cos(4 * t) * 100;
  float x = (width / 2.0) + dx;
  float y = (height / 2.0) + dy;
  circle(x, y, 10);
}

void involute(float t) {
  fill(100, 100, 255);
  float dx = (float) cos(t) + t * sin(t) * 10;
  float dy = (float) sin(t) - t * cos(t) * 10;
  float x = (width / 2.0) + dx;
  float y = (height / 2.0) + dy;
  circle(x, y, 10);
}


void draw() {
  float t = frameCount / 50.0;
  astroid(t);
  lissajous(t);
  involute(t);
  recodeFrameUntil(1000);
}
