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
  
  void move() {
    if (direction == "up") {
      y-=50;
    }
    else if (direction == "down") {
      y+=50;
    }
   else if (direction == "right") {
      x+=50;
    }
    else if (direction == "left") {
      x-=50;
    }
  }
  
  void turn(String dir) {
    if (dir == "up" && !(direction == "down")) {
      direction = "up";
    }
    if (dir == "left" && !(direction == "right")) {
      direction = "left";
    }
    if (dir == "right" && !(direction == "left")) {
      direction = "right";
    }
    if (dir == "down" && !(direction == "up")) {
      direction = "down";
    }
  }
}
