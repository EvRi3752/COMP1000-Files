int PosX;// Put your variables here
int PosY;

void setup(){
  size(500,500);
  PosX = 250;
  PosY = 250;
  // Set the starting values here.
}


void draw(){
  background(200,255,150);
  noStroke();
  
  fill(255,0,0);
  ellipse(PosX,PosY,100,100);
  
  fill(0,0,255);
  ellipse(PosX+50,PosY,50,50);   
  PosX++;
}
