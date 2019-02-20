color c = color(255, 255, 255);
color hoverc = color(200, 200, 200);
  
class Button {
  
  
  int x, y, xsize, ysize; 
  ButtonType type;
  String text;


  Button(int x, int y, int xsize, int ysize, ButtonType type, String text) {

    this.x = x;
    this.y = y;
    this.xsize = xsize;
    this.ysize = ysize;
    this.type = type;
    this.text = text;
  }

  void show() {
    fill(c);
    if(isIn(new PVector(mouseX, mouseY)) && mousePressed)
      fill(hoverc);
    
    if (type.equals(ButtonType.RECHTECK)) {

      rectMode(CENTER);

      rect(x, y, xsize, ysize, 25);
      
    } else if (type.equals(ButtonType.KREIS)) {
      
      ellipse(x, y, xsize, ysize);
      
    }

    fill(0);

    textAlign(CENTER, CENTER);
    textSize((xsize+ysize)/10);
    text(text, x, y);
  }

  boolean isIn(PVector vec) {
    if (type.equals(ButtonType.RECHTECK))
      if ((x-xsize/2 <= vec.x && vec.x <= x+xsize/2) && (y-ysize/2 <= vec.y && vec.y <= y+ysize/2)) {
        return true;
      }
    if (type.equals(ButtonType.KREIS))
      if (dist(x, y, vec.x, vec.y) < xsize/2) {
        return true;
      }

    return false;
  }
}

enum ButtonType {
  RECHTECK, KREIS;
}
