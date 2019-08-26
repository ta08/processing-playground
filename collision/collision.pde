import java.util.Collections;
import java.util.List;
// processing not support yet...

Circle[] circles = new Circle[15];

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
      circle.drow();
  }
  recodeFrameUntil(400);
}
