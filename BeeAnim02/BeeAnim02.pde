float x,y;
int counter;

void setup() {
  size(500, 500);
  background(0);
  stroke(0,255,0);
  //translate(width / 2, height / 2);
}

float translate_x (float x, float y, int i) {
  switch(i){
    case 0:
    return 0.85*x + 0.04*y;
    case 1:
    return ((-0.15*x)+ 0.28*y);
    case 2:
    return 0.20*x+(-0.26)*y;
    default:
    return 0;
  }
}


float translate_y (float x, float y, int i) {
  switch(i){
    case 0:
    return (-.04)*x + 0.85*y + 1.6;
    case 1:
    return .26*x + 0.24*y + .44;
    case 2:
    return 0.23*x + 0.22*y + 1.6;
    default:
    return 0.16 * y;
  }
}

void draw() {
  for(int j = 0; j < 400; j ++) {
    float px = map(x, -2.2,3,0,width);
    float py = map(y, 0, 10, height, 0);
    point(px, py);
    float ran = random(1);
    int i = int(random(4));
    if(ran <= 0.01) i = 3;
    else if (ran <= 0.86) i = 0;
    else if (ran <= 0.93) i = 1;
    else i = 2;
    
    float old_x = x;
    x = translate_x(x,y,i);
    y = translate_y(old_x,y,i);
  }
  counter += 1;
  //if(counter > 200){
  //  counter = 0;
  //  x = 0;
  //  y = 0;
  //  background(0);
  //}
}
