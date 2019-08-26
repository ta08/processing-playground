// the limit should be less than 10^5
void recodeFrameUntil(int limit) {
  if ( frameCount >= limit) {
    exit();
  }
  saveFrame("frames/#####.png");
}
