//Click me
class Mover {
  PVector loc;
  PVector vel;
  int d;
  int x;
  color c;

Mover() {
  loc = new PVector(random(50,width-50), random(50,height-50));
  vel = PVector.random2D();
  d = 50;
  c = color(random(360), 100, 100);
}

  void display() {
    fill(c);
    ellipse(loc.x, loc.y, d, d);
  }

  void bounce() {
    loc.add(vel);
    if(loc.x +d/2 > width){
      vel.x = -vel.x;
    }
    if(loc.x -d/2 <0){
      vel.x = -vel.x;
    }
    if(loc.y + d/2> height){
      vel.y = -vel.y;
    }
    if(loc.y -d/2 < 0 ){
      vel.y = -vel.y;
    }
}
}






