class Circle {
  // for hobby, so i do not set visibilies
  float x;
  float y;
  float r;
  float dv_x;
  float dv_y;
  float r_color ;
  float g_color;
  float b_color;
  String content;

  float RANDOM_LIMIT = 5;

  Circle(float _x, float _y, String _content) {
    x = _x;
    y = _y;
    content = _content;
    r = 5;
    r_color = 0;
    g_color = random(255);
    b_color = random(255);
    dv_x = random(RANDOM_LIMIT);
    dv_y = random(RANDOM_LIMIT);
  }

  void drow() {
    dv_x = width < x || x < 0 ? dv_x * -1.0 : dv_x;
    dv_y = height < y || y < 0 ? dv_y * -1.0 : dv_y;
    x += dv_x ;
    y += dv_y;
    fill(r_color, g_color, b_color);
    circle(x, y, r * 2);
    fill(255, 0, 0);
    textSize(20);
    text(content, x, y);
  }

  void changeStatusIfCollision(Circle[] circles) {
    for (Circle circle : circles) {
      if (this.detectCollision(circle)) {
        this.dv_x = random(RANDOM_LIMIT) * 2 - RANDOM_LIMIT;
        this.dv_y = random(RANDOM_LIMIT) * 2 - RANDOM_LIMIT;
        this.g_color = random(255);
        this.b_color = random(255);
      };
    }
  }    

  boolean detectCollision(Circle cs) {
    if (this == cs) {
      return false;
    }
    return abs(this.x - cs.x) < r && abs(this.y - cs.y) < r;
  }
}
