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
    switch (direction) { //change to rotate textures when we get textures
  case "up": rect(x,y,w,h,25,25,10,10); break; 
  case "left": rect(x,y,w,h,25,10,10,25); break; 
  case "down": rect(x,y,w,h,10,10,25,25); break; 
  case "right": rect(x,y,w,h,10,25,25,10); break; 
  }
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
      if (y==25) {y=height-25;}
    }
    else if (direction == "down") {
      y+=50;
      if (y==height+25) {y=75;}
    }
   else if (direction == "right") {
      x+=50;
      if (x==width+25) {x=25;}
    }
    else if (direction == "left") {
      x-=50;
      if (x==-25) {x=width-25;}
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
  
  boolean intersect(SnakeHead SnakeHead) {
    boolean d = false;
    for (int i=0; i<SnakeHead.body.size(); i++) {
        if (dist(this.x, this.y, SnakeHead.body.get(i).x, SnakeHead.body.get(i).y)<40) {
          d = true;
          break;
        }
  }
  //if (x<0||x>width||y<50||y>height) {
  //  d=true;
  //}
  return d;
}
}
