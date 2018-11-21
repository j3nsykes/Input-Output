void setup() {
  size(500, 500);
  background(200);
  //frameRate(25);
}

void draw() {
  
  float x=random(500);
  float y=frameCount*0.2;
// * means multiply
//  / means divide
// + means add
// - means subtract 


if(frameCount%20==0){
  //rect(x,y,w,h);
  noFill();
  stroke(y);
  strokeWeight(0.05);
  //rect(x, y, 100, 100);
  //stroke(100);
  ellipse(mouseX,mouseY,x,x);
}
}
