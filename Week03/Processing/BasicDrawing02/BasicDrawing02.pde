void setup(){
size(500,500);
background(250);
}


void draw(){


//draw a shape
strokeWeight(0.05);
stroke(40); //try changing the colours 
noFill();
//random position 
float x=random(500);
float y=random(500);
//rect(250,250,100,100);
ellipse(x,y,x,x);
}
