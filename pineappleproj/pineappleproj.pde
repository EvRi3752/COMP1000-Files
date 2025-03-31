float PineX;
float PineY;
float PineXX;
float PineYY;


void setup(){
 size(800,600); 
}

void pineApple(){
fill(0,255,00);
triangle(400,100,600,400,250,400);
fill(255,255,0);
ellipse(PineX+400,PineY+300,PineXX+200, PineYY+300);
fill(0);
circle(350,250,30);
circle(425,250,30);
}

void draw(){
pineApple();  
}
