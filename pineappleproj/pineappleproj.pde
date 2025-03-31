float PineX;
float PineY;
float PineXX;
float PineYY;


void setup(){
 size(800,600); 
}

void pineApple(){
// Pineapple Head
fill(0,255,00);
triangle(400,100,600,400,250,400);
fill(255,255,0);
ellipse(PineX+400,PineY+300,PineXX+200, PineYY+300);
fill(0);
circle(350,250,30);
circle(425,250,30);
line(343,307,437,307);

// Body - Suit
circle(319+75,450,200);
circle(473-75,450,200);
fill(255,255,255);
triangle(346,351,441,351,393,436);
fill(255,0,0);
triangle(376,351,410,351,392,436);
}

void draw(){
pineApple();
// println(mouseX,mouseY);
}
