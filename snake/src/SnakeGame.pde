//Rafid Aayan, Steven Babcock 
SnakeHead snek1;
ArrayList<Food> foods = new ArrayList<Food>();
int frametime = 500;
Time frame;
int offsety = 50;
int score = 0;

void settings(){size(850, 850 + offsety);}

void setup() {
  snek1 = new SnakeHead(width/2,+height/2+offsety/2);
  frame = new Time(frametime);
  frame.start();
  foods.add(new Food(int(random(16))*50+25,int(random(16))*50+25+offsety,snek1));
}

void draw() {
  background(255);
  infoPanel();
  snek1.display();
  for (int i=0;i<foods.size();i++) {
      foods.get(i).display();
    }
  if (frame.isFinished()) {
    snek1.move();
    for (int i=0;i<foods.size();i++) {
      if (foods.get(i).intersect(snek1)) {
        foods.remove(i);
        foods.add(new Food(int(random(16))*50+25,int(random(16))*50+25+offsety,snek1));
        
        snek1.body.add(new SnakeBody(snek1.body.get(snek1.body.size()-1).x,snek1.body.get(snek1.body.size()-1).y,snek1.cb));
        snek1.bodylength++;
        score++;
      }
    }
    frame.start();
  }
}

void keyPressed() {
  println(keyCode);
  if (keyCode == 87) {snek1.turn("up");}
  else if (keyCode == 65) {snek1.turn("left");}
  else if (keyCode == 83) {snek1.turn("down");}
  else if (keyCode == 68) {snek1.turn("right");}
  else if (keyCode == 38) {snek1.turn("up");}
  else if (keyCode == 37) {snek1.turn("left");}
  else if (keyCode == 40) {snek1.turn("down");}
  else if (keyCode == 39) {snek1.turn("right");}
}

void infoPanel() {
  fill(255, 100);
  rectMode(CENTER);
  rect(width/2, 25, width, 50);
  fill(80, 80, 80);
  textSize(40);
  textAlign(CENTER);
  text("Score: "+ score +"   Level: "+ "      Time: "+ millis()/1000, width/2, 40);
}
