int h;
boolean pm;
color hColor, mColor, sColor, pmColor;

void setup() {
  size(300, 300);
  noFill();
  hColor = color(random(255), random(255), random(255));
  mColor = color(random(255), random(255), random(255));
  sColor = color(random(255), random(255), random(255));
  pmColor = color(random(255), random(255), random(255));
}

void draw() {
  pm = false;
  if (hour() / 12.0 > 1) {
    pm = true;
  }
  
  background(0);

  stroke(150);
  strokeWeight(3);
  line(width/2, height/2-110, width/2, height/2+110);
  line(width/2-110, height/2, width/2+110, height/2);

  stroke(hColor);
  strokeWeight(10);
  arc(width/2, height/2, 200, 200, -HALF_PI, map(second(), 0, 59, -HALF_PI, TAU - HALF_PI));

  stroke(mColor);
  strokeWeight(15); 
  arc(width/2, height/2, 140, 140, -HALF_PI, map(minute(), 0, 59, -HALF_PI, TAU - HALF_PI));

  stroke(sColor);
  strokeWeight(20);
  arc(width/2, height/2, 70, 70, -HALF_PI, map(hour() % 12, 0, 12, -HALF_PI, TAU - HALF_PI));
  
  if (pm) {
    fill(pmColor);
    noStroke();
    ellipse(width/2, height/2, 52, 52);
    noFill();
  }
}
