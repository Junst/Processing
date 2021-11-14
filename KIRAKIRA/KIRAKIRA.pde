import processing.video.*; 
Particle[] particles; 
  
 Capture men; 
 
 
 void setup() { 
   size(640, 360); 
 

   men = new Capture(this, width, height); 
   men.start(); 
   particles = new Particle [2500]; 
   for (int i = 0; i < particles.length; i++) { 
     particles[i] = new Particle(); 
   } 
   background(0); 
 } 
 
 
 void captureEvent(Capture video) { 
   video.read(); 
 } 
 
 
 void draw() { 
 
 
   for (int i = 0; i < particles.length; i++) { 
     particles[i].display(); 
     particles[i].move(); 
   } 
 } 