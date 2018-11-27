color col=color(255,0,0);
int posX=250;
int posY=250;

void setup(){
size(500,500);
rectMode(CENTER);
background(50); //remove if want to see the traces. 
}

void draw(){


strokeWeight(0.05);
stroke(255);
noFill();
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
