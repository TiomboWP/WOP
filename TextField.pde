class TextField {

  int x, y, xsize, ysize; 
  color c;
  String text, showText; 
  boolean inUse;

  TextField(int x, int y, int xsize, int ysize, color c, String showText) {

    this.x = x;
    this.y = y;
    this.xsize = xsize;
    this.ysize = ysize;
    this.c = c;
    this.text = "";
    this.showText = showText;
    inUse = false;
  }

  boolean isIn(PVector vec) {
    if ((x-xsize/2 <= vec.x && vec.x <= x+xsize/2) && (y-ysize/2 <= vec.y && vec.y <= y+ysize/2)) {
      return true;
    }

    return false;
  }

  void show() {
    fill(c);

    rectMode(CENTER);

    rect(x, y, xsize, ysize);

    textAlign(CENTER);

    if (text != "" || inUse) {

      fill(75);
      textSize(xsize/8);
      textAlign(LEFT);
      text(this.showText, x-xsize/2, y-ysize/2-5);
      //Indikator für aktiviertes Textfeld
      if (inUse) {
        noStroke();
        fill(0);
        rectMode(RIGHT);
        rect(x+xsize/2, y+ysize/2, x+xsize/2-4, y-ysize/2);
      }
    } else {

      fill(75);
      textSize(xsize/8);
      text(this.showText, x, y+ysize/3);
      
    }

    fill(0);

    textAlign(CENTER);
    textSize((xsize+ysize)/8);
    text(text, x, y + ysize/4);
  }
}
