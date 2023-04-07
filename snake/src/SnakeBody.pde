//Rafid Aayan
class SnakeBody {
  int w, h, x, y;
  color cbb = 128;
  
  SnakeBody(int x, int y, color cb) {
    w = 50;
    h = 50;
    this.x = x;
    this.y = y;
    cbb = cb;
  }
  
  void display() {
    rectMode(CENTER);
    fill(cbb);
    rect(x,y,w,h);
  }
  
}
