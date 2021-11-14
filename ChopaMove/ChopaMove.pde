void setup()
{
size(500,500);
}

void draw()
{
  background(159,201,60);

//cape
fill(255,178,245);
triangle(mouseX+110, mouseY+176, mouseX+0, mouseY+11, mouseX+-110, mouseY+176);


//body
stroke(242,203,97);
fill(242,203,97);
rect(mouseX+-63, mouseY+74, 127, 70, 24);

//arm
triangle(mouseX+125, mouseY+107, mouseX+125, mouseY+65, mouseX+73, mouseY+92);
triangle(mouseX+-73, mouseY+92, mouseX+-125, mouseY+65, mouseX+-125, mouseY+107);

//legs
  line(mouseX+35,mouseY+154,pmouseX+38,pmouseY+218);
  line(mouseX+-30,mouseY+218,pmouseX+-25,pmouseY+154);

//pants
stroke(152,0,0);
fill(152,0,0);
rect(mouseX-64,mouseY+125,129,30,24);




//skin
fill (242,203,97);
stroke(242,203,97);
ellipse (mouseX,mouseY-31,207,215);
noStroke();
noFill();

// eyebrows
fill(0);
rect(mouseX-77,mouseY-85,50,5);
rect(mouseX+23,mouseY-85,50,5);
  
// eyes
fill(255);
ellipse(mouseX-50,mouseY-42,39,38);
ellipse(mouseX+50,mouseY-43,39,38);
fill(0);
ellipse(mouseX-50,mouseY-42,28,28);
ellipse(mouseX+50,mouseY-43,28,28);

//mouth
stroke(255,178,245);
fill(255,178,245);
ellipse(mouseX-0, mouseY+38,15,18);
noFill();
stroke(0);
line(mouseX, mouseY-9,mouseX,mouseY+23);
noStroke();
noFill();
stroke(0, 0, 0);
curve(mouseX+1, mouseY-116, mouseX-32, mouseY+22, mouseX-0, mouseY+24, mouseX+36, mouseY-37);
noFill();
stroke(0, 0, 0);
curve(mouseX-39, mouseY-104, mouseX+30, mouseY+22, mouseX-0, mouseY+23, mouseX+34, mouseY-40);


//nose
fill(103,153,255);
stroke(103,153,255);
ellipse(mouseX-0,mouseY-8,20,20);



//cap
strokeWeight(12);
strokeCap(ROUND);
stroke(255,178,245);
line(mouseX-163, mouseY-105, mouseX+163, mouseY-105);

fill(255,178,245);
stroke(255,178,245);
rect(mouseX-80, mouseY-260, 150, 150, 7);

fill(255);
stroke(255);
noFill();
strokeWeight(10.0);
strokeJoin(ROUND);
beginShape();
vertex(mouseX+30, mouseY-120);
vertex(mouseX-0, mouseY-150);
vertex(mouseX+30, mouseY-180);
endShape();

fill(255);
stroke(255);
noFill();
strokeWeight(10.0);
strokeJoin(ROUND);
beginShape();
vertex(mouseX-30, mouseY-120);
vertex(mouseX-0, mouseY-150);
vertex(mouseX-30, mouseY-180);
endShape();

//neck ribbon
noFill();
stroke(255,178,245);
curve(mouseX-27, mouseY-5, mouseX+54, mouseY+69, mouseX-53, mouseY+68, mouseX+-59, mouseY-52);
}