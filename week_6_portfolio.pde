Car[] cars; //<>//
RaceTrack track;
boolean raceOver;

void setup() {
  size(1000, 600);
  track = new RaceTrack();
  //car = new Car(track.getStartPosition(), 100, 60, color(200, 100, 100));
  cars = new Car [5];
  
  int yPosition = 100;
  
  for (int i = 0; i < cars.length;i++){
    cars[i]=new Car(track.getStartPosition(), yPosition, 60, color(200, 100, 100));
    yPosition = yPosition + 100;
  }
  raceOver = false;
}

void draw() {
  background(70);
  track.display();
  detectwinners();
}

void detectwinners(){
for (int i =0; i < cars.length; i++){
  cars[i].display();
  
  if (!raceOver) {
    if (cars[i].getPosition() >= track.getFinishPosition()) {
       cars[i].increaseScore();
      //print(cars[i].getScore());
      
      raceOver = true;
      println("Press 's' to restart");
    } else {
      cars[i].move();
    }
  }
}
}


void detectOneWinner(){
  for (int i = 0; i < cars.length; i++){
  }
}

void keyPressed() {
  if (key == 's' && raceOver) {
    float startLine = track.getStartPosition();
    for (int i = 0; i < cars.length; i++){
      
    cars[i].setPosition(startLine);
    }
    raceOver = false;
  }
}
