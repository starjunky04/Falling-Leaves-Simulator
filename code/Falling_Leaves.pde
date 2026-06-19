ArrayList<Leaf> leaves;

PVector wind;
PVector gravity;
PVector tireSwingPosition;
PVector tireSwingWind;
PVector bunnyPosition;
PVector bunnyMovement;

Bird[] birds;
int birdCount = 3;

boolean tireSwingMovingForward = true;
boolean windOn = false;

void setup() {
  size(1000,600);
  
  leaves = new ArrayList<Leaf>();
  
  wind = new PVector(0.002, 0);
  gravity = new PVector(0, 0.002);
  tireSwingWind = new PVector(0.0015, 0);
  tireSwingPosition = new PVector(125, 475);
  bunnyPosition = new PVector(-75, height - 100);
  bunnyMovement = new PVector(0.25, 0.75);
  birds = new Bird[birdCount];
  float birdPositionY = random(50, 100);
  
  for(int i = 0; i < birds.length; i++){
    birds[i] = new Bird(random(-50, -20), birdPositionY, random(2, 5));
    birdPositionY += random(50, 200);
  }

}

void draw(){
  backgroundArt();
  
  bunnyPosition.add(bunnyMovement);
  
  if(bunnyPosition.y <= height - 125){
    bunnyMovement.y = 0.75;
  }
  else if(bunnyPosition.y >= height - 100){
    bunnyMovement.y = -0.75;
  }
  
 for (Bird b : birds) {
   b.display();
   b.update();
   if(mousePressed){
     b.addWind();
   }
   
   
 }
  
  // add a new leaf
  leaves.add(new Leaf(random(width), -30, random(1, 4)));
  
  for(int i = leaves.size() - 1; i >= 0; i --){
    Leaf l = leaves.get(i);
    
    // remove offscreen leaves from array
    // if its offscreen, remove it from the array
    if(l.offScreen){
      leaves.remove(i);
    }
    PVector w = wind.copy().mult(l.mass / 200);
    PVector g = gravity.copy().mult(l.mass / 100);
    
    l.addForce(g);
    windOn = false;
    if(mousePressed){
        

      windOn = true;
      w = wind.copy().mult(l.mass / 10);
      bunnyPosition.add(0.005, 0);
      if(tireSwingMovingForward){
       tireSwingPosition.add(tireSwingWind);
       if(tireSwingPosition.x >= 175){
         tireSwingMovingForward = false;
       }
      }
    }
    l.addForce(w);
    if(!windOn){
      if(tireSwingPosition.x >= 125){
        tireSwingPosition.sub(tireSwingWind);
        tireSwingMovingForward = true;
      }
    }
    l.update();
    l.display();   
    bunny(bunnyPosition.x, bunnyPosition.y, 5);

  }
  
  if(bunnyPosition.x > width + 75){
    bunnyPosition.x = -75;
  }

}

void keyPressed(){
  if(key == 'r'){
    setup();
  }
}
