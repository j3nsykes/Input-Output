color col=color(255,0,0);
int posX=250;
int posY=250;

void setup(){
size(500,500);
rectMode(CENTER);
}

void draw(){
background(50); //remove if want to see the traces. 

//continous
//switch(key){

//case 'u':
//posY--;
//break;

//case 'd':
//posY++;
//break;

//case 'l':
//posX--;
//break;

//case 'r':
//posX++;
//break;

//}
noStroke();
fill(255);
rect(posX,posY,50,50);

}

void keyPressed(){
switch(key){

case 'u':
posY--;
break;

case 'd':
posY++;
break;

case 'l':
posX--;
break;

case 'r':
posX++;
break;

}

}
