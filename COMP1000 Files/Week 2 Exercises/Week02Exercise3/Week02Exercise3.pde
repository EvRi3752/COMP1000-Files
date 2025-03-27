float xPos;
float yPos;
color bodyColor = color(200, 100, 150);
int diameter = 100;
void setup(){
  size(600,600);  
  xPos = width/2;
  yPos = height/2;
  background(200);
  
}
void draw(){
  xPos++;
  fill(bodyColor);
  ellipse(xPos,yPos,diameter,diameter);
}
