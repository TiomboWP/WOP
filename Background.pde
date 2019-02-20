float bg = 0;
float bgchange = 1;

void showBg() {
  rectMode(CORNER);
  noStroke();
  float scale = ((float)height)/255;
  for (int i= 0; i < 256; i++) {
    fill(0+bg, 255-bg, i);
    rect(0, i*scale, width, scale);
  }
  
  bg += bgchange;
  if(bg > 255 || bg < 0){
    bgchange *= -1;
  }
} 
