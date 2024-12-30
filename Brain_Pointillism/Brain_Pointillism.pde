/**
 * Brain Pointillism
 * by Paul Reiners. 
 * Animates a painting of a brain.
 */

PImage img;
int[] pointSizes = {64, 32, 16, 8, 4, 2, 1};
int startTime;

void setup() {
  size(340, 255);
  img = loadImage("brain.png");
  imageMode(CENTER);
  noStroke();
  background(255);
  startTime = millis(); // Record the start time
}

void draw() {
  int elapsedTime = (millis() - startTime) / 1000; // Time in seconds
  int idx = min(elapsedTime / 30, pointSizes.length - 1); // Ensure index is within bounds
  int pointSize = pointSizes[idx];

  // Randomly select coordinates from the image
  int x = int(random(img.width));
  int y = int(random(img.height));

  // Get pixel color from the image
  color pix = img.get(x, y);
  fill(pix, 128); // Apply color with some transparency

  // Draw the point
  ellipse(x, y, pointSize, pointSize);
}
