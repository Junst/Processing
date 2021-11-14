class Planet {
  float theta;
  float diameter;
  float distance;
  float orbitspeed;
  
  Moon moon;
  
  Planet(float distance_, float diameter_) {
    distance= distance_;
    diameter = diameter_;
    theta= 0;
    orbitspeed = random(0.01,0.03);
    
    moon= new Moon(24,8);
  }
  
  void update() {
    theta+=orbitspeed;
    moon.update();
  }
  
  void display() {
    pushMatrix();
    rotate(theta);
    translate(distance,0);
    stroke(255);
    fill(#0AF9FF);
    ellipse(0,0,diameter,diameter);
    moon.display();
    
    popMatrix();
  }
}