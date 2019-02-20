final int MAINSCREEN_STATE = 0;

void showMain() {

  noStroke();
  textAlign(CENTER);

  int whY = 350;
  textSize(180);
  fill(150);
  text("Wahrheit", width/2+5, whY+5);  
  fill(255);
  text("Wahrheit", width/2, whY);  

  int orY = 450;
  textSize(100);
  fill(150);
  text("oder", width/2+5, orY+5);  
  fill(255);
  text("oder", width/2, orY); 

  int PfY = 610;
  textSize(180);
  fill(150);
  text("Pflicht", width/2+5, PfY+5);
  fill(255);
  text("Pflicht", width/2, PfY);
  
  showButtons();
  
}

void initMainButtons() {

  ArrayList<Button> mainButtons = new ArrayList<Button>();

  mainButtons.add(new Button(width/2, 1000, width/2, 120, ButtonType.RECHTECK, "Start!"));
  mainButtons.add(new Button(width/2, 1150, width/2, 120, ButtonType.RECHTECK, "Spieler"));
  //mainButtons.add(new Button(width/2, 1300, width/2, 120, ButtonType.RECHTECK, "Fragen"));

  buttons.put(MAINSCREEN_STATE, mainButtons);
}

/*ButtonEvent*/

void mousePressedMain() {
  int bCount = 0;
  if (buttons.containsKey(gameState))
    for (Button button : buttons.get(gameState)) {
      PVector mouse = new PVector(mouseX, mouseY);
      if (button.isIn(mouse)) {
        if(bCount == 0){
          gm.startGame();
        }else if(bCount == 1){
          gameState = PLAYERSCREEN_STATE;
        }//else if(bCount == 2){
         //gm.startGame();
        //}
      }
      bCount++;
    }
}
