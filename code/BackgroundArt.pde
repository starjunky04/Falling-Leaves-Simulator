void backgroundArt(){
  
  // makes sky gradient
  loadPixels();
  
  // loops through every pixel from the top to the start of the ground
  for(int i = 0; i < pixels.length - (50 * width); i++) {
    int y = i / width;
    
    color colourA = color(105, 162, 199);
    color colourB = color(186, 219, 222);
    
    color gradient = lerpColor(colourA, colourB, y * 0.002);
    
    pixels[i] = gradient;   
  }
  
  updatePixels();
  
  // draws ground
  fill(78, 184, 61);
  noStroke();
  
  rect(0, height - 50, width, height);
  
  clouds(200, 100, 200, 50);
  clouds(110, 125, 150, 30);
  clouds(260, 120, 250, 50);
  
  clouds(644, 222, 256, 60);
  clouds(594, 252, 356, 30);
  
  drawTree();
  
  tireSwing(tireSwingPosition.x, tireSwingPosition.y);
  
  //bunny(bunnyPosition.x, bunnyPosition.y, 5);
  
  noStroke();
}

void clouds(int x, int y, int w, int h){
  noStroke();
  fill(255);
  int t = frameCount;
  rect(x, 5 * sin(t * 0.05) + y, w, h);
  
  
}

// used to draw the shape of the leaf
void drawLeaf(float xCoord, float yCoord, float size){
  fill(94, 148, 24);
  square(xCoord, yCoord, size);
  square(xCoord + size, yCoord + size, size);
  square(xCoord + (size * 2), yCoord + (size * 2), size);
  
  fill(116, 194, 21);
  square(xCoord + (size * 2), yCoord + size, size);
  square(xCoord + size, yCoord + (size * 2), size);
  square(xCoord + (size * 2), yCoord + (size * 3), size);
  square(xCoord + (size * 3), yCoord + (size * 3), size);
  square(xCoord + (size * 4), yCoord + (size * 3), size);
  square(xCoord + (size * 3), yCoord + (size * 2), size);

  
}

// used to draw shape of flowers
void pinkLeaf(float xCoord, float yCoord, float size){
  fill(255, 163, 177);
  square(xCoord + (size * 2), yCoord, size);
  square(xCoord, yCoord + (size), size);
  square(xCoord, yCoord + (size * 3), size);
  square(xCoord + size, yCoord + size * 2, size);
  square(xCoord + size, yCoord + (size * 3), size);
  square(xCoord + (size * 3), yCoord + size, size);
  square(xCoord + (size * 4), yCoord, size * 2);
  square(xCoord + (size * 4), yCoord + (size * 2), size);
  square(xCoord + (size * 5), yCoord + (size * 3), size);
  square(xCoord + (size * 2), yCoord + (size * 5), size);
  square(xCoord + (size * 4), yCoord + (size * 5), size);
  square(xCoord + (size * 3), yCoord + (size * 4), size);
  
  fill(201, 119, 134);
  square(xCoord, yCoord + (size * 5), size);
  square(xCoord + size, yCoord + (size * 4), size);
  
  fill(217, 143, 157);
  square(xCoord + size * 2, yCoord + size * 3, size);
  square(xCoord + size * 3, yCoord + size * 2, size);
  
  fill(255, 186, 198);
  square(xCoord + size, yCoord + 3 * size, size);
  rect(xCoord + size * 2, yCoord + size, size, size * 2);
  square(xCoord + size * 2, yCoord + size * 4, size);
  rect(xCoord + size * 3, yCoord + size * 3, size * 2, size);
  square(xCoord + size * 4, yCoord + size, size);
  
  
}

void smallFlower(float xCoord, float yCoord, float size){
  fill(255, 224, 230);
  square(xCoord + size, yCoord, size);
  square(xCoord + size * 2, yCoord + size, size);
  
  fill(255, 207, 218);
  square(xCoord, yCoord + size, size);
  
  fill(255, 186, 198);
  square(xCoord + size, yCoord + size * 2, size);
  
  fill(242, 131, 159);
  square(xCoord + size, yCoord + size, size);
}
  
void smallLeaf(float xCoord, float yCoord, float size){
  fill(83, 117, 38);
  square(xCoord, yCoord, size);
  square(xCoord + size, yCoord + size, size);
  
  fill(117, 163, 57);
  square(xCoord, yCoord + size, size);
}

void tireSwing(float xCoord, float yCoord){
  stroke(26, 20, 20);
  noFill();
  strokeWeight(30);
  circle(xCoord, yCoord, 75);
  stroke(176, 142, 121);
  strokeWeight(5);
  line(xCoord, yCoord - 25, xCoord, yCoord - 50);
  line(xCoord - 3, yCoord - 25, xCoord - 10, yCoord - 50);
  line(xCoord + 3, yCoord - 25, xCoord + 10, yCoord - 50);
  
  line(xCoord, yCoord - 50, 100, 230);
  
  line(100, 230, 50, 220);
  line(100, 230, 50, 240);
  line(100, 230, 50, 230);
  
}

