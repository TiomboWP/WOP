

/*ArrayLists*/
HashMap<Integer, ArrayList<Button>> buttons;
HashMap<Integer, ArrayList<TextField>> textfields;
ArrayList<Player> players;
/*ArrayLists*/

/*Variables*/
int gameState = 1;
GameManager gm;
/*Variables*/

void setup() {
  //fullScreen();
  size(1080, 1920);

  buttons = new HashMap<Integer, ArrayList<Button>>();
  textfields = new HashMap<Integer, ArrayList<TextField>>();
  players = new ArrayList<Player>();
  
  gm = new GameManager();

  initMainButtons();
  initPlayerScreen();
  
  frameRate(20);
}

void draw() {
  showBg();
  if (gameState == MAINSCREEN_STATE) {
    showMain();
  } else if (gameState == PLAYERSCREEN_STATE) {
    showPlayerScreen();
  }
}

/*Events*/

void mousePressed(){
  
  mousePressedMain();
  mousePressedPlayerScreen();
  
}

void mouseReleased() {
  if (textfields.containsKey(gameState))
    for (TextField field : textfields.get(gameState)) {
      if (field.isIn(new PVector(mouseX, mouseY))) {
        //showVirtualKeyboard();
        break;
      }
    }
}

void showButtons() {
  if (buttons.containsKey(gameState))
    for (Button button : buttons.get(gameState)) {
      button.show();
    }
}

/*Events*/

/*Android Methods
 
 import android.view.inputmethod.InputMethodManager;
 import android.content.Context;
 
 void showVirtualKeyboard() {
 InputMethodManager imm = (InputMethodManager) getActivity().getSystemService(Context.INPUT_METHOD_SERVICE);
 imm.toggleSoftInput(InputMethodManager.SHOW_FORCED, 0);
 }
 
 void hideVirtualKeyboard() {
 InputMethodManager imm = (InputMethodManager) getActivity().getSystemService(Context.INPUT_METHOD_SERVICE);
 imm.toggleSoftInput(InputMethodManager.HIDE_IMPLICIT_ONLY, 0);
 }*/
