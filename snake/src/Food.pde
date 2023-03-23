//Rafid Aayan, Steven Babcock
class Food {
  int w,h,x,y;
  PImage food;
  
  Food(int x, int y) {
    w = 50;
    h = 50;
    this.x = x;
    this.y = y;
    food = loadImage("cherry.png");
  }
  
  void display() {
    rectMode(CENTER);
    fill(200,0,0);
    rect(x,y,w,h);
    imageMode(CENTER);
    food.resize(w,h);
    image(food, x, y);
  }


 boolean intersect(SnakeHead SnakeHead) {
   float d = dist(x, y, SnakeHead.x, SnakeHead.y);
    if (d<40) {
      return true;
    } else {
      return false;
    }
  }
}
