float rotationAngle = 0; 

void setup(){
  size(500, 500);
  background(255);
  stroke(255);
}

void draw(){
  background(255); 
  rotationAngle += 0.001; 
  drawFlower(250, 250, 15, 6, 1, rotationAngle); 
}

void drawFlower(float x, float y, float petalSize, int petalCount, float scaleFactor, float rotationAngle){
  fill(255, 0, 93, 51); 
  float distanceFactor = 0.6; 
  pushMatrix(); 
  translate(x, y); 
  rotate(rotationAngle); 
  
  for (int i = 0; i < petalCount; i++){
    float angle = TWO_PI / petalCount * i;
    float px = cos(angle) * petalSize * distanceFactor;
    float py = sin(angle) * petalSize * distanceFactor;
    ellipse(px, py, petalSize, petalSize); 
  }
  
  popMatrix(); 
  
  if (scaleFactor < 25) { 
    drawFlower(x, y, petalSize * 1.3, petalCount, scaleFactor * 1.3, rotationAngle + radians(30)); 
  }
}
