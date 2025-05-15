class pole {
  float poleX;
  float poleY;
  float poleL;
  float poleH;

  void display() {
    fill(150, 75, 0);
    for (int i =0; i<=10000; i+=400) {
      rect(poleX+i, poleY+400, poleL+50, poleH+150);
    }

    for (int i =0; i<=10000; i+=600) {
      rect(poleX+i, poleY, poleL+50, poleH+150);
    }
  }

  void move() {
    if (poleX <= 200) {
      poleX--;
    }
  }
}
