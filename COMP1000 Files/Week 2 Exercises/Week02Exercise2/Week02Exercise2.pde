float xPos;
float yPos;
color bodyColor = color(200, 100, 150);
int diameter = 100;
void setup(){
  size(600,600);  
  xPos = width/2;
  yPos = height/2; 
  
}
void draw(){
  background(200);
  
  fill(bodyColor);
  ellipse(xPos,yPos,diameter,diameter);
}
