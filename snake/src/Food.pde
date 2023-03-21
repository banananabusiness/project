//Rafid Aayan, Steven Babcock
class Food {
  int w,h,x,y;
  
  Food(int x, int y) {
    w = 50;
    h = 50;
    this.x = x;
    this.x = y;
  }
  
  void display() {
    rectMode(CENTER);
    fill(255,0,0);
    rect(x,y,w,h);
  }
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
