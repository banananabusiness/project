//Rafid Aayan, Steven Babcock 
SnakeHead snek1;
ArrayList<Food> foods = new ArrayList<Food>();
int frametime = 1000;
Time frame;

void setup() {
  size(950, 950);
  snek1 = new SnakeHead();
  frame = new Time(frametime);
  frame.start();
  
}

void draw() {
  background(255);
  snek1.display();
  if (frame.isFinished()) {
    snek1.move();
    frame.start();
  }
}



void infoPanel() {
  fill(255, 100);
  rectMode(CENTER);
  rect(400, 25, width, 50);
  fill(80, 80, 80);
  textSize(40);
  textAlign(CENTER);
  text("Score: "+ "   Level: "+ "      Time: "+ millis()/1000, 400, 40);
}
