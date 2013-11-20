// click sketch to start
int l = 90;
Mover laura;
Mover [] Movers = new Mover[l];
boolean run;
PImage skittles;

void setup (){
  size(1000, 800);
  colorMode(HSB, 360, 100, 100);
  skittles = loadImage("skittles.jpg");
  noStroke();
  for(int i = 0; i < l; i++){
    Movers [i] = new Mover();
  }
  laura = new Mover();
  run = false;
}

void draw (){
  background(0);
  image(skittles, 0, 0, 1000, 800); 
  for(int i = 0; i < l; i++){
    Movers [i].display();
  }
  if(run){
  laura.display();
  laura.bounce();
   for(int i = 0; i < l; i++){
    Movers [i].display();
    Movers [i].bounce();
  }
}
else{
  laura.display();
   for(int i = 0; i < l; i++){
    Movers [i].display();
  }
}
}

void mousePressed(){
  run = !run;
}


