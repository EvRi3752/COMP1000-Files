int x;
int y;

void setup() {
  // setup will be executed once
  size(500, 500);
  x = width/2;
  y = height/2;
}
void draw() {
  // draw will be executed forever
  background(200, 255, 150);
  strokeWeight(3);
  fill(255, 255, 255);
  ellipse(x, y, 100, 100);
  fill(0, 0, 255);
  ellipse(x, y, 20, 20);
  
  x = x + 1;
}
