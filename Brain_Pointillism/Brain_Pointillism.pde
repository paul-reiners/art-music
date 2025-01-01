/**
 * Brain Pointillism
 * by Paul Reiners. 
 * Animates Maryam's painting of a brain.
 */
 
PImage img;
int[] pointSizes = {32, 16, 8, 4, 2, 1};
int startTime;

void setup() {
  size(274, 216);
  img = loadImage("../data/art/derived/brain_black_bck.png");
  startTime = millis(); // Record the start time
  noStroke(); // Turn off stroke for pointillism effect
  frameRate(30); // Set the frame rate to 30 FPS for smooth animation
}

void draw() {
  int elapsedTime = (millis() - startTime) / 1000; // Time in seconds
  if (elapsedTime > 360) {
    exit();
  }
  int idx = min(elapsedTime / 60, pointSizes.length - 1); // Ensure index is within bounds
  int pointSize = pointSizes[idx];

  // Randomly select coordinates from the image
  int x = int(random(img.width));
  int y = int(random(img.height));

  // Get pixel color from the image
  color pixelColor = img.get(x, y);
  fill(pixelColor, 128); // Apply color with some transparency

  // Draw the point
  circle(x, y, pointSize);
  
  saveFrame("frames/#####.tif");
}
