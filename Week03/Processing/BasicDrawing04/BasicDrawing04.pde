float x,y,newX,newY;

void setup(){
size(500,500);

}


void draw(){
background(250);

//draw a shape
strokeWeight(0.05);
stroke(40); //try changing the colours 
noFill();
//random position 
//float x=random(500);
//float y=random(500);

x=frameCount*0.2;
newX =width-x;
y=frameCount*0.2;
newY=height-y;
//rect(250,250,100,100);
ellipse(x,y,100,100);
stroke(0); //try changing the colours 
ellipse(newX,newY,200,200);
}
