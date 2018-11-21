void setup() {
  size(500, 500);
  background(220);
  //frameRate(25);
}

void draw() {

  float x=random(500);
  float y=frameCount*0.2;
  // * means multiply
  //  / means divide
  // + means add
  // - means subtract 


  if (frameCount%20==0) {
    //rect(x,y,w,h);
    noFill();

    strokeWeight(0.05);
    //rect(x, y, 100, 100);
    //stroke(100);

    for (int i=0; i<10; i++) {
      
      color col=color(random(255),55);
      stroke(col);
      float posX=random(500);
      float posY=random(500);
      float w=random(255);
      float h=random(255);
      ellipse(posX, posY, w, w);
    }
  }
}
