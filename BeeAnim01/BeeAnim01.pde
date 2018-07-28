float angle = 0;
float radius = 50;
float x,y, offsetX, offsetY;
//float x1,y1,z1;

void setup(){
  size(500,500);
  x = width / 2;
  y = height / 2;
  //z = -200;
}

void draw() {
  background(0);
  //fill(0,0.3);
  noFill();
  float r = 128 + 127 * sin(angle);
  float g = 128 + 127 * cos(angle);
  float b = 128 - 127 * sin(angle);
  stroke(#ffff00);
  strokeWeight(5);
  translate(x,x);
  //rotateY(angle);
  //x1 = x;
  //y1 = y;
  //z1 = z;
  for(int i = -200; i <= 200; i += 50) {
    for(int j = -200; j <= 200; j += 50) {
      offsetX = 10 * tan(PI * angle / 16);
      offsetY = 10 * tan(PI * angle / 16);
      ellipse(i,j ,radius + offsetX,radius + offsetY);
    }
  }
  
  stroke(#ff0000);
  
  
  angle += 0.2;
}
