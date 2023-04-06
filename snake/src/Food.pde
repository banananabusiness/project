//Rafid Aayan, Steven Babcock
class Food {
  int w, h, x, y;
  PImage food;

  Food(int x, int y, SnakeHead SnakeHead) {
    w = 50;
    h = 50;
    this.x = x;
    this.y = y;
    food = loadImage("cherry.png");

    boolean b = true;
    boolean d = false;
    while (b) {
      if (d) {
        this.x = int(random(16))*50+25;
        this.y = int(random(16))*50+25+offsety;
        d = false;
      }
      for (int i=0; i<SnakeHead.body.size(); i++) {
        if (dist(this.x, this.y, SnakeHead.body.get(i).x, SnakeHead.body.get(i).y)<40) {
          d = true;
          break;
        }
      }
      if (this.intersect(SnakeHead)){d = true;}
      
      if (!d) {b = false;} //im not good enough at code to do this better
    }
  }

  void display() {
    rectMode(CENTER);
    fill(200, 0, 0);
    rect(x, y, w, h);
    imageMode(CENTER);
    food.resize(w, h);
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
