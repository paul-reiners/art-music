/**
 * Brain Pointillism
 * by Paul Reiners. 
 * 
 * Animates a painting of a brain. 
 */

PImage img, img_2;
int smallPoint, largePoint, medPoint, t1, t2, i;
int[] pointSizes = { 64, 32, 16, 8, 4, 2, 1 };
int start = millis();

void setup() {
  size(340, 255);
  img = loadImage("brain.png");
  smallPoint = 2;
  medPoint = 8;
  largePoint = 40;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() {
  int durInSeconds = (millis() - start) / 1000;
  int idx = durInSeconds / 30;
  idx = min(idx, pointSizes.length);
    int pointSize = pointSizes[durInSeconds / 30];
      int x = int(random(img.width));
      int y = int(random(img.height));
      color pix = img.get(x, y);
        fill(pix, 128);
        ellipse(x, y, pointSize, pointSize);
    // saveFrame("frames/####.tif"); 
}
