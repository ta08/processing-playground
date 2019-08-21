void setup() {
  size(400, 400);
  fill(240, 32);
  strokeWeight(4);
}

void draw() {   
  rect(1, 1, random(width), random(height));
  recodeFrameUntil(200);
}
