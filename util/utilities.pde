// the limit should be less than 10^5
void recodeFrameUntil(int limit) {
  saveFrame("frames/#####.png");
  if ( frameCount >= limit) {
    exit();
  }
}
