void setup(){
  size(700,700);
}
void draw(){
  background(0);
  int leaves = int(random(2, 25));
  vine(33, leaves, 16);
}
void vine(int x, int numLeaves, int leafSize) {
  stroke(255);
  line(x,0,x, height);
  noStroke();
  int gap = height / numLeaves;
  int  direction = 1;
  for (int i =0; i <numLeaves; i++) {
    int r = int(random(gap));
    leaf(x, gap*i + r, leafSize, direction);
    direction = -direction;
  }
}

void leaf(int x, int y, int size, int dir){  //creates leaf shape on the vine
  pushMatrix();
  translate(x,y);   //move to position
  scale(size);      //scale to size
  beginShape();    // draw shape
  vertex(1.0*dir, -0.7);
  bezierVertex(1.0*dir,  -0.7, 0.4*dir, -1.0, 0.0, 0.0);
  bezierVertex(0.0, 0.0, 1.0*dir, 0.4, 1.0*dir, -0.7);
  endShape();
  popMatrix();
}
  
