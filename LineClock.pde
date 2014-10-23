color hColor, mColor, sColor;

void setup() {
  size(300, 130);
  noStroke();
  hColor = color(random(255), random(255), random(255));
  mColor = color(random(255), random(255), random(255));
  sColor = color(random(255), random(255), random(255));
}

void draw() {
  background(0);
  fill(sColor);
  rect(20, height/2 - 40, map(second(), 0, 59, 0, width - 40), 20);
  fill(mColor);
  rect(20, height/2 - 10, map(minute(), 0, 59, 0, width - 40), 20);
  fill(hColor);
  rect(20, height/2 + 20, map(hour() % 12, 0, 12, 0, width - 40), 20);
}
