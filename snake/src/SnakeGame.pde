//Rafid Aayan, Steven Babcock 
SnakeHead snek1;
ArrayList<Food> foods = new ArrayList<Food>();
int time = millis()/1000;

void setup() {
  size(800, 800);
  snek1 = new SnakeHead();
}

void draw() {
  snek1.display();
}


void infoPanel() {
  fill(255, 100);
  rectMode(CENTER);
  rect(400, 25, width, 50);
  fill(80, 80, 80);
  textSize(40);
  textAlign(CENTER);
  text("Score: "+ "   Level: "+ "      Time: "+ time, 400, 40);
}
