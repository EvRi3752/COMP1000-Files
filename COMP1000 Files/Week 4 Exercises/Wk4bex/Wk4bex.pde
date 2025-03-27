/*
Exercise 2: Floating circle with a switch to turn on/off colors
 
 COMP1000 2024
 */

float x;
float y;
float dx;
float dy;
boolean isOn = false;
color lampColor = color(200, 255, 220);
int diameter = 80;

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
  dx = random(-2, 2);
  dy = random(-2, 2);
}

void draw() {
  background(80, 50, 100);
  noStroke();

  // Draws the Switch button design
  fill(255, 255, 100);
  rect(0, 0, width, 80);
  stroke(200, 200, 100);
  strokeWeight(2);
  for (int lineX = 10; lineX < width; lineX = lineX + 20) {
    line(lineX, 0, lineX, 80);
  }
    for (int lineY = 10; lineY < 80; lineY = lineY + 20) {
    line(0, lineY, width, lineY);
  }
  // Exercise 4: Add horizontal stripes.

  // Changes on/off text depending on which event is true. If isOn is true then text will display on, otherwise will display off
  textSize(60);
  fill(100);
  if (isOn) {
    text("ON", width/2-40, 60);
  } else {
    text("OFF", width/2-40, 60);
  }

  // Draws lamp and changes lamp color
  noStroke();
  if (isOn) {
    fill(lampColor);
    // Exercise 7: Add rays of light
  } else {
    fill(0);
  }

  ellipse(x, y, diameter, diameter);

  // Makes the ball bounce from all four sides, + stops the ball from going into the header.
  if (x > width - diameter/2) {
    dx = -dx;
  }

  if (x < diameter/2) {
    dx = -dx;
  }

  if (y > width - diameter/2) {
    dy = -dy;
  }

  if (y < 80 + diameter/2) { 
    dy = -dy;
  }

  // Moxes the lamp position based on direction
  x = x + dx;
  y = y + dy;
  
}

void mousePressed() {
  // Turns the lmap and off
  // Exercise 3: Only if you click the top yellow bar
  
  if(mouseY<=80){
  isOn = !isOn;
  }
}


void mouseDragged() {
  // Attaches the ball to the mouse pointer enabling the user to drag the ball wherever they point their mouse.
  
  // Exercise 3: Only if you click on the lamp
  if(dist(x,y,mouseX,mouseY) <= diameter){
  x = mouseX;
  y = mouseY;
  }
}

void keyPressed() {
  // Changes lamp color
  
  //Exercise 3: Only if you press key 'R' or 'r'
  if(key == 'r' || key == 'R'){
  float newRed = random(100, 255);
  float newGreen = random(100, 255);
  float newBlue = random(100, 255);
  lampColor = color(newRed, newGreen, newBlue);
  }
}
