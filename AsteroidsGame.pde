Spaceship ship;
Star[] stars;
 
void setup()
{
  size(800, 600);

  ship = new Spaceship();

  stars = new Star[150];
  for (int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
}

void draw()
{
  background(0);

  for (int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }

  ship.move();
  ship.show();
}

void keyPressed()
{
  if (key == 'a')
  {
    ship.turnLeft();
  }
  if (key == 'd')
  {
    ship.turnRight();
  }
  if (key == 'w')
  {
    ship.accelerate();
  }
  if (key == 'h')
  {
    ship.hyperspace();
  }
}
