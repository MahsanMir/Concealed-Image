PImage bodyImage;  // Declare a variable to store the body image
PImage stainImage;  // Declare a variable to store the stain image
int stainSize = 200;  // Size of the stain image

void setup() {
  size(800, 600);  // Set the size of the canvas
  bodyImage = loadImage("body.png");  // Load the body image
  stainImage = loadImage("stain.png");  // Load the stain image
  bodyImage.resize(width, height);  // Resize body image to match canvas size
  stainImage.resize(stainSize, 0);  // Resize stain image to specified size (maintaining aspect ratio)
  background(bodyImage);  // Set the body image as the background
}

void draw() {
  // No need to continuously redraw in the draw() function
}

void mousePressed() {
  // Add a copy of stainImage at the mouse position each time the mouse is pressed
  image(stainImage, mouseX - stainImage.width/2, mouseY - stainImage.height/2);
}
