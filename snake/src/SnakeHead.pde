//Rafid Aayan
class SnakeHead {
  String direction;
  int w, h, x, y, bodylength;
  boolean hasMoved;
  ArrayList<SnakeBody> body;
  color ch = color(0),cb = color(128);
  SnakeHead(int x,int y) {
    w = 50;
    h = 50;
    this.x = x;
    this.y = y;
    bodylength = 7; //change to 1/2/3 later (7 is for testing)
    direction = "up";
    body = new ArrayList<SnakeBody>();
    body.add(new SnakeBody(x,y+50,cb));
    for (int i=1;i<bodylength;i++) {   
      body.add(new SnakeBody(body.get(i-1).x,body.get(i-1).y+50,cb));
    }   
    hasMoved=false;
  }
  
  void display() {
    for (int i=0;i<body.size();i++) {
      body.get(i).display();
    }  
    rectMode(CENTER);
    fill(ch);
    rect(x,y,w,h);
  }
  
  void move() {
    
    for (int i=body.size()-1;i>0;i--) {
      body.get(i).x=body.get(i-1).x;
      body.get(i).y=body.get(i-1).y;
    } 
    body.get(0).x=x;
    body.get(0).y=y;
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
