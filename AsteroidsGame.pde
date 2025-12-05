Spaceship ship;
Star[] stars;
ArrayList<Asteroid> asteroids;
ArrayList<Bullet> bullets;

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

  bullets = new ArrayList<Bullet>();
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

  for (int i = 0; i < bullets.size(); i++) {
    Bullet b = bullets.get(i);

    if (b.getX() < 0 || b.getX() > width || b.getY() < 0 || b.getY() > height) {
      bullets.remove(i);
      i--;
    } else {
      b.move();
      b.show();
    }
  }

  for (int i = 0; i < bullets.size(); i++) {
    Bullet b = bullets.get(i);

    for (int j = 0; j < asteroids.size(); j++) {
      Asteroid a = asteroids.get(j);

      float d = dist((float)b.getX(), (float)b.getY(),
                     (float)a.getX(), (float)a.getY());

      if (d < b.getRadius() + a.getRadius()) {
        asteroids.remove(j);
        bullets.remove(i);
        i--;
        break;
      }
    }
  }
}

void keyPressed() {
  if (key == 'a') ship.turnLeft();
  if (key == 'd') ship.turnRight();
  if (key == 'w') ship.accelerate();
  if (key == 'h') ship.hyperspace();
  if (key == ' ') bullets.add(new Bullet(ship));
}
