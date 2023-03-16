//Rafid Aayan, Steven Babcock
class SnakeBody {
  int w, h, x, y;
  
  SnakeBody(int x, int y) {
    w = 50;
    h = 50;
    this.x = x;
    this.x = y;
  }
  
  void display() {
    rectMode(CENTER);
    fill(128,0,0);
    rect(x,y,w,h);
  }
  
}
