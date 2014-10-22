color hColor, mColor, sColor;

void setup() {
  size(300, 300);
  noFill();
  hColor = color(random(255), random(255), random(255));
  mColor = color(random(255), random(255), random(255));
  sColor = color(random(255), random(255), random(255));
}

void draw() {
  background(0);
  
  stroke(150);
  strokeWeight(3);
  line(width/2, height/2-110, width/2, height/2+110);
  line(width/2-110, height/2, width/2+110, height/2);
  
  stroke(hColor);
  strokeWeight(10);
  arc(width/2, height/2, 180, 180, -HALF_PI, map(second(), 0, 59, -HALF_PI, TAU - HALF_PI));
  
  stroke(mColor);
  strokeWeight(15); 
  arc(width/2, height/2, 120, 120, -HALF_PI, map(minute(), 0, 59, -HALF_PI, TAU - HALF_PI));
  
  stroke(sColor);
  strokeWeight(20);
  arc(width/2, height/2, 50, 50, -HALF_PI, map(hour() % 12, 0, 12, -HALF_PI, TAU - HALF_PI));
}

