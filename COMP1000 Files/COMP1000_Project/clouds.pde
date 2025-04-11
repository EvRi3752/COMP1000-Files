class clouds {
  float CloudX;
  float CloudY = 0;
  boolean CloudStream =true;
  boolean CloudStreamR =false;

  void display() {
    // cloud 1
    fill(255);
    circle(CloudX+300, CloudY, 200); // 300, 0, 200
    circle(CloudX+400, CloudY, 200); // 400,0,200
    circle(CloudX+500, CloudY, 200); // 500,0,200

    // cloud 2
    circle(CloudX+800, CloudY, 200); // 800,0,200
    circle(CloudX+900, CloudY, 200); // 900,0,200
    circle(CloudX+1000, CloudY, 200); // 1000,0,200
  }
  void move() {
    // cloud movement logic
    if (CloudX==-500) {
      CloudStream=false;
    }
    if (CloudX==width/2) {
      CloudStream=true;
    }
    if (CloudStream) {
      CloudX--;
    } else {
      CloudX++;
    }
  }
}
