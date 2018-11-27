color col=color(255,0,0);
void setup(){
size(500,500);
}

void draw(){
background(col);


switch(keyCode){

case UP:
//do something 
col=color(255,200,0);
break;

case DOWN:
//do something different 
col=color(100,200,100);
break;

case LEFT:
col=color(255,30,200);
break;

case RIGHT:
col=color(55,200,200);
break;

}

}
