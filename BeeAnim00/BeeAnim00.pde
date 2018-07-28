float angle = 0;
float offset;
int x, y, z;

void setup() {
  background(0);
  size(800,800, P3D);
  x = width / 2;
  y = height / 2;
  z = -300;
}

void draw() {
  background(0);
  fill(0);
  stroke(0,255,255);
  translate(x,y,z); 
  
  //set origin.
  PVector origin = new PVector(x,y,z);
  
  rotateX(-PI /8);
  rotateY(-PI/4);
  PVector state = new PVector(x - 400, y, z - 400);
  PVector trans = PVector.sub(state, origin);
  translate(trans.x, trans.y, trans.z);
  for(int i = 0; i < 200; i += 5){
    for(int j = 0; j < 200; j += 5) {
      float offset = origin.dist(state) / 50;
      box(20, 150 + 100 * sin(angle + offset), 20);
      changeState(state, new PVector(20,0,0));
      //translate(20,0,0);
    }
    changeState(state, new PVector(-800,0,20));
    //translate(-400,0,20);
  }
  angle += 0.2;
}

void changeState(PVector state, PVector trans){
  state.add(trans);
  translate(trans.x, trans.y, trans.z);
}
