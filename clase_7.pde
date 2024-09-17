void setup() {
  size(800, 800);
  background(0);
  noStroke();
}

void draw(){
  drawTarget(width*0.25, height*0.4, 200, 4);
  drawTarget(width*0.5, height*0.8, 300, 10);
  drawTarget(width*0.7, height*0.3, 120, 8);
  drawTarget(width*0.3, height*0.2, 250, 11);
  drawTarget(width*0.8, height*0.5, 320, 9);
}

void drawTarget(float xloc, float yloc, int size, int num){
  float grayvalues = 255/4;
  float steps = size/ random( num, 10);
  
   for (int i = 0; i< num; i++){
    fill(i*grayvalues);
    ellipse(xloc, yloc, size - i*steps, size - i*steps);
  }
}
