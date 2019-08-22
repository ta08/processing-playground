// the limit should be less than 10^5
void recodeFrameUntil(int limit) {
  if ( frameCount >= limit) {
    exit();
  }
  
  if ( frameCount % 100 == 0){
    println("save frames: " + frameCount);
  }
  
  saveFrame("frames/#####.png");
}
