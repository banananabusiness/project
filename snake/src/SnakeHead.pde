//Rafid Aayan, Steven Babcock
class SnakeHead {
  String direction;
  int w, h, x, y, bodylength;
  boolean hasMoved;
  
  SnakeHead(int x,int y) {
    w = 50;
    h = 50;
    this.x = x;
    this.y = y;
    bodylength = 3;
    direction = "up";
    ArrayList<SnakeBody> body = new ArrayList<SnakeBody>();
    hasMoved=false;
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
    hasMoved=true;
  }
  
  void turn(String dir) {
    println(dir);
    if (hasMoved) {
    if (dir != direction) {
    if (dir == "up" && !(direction == "down")) {
      direction = "up";
      hasMoved=false;
    }
    if (dir == "left" && !(direction == "right")) {
      direction = "left";
      hasMoved=false;
    }
    if (dir == "right" && !(direction == "left")) {
      direction = "right";
      hasMoved=false;
    }
    if (dir == "down" && !(direction == "up")) {
      direction = "down";
      hasMoved=false;
    }
    }
    }
  }
}
