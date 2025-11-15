Spaceship ship;
Star[] stars;

void setup() {
  size(800, 600);
  ship = new Spaceship();

  stars = new Star[120];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  background(0);

  // draw stars
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }

  ship.move();
  ship.show();
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
    ship.turnLeft();
  }
  if (key == 'd' || key == 'D') {
    ship.turnRight();
  }
  if (key == 'w' || key == 'W') {
    ship.accelerate(0.2);
  }
  if (key == 'h' || key == 'H') {
    ship.hyperspace();
  }
}
