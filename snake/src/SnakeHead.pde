//Rafid Aayan, Steven Babcock
class SnakeHead {
  String direction;
  int w, h, x, y, bodylength;
  
  SnakeHead() {
    w = 50;
    h = 50;
    x = width/2;
    y = height/2;
    bodylength = 3;
    direction = "up";
    ArrayList<SnakeBody> body = new ArrayList<SnakeBody>();
  }
  
  void display() {
    rectMode(CENTER);
    fill(0);
    rect(x,y,w,h);
  }
}
