public class Bullet extends Floater {
  private double radius;

  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();

    myPointDirection = theShip.getPointDirection();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();

    accelerate(6.0);

    radius = 4;
    corners = 0;
  }

  
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }

  public void show() {
    fill(255);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, (float)radius * 2, (float)radius * 2);
  }

  public boolean offScreen() {
    return myCenterX < 0 || myCenterX > width || myCenterY < 0 || myCenterY > height;
  }

  public double getX() { return myCenterX; }
  public double getY() { return myCenterY; }
  public double getRadius() { return radius; }
}
