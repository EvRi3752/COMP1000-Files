int yPos=0; // declaration, assignment <- global variable
boolean fallingDown =true; 

void setup(){
 size(300,700);
}

void draw(){
  background(0);
 fill(255,0,0);
 circle(width/2,yPos,50);
 if(yPos==height){
    fallingDown=false;  
 }
 if(yPos==0){
   fallingDown=true; 
 }
 if(fallingDown){
   yPos++; 
 }
 else{
   yPos--;
 }
}

void mousePressed(){

}

void keyPressed(){

}
