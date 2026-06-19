class Leaf {
  PVector position;
  PVector acceleration;
  PVector velocity;
  
  //int[] leavesOnGround = new int[100];
  int leavesOnGround = 0;
    
  int leafPxWidth = 5;
  int leafPxHeight = 4;
  
  int pinkLeafPxWidth = 6;
  int pinkFlowerPxWidth = 3;
  int smallLeafWidth = 2;
  
  float translatedX;
  float translatedY;

  
  float mass;
  //float bounceAmount = 0.02;
  float rotationAmount = 0.2;
  
  boolean offScreen = false;
  boolean onGround = false;
  //int size = 10;
  int leafOption = floor(random(4));

  Leaf(float x, float y, float m){
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0.0005 * m);
    //rotationAmount *= mass;
    mass = m;
    
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
    checkEdges();
  }
  
  //void reDraw(){
  //  onGround = false;
  //  position.x = random(width);
  //  position.y = random(0, -25);
  //  velocity = new PVector(0, 0);
  //  acceleration = new PVector(0, 0.0005 * mass);
  //}
  
  void display() {      
    pushMatrix();
    
    //if the leaf is not offscreen, then itll draw it on the screen
    noStroke();
    
    if(onGround){
      if(leavesOnGround < 150){   
        leavesOnGround += 1;
      }
      else {
        offScreen = true;
      }
    }
    
    if(!offScreen){
    if(leafOption == 1){
      translatedX = (mass * 2 * leafPxWidth) / 2;
      translatedY = (mass * 2 * leafPxHeight) / 2;

      rotateSprite(translatedX, translatedY);
      
      drawLeaf(position.x, 0 + position.y, mass * 2);
    }
    else if (leafOption == 2){
      translatedX = (mass * 2 * pinkLeafPxWidth) / 2;
      translatedY = translatedX;
      rotateSprite(translatedX, translatedY);

      pinkLeaf(position.x, 0 + position.y, mass * 2);
    }
    else if (leafOption == 3){
      translatedX = (mass * 2 * pinkFlowerPxWidth) / 2;
      translatedY = translatedX;
      rotateSprite(translatedX, translatedY);

      smallFlower(position.x, 0 + position.y, mass * 2);
    }
    else if (leafOption == 0){
      translatedX = (mass * 2 * smallLeafWidth) / 2;
      translatedY = translatedX;
      rotateSprite(translatedX, translatedY);

      smallLeaf(position.x, 0 + position.y, mass * 2);
    }
    }
    popMatrix();
    
  }
  
  void rotateSprite(float x, float y){
    if(!onGround){
    translate(x, y);
    rotate(cos(frameCount / mass) / (200 * mass));
    }
  }
  
  void addForce(PVector force) {
    PVector f = PVector.div(force, 10);
    if (position.y + mass < height) {
      acceleration.add(f);
    }
  }
  
  
  
  // flips the direction of the leaf is it reaches the edge of the screen
  void checkEdges() {  
    if ((position.y + mass/2 > height - 50)) {
      onGround = true;
      acceleration.y = 0;
      velocity.y = 0;
      velocity.x = 0;

      if(second() == 30){
        offScreen = true;
        leavesOnGround = 0;
      }
    }
    
    if ((position.x + mass > width) || (position.x-mass < 0)) {
      offScreen = true;
    }
  }
  
}
