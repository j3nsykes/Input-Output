color col=color(255,0,0);
int posX=250;
int posY=250;

void setup(){
size(500,500);
rectMode(CENTER);
}

void draw(){
background(50); //remove if want to see the traces. 


noStroke();
fill(255);
rect(posX,posY,50,50);

}

void keyPressed(){
switch(keyCode){

case UP:
posY--;
break;

case DOWN:
posY++;
break;

case LEFT:
posX--;
break;

case RIGHT:
posX++;
break;

}

}
