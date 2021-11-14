class Moon {
  float theta;
  float diameter;
  float distance;
  float orbitspeed;
  
  Moon(float distance_, float diameter_) {
    distance = distance_;
    diameter = diameter_;
    theta=0;
    orbitspeed = random(-0.1,0.1);}
    
    void update() {
      theta += orbitspeed;
    }
    
    void display(){
      pushMatrix();
      rotate(theta);
      translate(distance,0);
      stroke(0);
      fill(#00FF74);
      ellipse(0,0,diameter,diameter);
      popMatrix();
    }}