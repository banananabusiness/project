void draw() {
  if (!play) {
    startScreen();
  } else {
    noCursor();
    background(0,200,0);
  }
}
void startScreen() {
  background(0);
  fill(255);
  textAlign(CENTER);
  text("Press any key to begin", width/2, height/2);
  if (keyPressed) {
    play = true;
  }
}
