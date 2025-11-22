public class Asteroid extends Floater
{
  private double rotationSpeed;   

  public Asteroid()
  {
    corners = 6;

    xCorners = new int[]{20, 10, -10, -20, -10, 10};
    yCorners = new int[]{0, 20, 15, 0, -15, -20};

    myColor = color(150, 150, 150);

    myCenterX = Math.random() * width;
    myCenterY = Math.random() * height;

    myXspeed = Math.random() * 4 - 2;
    myYspeed = Math.random() * 4  - 2;

    myPointDirection = Math.random() * 360;

    rotationSpeed = Math.random() * 2 - 1; 
  }

  public void move()
  {
    turn(rotationSpeed);

    myCenterX += myXspeed;
    myCenterY += myYspeed;

    if (myCenterX > width)
      myCenterX = 0;
    else if (myCenterX < 0)
      myCenterX = width;

    if (myCenterY > height)
      myCenterY = 0;
    else if (myCenterY < 0)
      myCenterY = height;
  }

  public double getX()
  {
    return myCenterX;
  }

  public double getY()
  {
    return myCenterY;
  }
}
