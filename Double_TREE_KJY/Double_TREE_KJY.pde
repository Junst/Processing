float theta;   

void setup() {
  size(800, 500);
}

void draw() {
  background(0);
  frameRate(30);
  stroke(255);
  float a = (mouseX / (float) width) * 90f;
  theta = radians(a);
  translate(width/2,height);
  line(0,0,0,-120);
  translate(0,-120);
  branchA(120);
  translate(0,-400);
  line(0,0,0,-120);
  translate(0,120);
  branchB(120);

}

void branchA(float h) {
  
  h *= 0.66;
  if (h > 1) {
    pushMatrix();    
    rotate(theta);   
    line(0, 0, 0, -h);  
    translate(0, -h); 
    branchA(h);       
    popMatrix();     
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branchA(h);
    popMatrix();
  }
}


void branchB(float h) {
  
  h *= 0.66;
  
  if (h > 1) {
    pushMatrix();    
    rotate(theta);   
    line(0, 0, 0, h);  
    translate(0, h); 
    branchB(h);       
    popMatrix();     
    
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, h);
    translate(0, h);
    branchB(h);
    popMatrix();
  }
}