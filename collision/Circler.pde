class Circle {
  // for hobby, so i do not set visibilies
  float x;
  float y;
  float r;
  float vx;
  float vy;
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
    vx = random(RANDOM_LIMIT);
    vy = random(RANDOM_LIMIT);
  }

  void move() {
    if (width < x) {
      vx = abs(vx) * -1.0;
    } else if (x < 0) {
      vx = abs(vx);
    }

    if (height < y) {
      vy = abs(vy) * -1.0;
    } else if (y < 0) {
      vy = abs(vy);
    }

    x += vx ;
    y += vy;
    fill(r_color, g_color, b_color);
    circle(x, y, r * 2);
    fill(255, 0, 0);
    textSize(20);
    text(content, x, y);
  }

  void changeStatusIfCollision(Circle[] circles) {
    for (Circle circle : circles) {
      if (this.detectCollision(circle)) {
        this.vx *= -1; 
        this.vy *= -1;

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
