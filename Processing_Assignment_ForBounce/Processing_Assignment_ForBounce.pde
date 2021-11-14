


int count = 10;
int char_speed = 5;


kero[] keros = new kero[count];


void setup(){
//background
size(850,850);
background(255);
ellipseMode(CENTER);
rectMode(CENTER);
 for (int i = 0; i < keros.length; i ++ ) {
    keros[i] = new kero(random(width),random(height),char_speed);
  }
}

void draw(){
  background(255);
    for (int i = 0; i < keros.length; i ++ ) {
    keros[i].display();
    keros[i].moving();
  }
}

class kero {
  float varX;
  float varY;
  float xDir;
  float yDir;
  float ballSpeed;
kero(float tempX, float tempY, float speed) {
    varX = tempX;
    varY = tempY;
    ballSpeed = speed;
    xDir = yDir = ballSpeed;
  }  
// Move
  void moving() { 
  // bounce
  varX+= xDir;
  varY+= yDir;
  if(varX <= 0 || varX >= width){
  xDir *= -1;
  } else if (varY <= 0 || varY >= height){
  yDir *= -1;
  }
  }
  
  void display() {
   // ellipseMode(CENTER);
   // rectMode(CENTER);  
//Face
fill(#F6FA1C);
ellipse(varX+-17,varY+1,141,87);
ellipse(varX+1,varY+1,177,87);



fill(#03FA14);
ellipse(varX+2,varY+1,98,104);

stroke(0);
fill(255);
ellipse(varX+-22,varY+1,27,27);

fill(255);
ellipse(varX+25,varY+1,27,27);

fill(0);
ellipse(varX+-22,varY+1,16,17);
fill(0);
ellipse(varX+25,varY+1,17,17);

noStroke();
fill(255);
ellipse(varX+3,varY+47,48,14);

fill(#FA0345);
triangle(varX+5,varY+51,varX+-9,varY+38,varX+16,varY+38);

fill(#F6FA1C);
arc(varX+2,varY+-16,107,74,radians(180),radians(360));
  }
  }