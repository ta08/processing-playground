// based on official example: https://processing.org/examples/piechart.html
int[] angles = { 30, 10, 45, 35, 60, 38, 75, 67 };

void setup() {
  size(400, 400);
  noStroke();
}

void draw() {
  background(100);
  pieChart(300, angles);
}

void pieChart(float diameter, int[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    float gray = map(i, 0, data.length, 0, 255);
    float num_of_color =abs(sin(float(frameCount) / 100)) * 255;
    float g_of_rgb = num_of_color;
    float b_of_rgb = num_of_color;
    
    fill(gray, g_of_rgb, b_of_rgb);
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(data[i]));
    fill(gray, 255 - g_of_rgb, 255 - b_of_rgb);
    arc(width/8, height/8, diameter/8, diameter/8, lastAngle, lastAngle+radians(data[i]));
    arc(width/16, height/16, diameter/16, diameter/16, lastAngle, lastAngle+radians(data[i]));
 
    lastAngle += radians(data[i]);
  }
}
