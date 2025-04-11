class avatar {
  float PosX = width/2; // 400;
  float PosY = height/2; // 300;
  boolean AvatarFloat =true;
  boolean AvatarRes =true;


  void display() {
    // Avatar Main Body
    fill(0, 255, 0); // fills in the color green for all following shapes
    triangle(PosX+100, PosY, PosX-400, PosY, PosX-400, PosY+100); // draws a triangle at 500,300,0,300,0,400 (head)
    rect(PosX-400, PosY, 300, 100); // draws a rectangle 0,300,300,100 (main body)
    line(PosX-300, PosY, PosX-100, PosY-250); //draws a line 100,300,300,550 (legs)
    line(PosX-175, PosY, PosX-50, PosY+250); // draws a line 225,300,350,500 (legs)

    // Avatar Eye
    fill(0, 0, 0); //fills in the color black for all following shapes
    circle(PosX-100, PosY, 30); // draws a circle 300,300,30 (eye)
  }
  void move() {
    // Avatar movement logic
    if (PosY==height) {
      AvatarFloat=false;
    }
    if (PosY==300) {
      AvatarFloat=true;
    }
    if (AvatarFloat) {
      PosY++;
    } else {
      PosY--;
    }
    if (PosX==700) {
      AvatarRes=false;
    }
    if (PosX==width/2) {
      AvatarRes=true;
    }
    if (AvatarRes) {
      PosX++;
    } else {
      PosX--;
    }
  }
  void jump() {
    if (key == ' ') {
      PosY-=30; // with the press of a key, shapes with PosY variable can be moved up by 30 in another words a jump button for the character
      // Avatar Wings
      fill(137, 137, 137); // fills in the color grey for all following shapes
      triangle(PosX-100, PosY-100, PosX-400, PosY+500, PosX-400, PosY-300); // draws a triangle 300,200,0,300,0,600 (wings)
    }
  }
}
