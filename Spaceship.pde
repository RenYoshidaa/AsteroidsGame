
public class Spaceship extends Floater
{
  public Spaceship()
  {
    corners = 4;
  
    xCorners = new int[]{20, -10, -5, -10};
    yCorners = new int[]{0, 10, 0, -10};

    myColor = color(255, 255, 255);
    myCenterX = width / 2;
    myCenterY = height / 2;

    myXspeed = 0;
    myYspeed = 0;

    myPointDirection = 0;
  }

  public void turnLeft()
  {
    turn(-15);
  }

  public void turnRight()
  {
    turn(15);
  }

  public void accelerate()
  {
    super.accelerate(0.2);
  }

  public void hyperspace()
  {
    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;

    myXspeed = 0;
    myYspeed = 0;

    myPointDirection = Math.random() * 360;
  }
public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
}
