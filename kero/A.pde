class A {
  
  float varX;
  float varY;
  float xspeed;
  float yspeed;
  
  A() {
    xspeed=random(-10,10);
    yspeed=random(-10,10);
  }
  
  void update() {
    varX +=xspeed;
    varY +=yspeed;
  }
   void bounce(){
    if((varX>width-100)||(varX<-50)){
      xspeed=xspeed*-1;
    }
    if((varY>height-100)||(varY<-50)){
      yspeed=yspeed*-1;
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