void drawTree(){
  //fill(255, 163, 177);
  fill(255, 186, 198);

  rect(100, 75, 100, 200);
  rect(50, 275, 100, 75);
  
  fill(51, 30, 26);
  noStroke();
  rect(0, 100, 50, height - 150); 
  rect(50, 200, 50, 100);
  
  //fill(255, 163, 177);
  fill(255, 186, 198);


  rect(0, 25, 50, 225);
  rect(50, 25, 50, 175);
  
  fill(255, 224, 230);
  rect(0, 25, 100, 25);
  rect(75, 25, 25, 50);
  rect(100, 75, 100, 25);
  rect(175, 100, 25, 25);
  rect(200, 125, 25, 75);
  
  fill(255, 163, 177);
  rect(50, 300, 100, 50);
  rect(100, 200, 50, 100);
  rect(150, 250, 50, 50);
  
  smallFlower(100, 125, 3);
  smallFlower(25, 200, 6);
  smallFlower(125, 250, 5);
  smallFlower(10, 100, 8);
  smallFlower(200, 150, 4);
  smallFlower(80, 310, 10);
}

void bunny(float x, float y, float size){
  noStroke();
  
  fill(255);
  square(x + (size * 2), y + (size * 9), size);
  square(x + (size * 9), y + (size * 2), size);
  square(x + (size * 11), y + (size * 2), size);
  square(x + (size * 11), y + (size * 12), size);
  rect(x + (size * 5), y + (size * 12), size * 2, size);
  rect(x + (size * 6), y + (size * 8), size * 2, size);
  rect(x + (size * 7), y + (size * 9), size * 2, size);
  rect(x + (size * 8), y + (size * 10), size * 2, size);
  square(x + (size * 8), y + (size * 7), size);
  rect(x + (size * 9), y + (size * 6), size * 4, size * 3);
  rect(x + (size * 10), y + (size * 9), size * 3, size);
  square(x + (size * 11), y + (size * 10), size);
  rect(x + (size * 10), y + (size * 5), size * 2, size);
  
  fill(209, 211, 222);
  rect(x + (size * 3), y + (size * 12), size * 2, size);
  
  fill(220, 224, 245);
  square(x + (size * 3), y + (size * 11), size);
  rect(x + (size * 4), y + (size * 8), size * 2, size);
  square(x + (size * 6), y + (size * 9), size);
  rect(x + (size * 4), y + (size * 8), size * 2, size);
  rect(x + (size * 7), y + (size * 10), size, size * 2);
  square(x + (size * 7), y + (size * 7), size);
  square(x + (size * 8), y + (size * 8), size);
  square(x + (size * 9), y + (size * 9), size);
  square(x + (size * 10), y + (size * 10), size);
  square(x + (size * 10), y + (size * 12), size);
  square(x + (size * 8), y + (size * 6), size);
  square(x + (size * 12), y + (size * 5), size);
  square(x + (size * 11), y + (size * 4), size);
  rect(x + (size * 9), y + (size * 4), size, size * 2);
  rect(x + (size * 13), y + (size * 6), size, size * 4);
  
  fill(228, 230, 240);
  rect(x + (size * 5), y + (size * 7), size * 2, size);
  square(x + (size * 3), y + (size * 10), size);
  square(x + (size * 4), y + (size * 11), size);
  rect(x + (size * 4), y + (size * 10), size * 3, size);
  rect(x + (size * 4), y + (size * 9), size * 2, size);
  rect(x + (size * 8), y + (size * 11), size * 3, size);
  square(x + (size * 9), y + (size * 3), size);
  square(x + (size * 11), y + (size * 3), size);

  fill(0);
  rect(x + size, y + (size * 9), size, size * 2);
  rect(x + (size * 2), y + (size * 8), size * 2, size);
  rect(x + (size * 3), y + (size * 9), size, size);
  rect(x + (size * 2), y + (size * 10), size, size * 4);
  rect(x + (size * 2), y + (size * 13), size * 5, size);
  rect(x + (size * 7), y + (size * 12), size * 3, size);
  rect(x + (size * 10), y + (size * 13), size * 3, size);
  rect(x + (size * 5), y + (size * 11), size * 2, size);
  rect(x + (size * 12), y + (size * 12), size, size);
  rect(x + (size * 11), y + (size * 11), size, size);
  rect(x + (size * 12), y + (size * 10), size * 2, size);
  rect(x + (size * 14), y + (size * 6), size, size * 4);
  rect(x + (size * 13), y + (size * 5), size, size);
  rect(x + (size * 12), y + (size * 2), size, size * 3);
  rect(x + (size * 10), y + (size * 2), size, size * 3);
  rect(x + (size * 8), y + (size * 2), size, size * 4);
  rect(x + (size * 9), y + size, size, size);
  rect(x + (size * 11), y + size, size, size);
  rect(x + (size * 4), y + (size * 7), size, size);
  rect(x + (size * 5), y + (size * 6), size * 3, size);
  rect(x + (size * 11), y + (size * 7), size, size * 2);
}

