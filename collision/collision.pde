Circle[] circles = new Circle[20];

void setup() {
  size(400, 400);
  for (int i = 0; i < circles.length; i++) {
    circles[i] = new Circle(random(width), random(height), String.valueOf(i));
  }
}

void draw() {
  background(255);
  for(Circle circle: circles){
      circle.changeStatusIfCollision(circles);
      circle.move();
  }
  recodeFrameUntil(400);
}
