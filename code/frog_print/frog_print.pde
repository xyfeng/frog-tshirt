PImage img; 

void setup() {
  size(900, 900);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("friedolin.png");
  background(0);
  smooth();
}

void draw() {
  background(0);
  
  img.loadPixels(); 
  
  loadPixels();
  for (int y = 0; y < height; y+=9) {
    for (int x = 0; x < width; x+=9) {
      int loc = x + y*width;
      
      // The functions red(), green(), and blue() pull out the 3 color components from a pixel.
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      noStroke();
      if( r == 0 )
      {
        fill(255,255,255);
        ellipse(x, y, 6, 6);
      }
      else{
        fill(255,255,255);
      ellipse(x, y, 5.6, 5.6);
      }
    }
  }
//  updatePixels();
}

