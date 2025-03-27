float PosX;
float PosY; 
boolean AvatarFloat =true;
boolean AvatarRes =true;
float CloudX;
float CloudY = 0; 
boolean CloudStream =true;
boolean CloudStreamR =false;

void setup(){ 
  size(800,600); // sets the size of the window to 800x600
  PosX = width/2; // 400
  PosY = height/2; // 300
}

void draw(){ 
  background(#87CEEB); // changes the background of the window to sky blue 
  
  // sun
  fill(255,255,0);
  circle(0,0,200);
  
  // cloud 1
  fill(255);
  circle(CloudX+300, CloudY, 200); // 300, 0, 200
  circle(CloudX+400, CloudY, 200); // 400,0,200
  circle(CloudX+500,CloudY,200); // 500,0,200
  
  // cloud 2
  circle(CloudX+800,CloudY,200); // 800,0,200
  circle(CloudX+900,CloudY,200); // 900,0,200
  circle(CloudX+1000,CloudY,200); // 1000,0,200  
  
  // Grass
  fill(124,250,0);
  rect(0, 550, 1000, 1000);
  
  // Avatar Wings
  fill(137,137,137); // fills in the color grey for all following shapes
  triangle(PosX-100, PosY-100, PosX-400, PosY+500, PosX-400, PosY-300); // draws a triangle 300,200,0,300,0,600 (wings)
  
  // Avatar Main Body
  fill(0,255,0); // fills in the color green for all following shapes
  triangle(PosX+100, PosY, PosX-400, PosY, PosX-400, PosY+100); // draws a triangle at 500,300,0,300,0,400 (head)
  rect(PosX-400, PosY, 300, 100); // draws a rectangle 0,300,300,100 (main body)
  line(PosX-300, PosY, PosX-100, PosY-250); //draws a line 100,300,300,550 (legs)
  line(PosX-175, PosY, PosX-50, PosY+250); // draws a line 225,300,350,500 (legs)
  
  // Avatar Eye
  fill(0, 0, 0); //fills in the color black for all following shapes 
  circle(PosX-100, PosY, 30); // draws a circle 300,300,30 (eye)
  
  // Avatar movement logic
  if(PosY==height){
    AvatarFloat=false;
  }
  if(PosY==300){
    AvatarFloat=true;
  }
  if(AvatarFloat){
    PosY++;
  }
  else{
    PosY--;
  }
  if(PosX==700){
    AvatarRes=false;
  }
  if(PosX==width/2){
    AvatarRes=true;
  }
  if(AvatarRes){
    PosX++;
  }
  else{
    PosX--;
 }
 
 // cloud movement logic
 if(CloudX==-500){
   CloudStream=false;
 }
 if(CloudX==width/2){
   CloudStream=true;
 }
 if(CloudStream){
   CloudX--;
 }
 else{
   CloudX++;
 }
}

void keyPressed(){
 PosY-=30; // with the press of a key, shapes with PosY variable can be moved up by 30 in another words a jump button for the character
}

void mousePressed(){
  PosX = mouseX;
  PosY = mouseY;

}
