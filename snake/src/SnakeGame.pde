//Rafid Aayan, Steven Babcock 
SnakeHead snek1;
ArrayList<Food> foods = new ArrayList<Food>();
int frametime = 1000;
Time frame;
int offsety = 50;

void settings(){size(950, 950 + offsety);}

void setup() {
  snek1 = new SnakeHead(width/2,+height/2+offsety/2);
  frame = new Time(frametime);
  frame.start();
  
}

void draw() {
  background(255);
  infoPanel();
  snek1.display();
  if (frame.isFinished()) {
    snek1.move();
    frame.start();
  }
}

void keyPressed() {
  //println(keyCode);
  if (keyCode == 87) {snek1.turn("up");}
  else if (keyCode == 65) {snek1.turn("left");}
  else if (keyCode == 83) {snek1.turn("down");}
  else if (keyCode == 68) {snek1.turn("right");}
}

void infoPanel() {
  fill(255, 100);
  rectMode(CENTER);
  rect(width/2, 25, width, 50);
  fill(80, 80, 80);
  textSize(40);
  textAlign(CENTER);
  text("Score: "+ "   Level: "+ "      Time: "+ millis()/1000, width/2, 40);
}
