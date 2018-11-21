float x, y, newX, newY,w,h;

void setup() {
  size(500, 500);
}


void draw() {
  background(250);

  //draw a shape
  strokeWeight(0.05);
  stroke(40); //try changing the colours 
  noFill();
  //random position 
  //float x=random(500);
  float y=random(500);


  //rect(250,250,100,100);
  //for(int x=100;x<500;x+=100){
  //ellipse(x,100,100,100);

  //}
  for (int i=0; i<50; i++) {
    x =random(0, 500);
    y =random(0, 500);
    w = random(0, 250);
    h= random(0, 250);
    ellipse(x, y, w, h);
  }
}
