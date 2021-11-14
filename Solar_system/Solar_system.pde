Planet[] planets = new Planet[5];

void setup(){
  size (500,500);
  
  for ( int i=0; i<planets.length; i++) {
    planets[i] = new Planet(60+i*36,24);
  }}
  
  void draw(){
    background(0);
    noFill();
   stroke(255,90);
  ellipse(0, 0, 180, 180);
  ellipse(0, 0, 160, 160);
  
  noStroke();
  fill(255, 100, 0);
  ellipse(0, 0, 100, 100);
    
    
    //SUn
    
    pushMatrix();
    translate(width/2,height/2);
    stroke(0);
    fill(#FFD500);
    ellipse(0,0,64,64);
    
    
    for (int i = 0; i< planets.length; i++){
      
      planets[i].update();
      planets[i].display();
      
    }
    popMatrix();
  }