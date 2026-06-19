class Bird {
  PVector birdPosition;
  PVector birdMovement;
  float originalX;
  float originalY;
  
  float movementSpeed = 1;
  
  float size;
  
  Bird(float x, float y, float s){
    size = s;
    birdPosition = new PVector(x, y);
    birdMovement = new PVector(movementSpeed * 2 / s, movementSpeed / s);
    originalX = x;
    originalY = y;
  }
  
  void update(){
    birdPosition.add(birdMovement);
    if(birdPosition.y <= originalY - (size * 5)){
    birdMovement.y = movementSpeed / size;
    }
    else if(birdPosition.y >= originalY){
      birdMovement.y = -movementSpeed / size;
    }
  
    checkEdges();
  }
  
  void checkEdges(){
    if(birdPosition.x > width + 50){
      birdPosition.x = -50;
    }
  }
  
  void addWind(){
    birdPosition.add(0.7, 0);
  }
  
  void display(){
    drawBird(birdPosition.x, birdPosition.y, size);
  }
}
