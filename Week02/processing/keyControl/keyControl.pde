color col=color(255,0,0);
void setup(){
size(500,500);
}

void draw(){
background(col);


switch(key){

case 'u':
col=color(255,200,0);
break;

case 'd':
col=color(100,200,100);
break;

case 'l':
col=color(255,30,200);
break;

case 'r':
col=color(55,200,200);
break;

}

}
