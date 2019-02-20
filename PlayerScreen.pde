final int PLAYERSCREEN_STATE = 1;

public void showPlayerScreen() {

  noStroke();
  textAlign(CENTER);

  int y = 200;
  textSize(200);
  fill(150);
  text("Spieler", width/2+5, y+5);
  fill(255);
  text("Spieler", width/2, y);

  showButtons();
  showPlayerList();
}

public void addPlayer(String name, Gender gender) {
  if(players.size() < 14)
  players.add(new Player(name, gender));
}

public void initPlayerScreen() {

  ArrayList<Button> playerScreenbuttons = new ArrayList<Button>();

  playerScreenbuttons.add(new Button(200, 1840, width/3, 100, ButtonType.RECHTECK, "zurueck"));

  playerScreenbuttons.add(new Button(width/2, 400, 450, 200, ButtonType.RECHTECK, "Spieler \n hinzufuegen"));

  buttons.put(PLAYERSCREEN_STATE, playerScreenbuttons);
}

public void showPlayerList() {
  int y = 550;

  for (Player p : players) {
    fill(255, 100);
    rectMode(CENTER);

    rect(width/2, y, width-200, 75, 20);

    showPlayer(p, y);

    y+= 90;
  }
}

void mousePressedPlayerScreen() {
  
  if(mouseX > width-160 && mouseX < width-100){
    int y = mouseY;
    if(y > 550 && y < 1810){
      
      int partY = y-500;
      int player = partY / 90;
      
      if(player < players.size())
      players.remove(player);
      
    }
  }
  if(mouseX > width-400 && mouseX < width-100){
    int y = mouseY;
    if(y > 500 && y < 1810){
      
      int partY = y-500;
      int player = partY / 90;
      
      if(player >= players.size())
      return;
      
      Player p = players.get(player);
      
      Gender g = p.getGender();
      
      if(g == Gender.male){
        p.setGender(Gender.female); 
      }else if(g == Gender.female){
        p.setGender(Gender.male); 
      }
      
    }
  }
  if(mouseX > width-160 && mouseX < width-160){
    int y = mouseY;
    if(y > 550 && y < 1810){
      
      int partY = y-500;
      int player = partY / 90;
      
      if(player < players.size())
      players.remove(player);
      
    }
  }
  
  int bCount = 0;
  if (buttons.containsKey(gameState))
    for (Button button : buttons.get(gameState)) {
      PVector mouse = new PVector(mouseX, mouseY);
      if (button.isIn(mouse)) {
        if (bCount == 0) {
          gameState = MAINSCREEN_STATE;
        } else if (bCount == 1) {
          addPlayer("Spieler " + (players.size()+1), Gender.male);
        }
      }
      bCount++;
    }
}

public void showPlayer(Player p, int y) {
  
  textAlign(LEFT, CENTER);
  textSize(50);
  
  fill(200, 12, 12);
  text("X", width-150, y);
  
  fill(0);
  text(p.getName(), 150, y);

  textAlign(RIGHT, CENTER);
  text(p.getGender().getDef(), width-200, y);
  
}
