public class Bullet extends Floater {
  private double radius;

  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();

    myPointDirection = theShip.getPointDirection();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();

    accelerate(6);

    radius = 4;
  }

  public void show() {
    fill(255);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, (float)radius*2, (float)radius*2);
  }

  public double getX() { return myCenterX; }
  public double getY() { return myCenterY; }
  public double getRadius() { return radius; }
}