void drawBird(float x, float y, float s){
  fill(0);
  rect(x + s, y + (s * 14), s, s * 2);
  rect(x + (s * 2), y + (s * 13), s * 4, s);
  rect(x + (s * 2), y + s * 15, s * 3, s);
  rect(x + s * 4, y + 16 * s, s * 4, s);
  rect(x + 8 * s, y + 15 * s, s * 4, s);
  rect(x + 12 * s, y + 14 * s, s * 3, s);
  rect(x + 15 * s, y + 13 * s, s * 2, s);
  rect(x + 15 * s, y + 11 * s, s * 2, s);
  rect(x + 12 * s, y + 10 * s, s * 3, s);
  rect(x + 15 * s, y + 8 * s, s * 2, s);
  square(x + 14 * s, y + 9 * s, s);
  rect(x + 16 * s, y + 4 * s, s, s * 3);
  square(x + 15 * s, y + 4 * s, s);
  square(x + 14 * s, y + 5 * s, s);
  square(x + 13 * s, y + 6 * s, s);
  square(x + 12 * s, y + 7 * s, s);
  rect(x + 11 * s, y + 8 * s, s, s * 4);
  rect(x + 9 * s, y + 11 * s, s * 2, s);
  rect(x + 9 * s, y + 7 * s, s, s * 4);
  square(x + 8 * s, y + 6 * s, s);
  square(x + 7 * s, y + 5 * s, s);
  square(x + 6 * s, y + 4 * s, s);
  square(x + 5 * s, y + 3 * s, s);
  square(x + 4 * s, y + 2 * s, s);
  rect(x + 3 * s, y + 2 * s, s, s * 3);
  rect(x + 2 * s, y + 4 * s, s, s * 2);
  rect(x + 3 * s, y + 6 * s, s, s * 2);
  rect(x + 4 * s, y + 8 * s, s * 2, s);
  rect(x + 5 * s, y + 9 * s, s, s * 3);
  square(x + 6 * s, y + 12 * s, s);
  square(x + 6 * s, y + 10 * s, s);
  square(x + 13 * s, y + 12 * s, s);
  
  fill(255);
  rect(x + 8 * s, y + 11 * s, s, s * 4);
  square(x + 9 * s, y + 13 * s, s * 2);
  square(x + 11 * s, y + 12 * s, s * 2);
  square(x + 13 * s, y + 11 * s, s);
  square(x + 14 * s, y + 12 * s, s);
  square(x + 13 * s, y + 13 * s, s);
  square(x + 6 * s, y + 6 * s, s);
  square(x + 7 * s, y + 7 * s, s);
  rect(x + 5 * s, y + 5 * s, s, s * 3);
  
  fill(98, 91, 122);
  square(x + 3 * s, y + 5 * s, s);
  square(x + 5 * s, y + 4 * s, s);
  square(x + 6 * s, y + 5 * s, s);
  square(x + 7 * s, y + 6 * s, s);
  rect(x + 4 * s, y + 3 * s, s, s * 2);
  rect(x + 4 * s, y + 6 * s, s, s * 2);
  rect(x + 8 * s, y + 7 * s, s, s * 4);
  square(x + 13 * s, y + 7 * s, s);
  
  fill(217, 134, 2);
  rect(x + 15 * s, y + 12 * s, s * 2, s);
  rect(x + 5 * s, y + 15 * s, s * 3, s);
  
  fill(56, 45, 77);
  square(x + 4 * s, y + 5 * s, s);
  rect(x + 6 * s, y + 13 * s, s * 2, s);
  rect(x + 2 * s, y + 14 * s, s * 5, s);
  square(x + 14 * s, y + 6 * s, s);
  square(x + 16 * s, y + 7 * s, s);
  rect(x + 15 * s, y + 5 * s, s, s * 3);
  
  fill(197, 210, 224);
  square(x + 7 * s, y + 14 * s, s);
  square(x + 11 * s, y + 14 * s, s);
  square(x + 14 * s, y + 13 * s, s);
  square(x + 14 * s, y + 11 * s, s);
  square(x + 12 * s, y + 11 * s, s);
  rect(x + 9 * s, y + 12 * s, s * 2, s);
  square(x + 12 * s, y + 8 * s, s * 2);
  rect(x + 14 * s, y + 7 * s, s, s * 2);
  square(x + 6 * s, y + 11 * s, s);
  rect(x + 6 * s, y + 7 * s, s, s * 3);
  rect(x + 7 * s, y + 8 * s, s, s * 5);
}
