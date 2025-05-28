avatar GrassHopper;
clouds CloudStream;
avatar pole;
avatar[] Pole = new avatar[60];

void setup() {
  size(800, 600); // sets the size of the window to 800x600
  GrassHopper = new avatar();
  CloudStream = new clouds();
  for (int i = 0; i<60; i++) {
    Pole[i] = new avatar();
  }
}

void bg() {
  background(#87CEEB); // changes the background of the window to sky blue

  // sun
  fill(255, 255, 0);
  circle(0, 0, 200);

  // Grass
  noStroke();
  fill(124, 250, 0);
  rect(0, 550, 1000, 1000);
}

void draw() {
  bg();
  for (int i =0; i<40; i++) {
    Pole[i].display2();
    Pole[i].move2();
  }
  CloudStream.display();
  CloudStream.move();
  GrassHopper.hit();

  // mouse pointer
  for (int i = 1; i<10; i++) {
    fill(255, 255, 255);
    circle(mouseX, mouseY, 20);
  }
  
  GrassHopper.display();
  GrassHopper.move();
}

void keyPressed() {
  GrassHopper.jump();
}
