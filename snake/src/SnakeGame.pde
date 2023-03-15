SnakeHead snek1;
ArrayList<Food> foods = new ArrayList<Food>();

void setup() {
  size(800, 800);
  snek1 = new SnakeHead();
}

void draw() {
  snek1.display();
}
