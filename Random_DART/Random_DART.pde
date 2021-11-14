PImage img;
PImage img2;
PImage img3;
PImage img4;

void setup() {
  size(621, 621);
  smooth();
  img = loadImage("Mark-Green.png");
  img2 = loadImage("Mark-Red.png");
  img3 = loadImage("Target.jpg");
  img4 = loadImage("Title-Game.jpg");
  image(img4, 0, 0, 621, 621);

}
void draw() {
}

//Bullet
void mousePressed() {
  if (mouseButton == LEFT) {
    image(img2, random(width), random(height), 41, 41);
  } else if
     (mouseButton == RIGHT) {
       image(img, random(width), random(height), 41, 41);
  }

}

//Game
void keyPressed() {
  if (key == 'n') {
    rect(0, 0, 621, 621);
    image(img3, 0, 0, 621, 621);
  }

//Menu
  if (key == 'm') {
    image(img4, 0, 0, 621, 621);
  }
}