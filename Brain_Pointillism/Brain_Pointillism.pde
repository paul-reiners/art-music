/**
 * Brain Pointillism
 * by Paul Reiners.
 * Animates Maryam's painting of a brain.
 */

PImage img;
int[] pointSizes = {32, 16, 8, 4, 2, 1};
int startTime;
int totalAnimationTime = 360; // Animation duration in seconds

void setup() {
  size(274, 216);
  img = loadImage("../data/art/derived/brain_black_bck.png");
  startTime = millis();
  noStroke();
  frameRate(30);
}

void draw() {
  int elapsedTime = (millis() - startTime) / 1000; // Time in seconds
  if (elapsedTime > totalAnimationTime) {
    exit(); // Exit after 6 minutes (360 seconds)
  }
  
  int idx = min(elapsedTime / 60, pointSizes.length - 1); // Choose point size based on elapsed time
  int pointSize = pointSizes[idx];

  // Randomly pick a coordinate and retrieve the pixel color
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pixelColor = img.get(x, y);

  // Draw point with transparency
  fill(pixelColor, 128);
  circle(x, y, pointSize);

  saveFrame("frames/#####.tif");
}
