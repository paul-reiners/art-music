/**
 * Brain Pointillism
 * by Paul Reiners. 
 * 
 * Animates a painting of a brain. 
 */

PImage img;
int smallPoint, largePoint, medPoint;

void setup() {
  size(340, 255);
  img = loadImage("brain.png");
  smallPoint = 4;
  medPoint = 8;
  largePoint = 40;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() {
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
    fill(pix, 128);
    ellipse(x, y, medPoint, medPoint);
}
