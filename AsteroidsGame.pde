Spaceship ship;
Star[] stars;
ArrayList<Asteroid> asteroids;

void setup() {
  size(800, 600);

  ship = new Spaceship();

  stars = new Star[150];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }

  asteroids = new ArrayList<Asteroid>();
  for (int i = 0; i < 12; i++) {
    asteroids.add(new Asteroid());
  }
}

void draw() {
  background(0);

  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }

  ship.move();
  ship.show();

  for (int i = 0; i < asteroids.size(); i++) {
    Asteroid a = asteroids.get(i);

    float sx = (float) ship.getX();
    float sy = (float) ship.getY();
    float ax = (float) a.getX();
    float ay = (float) a.getY();

    float d = dist(sx, sy, ax, ay);

    if (d < ship.getRadius() + a.getRadius()) {
      asteroids.remove(i);
      i--;
    } else {
      a.move();
      a.show();
    }
  }
}

void keyPressed() {
  if (key == 'a') ship.turnLeft();
  if (key == 'd') ship.turnRight();
  if (key == 'w') ship.accelerate();
  if (key == 'h') ship.hyperspace();
}
