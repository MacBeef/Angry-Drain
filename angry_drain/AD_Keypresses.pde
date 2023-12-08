/*Keypresses*/
HashMap<Integer, Boolean> keys = new HashMap<Integer, Boolean>();

void keyPressed() {
  keys.put(keyCode, true);
}
void keyReleased() {
  keys.put(keyCode, false);
}
