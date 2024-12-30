/**
 * Brain Pointillism
 * by Paul Reiners. 
 * Animates Maryam's painting of a brain.
 */
 
//TODO Further Enhancements:
//Efficiency with Precomputed Points:

//If you want to speed up the animation for many points, you could create a list of precomputed random coordinates and loop through them. This would allow you to avoid recalculating random values for every frame, which can be a performance hit. But this is more of an optimization for when you scale up your project.
//Smooth Animation (Optional):

//If you want to control the animation speed, consider adjusting frameRate() or implementing a custom timing mechanism (e.g., frameCount).

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
  if (elapsedTime > 98) {
    exit();
  }
  int idx = min(elapsedTime / 30, pointSizes.length - 1); // Ensure index is within bounds
  int pointSize = pointSizes[idx];

  // Randomly select coordinates from the image
  int x = int(random(img.width));
  int y = int(random(img.height));

  // Get pixel color from the image
  color pixelColor = img.get(x, y);
  fill(pixelColor, 128); // Apply color with some transparency

  // Draw the point
  circle(x, y, pointSize);
  
  saveFrame("frames/####.tif");
}
