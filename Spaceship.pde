class Spaceship extends Floater {

  public Spaceship() {
    corners = 4;
    xCorners = new float[corners];
    yCorners = new float[corners];
    xCorners[0] = 20;   yCorners[0] = 0;  
    xCorners[1] = -10;  yCorners[1] = -10;
    xCorners[2] = -5;   yCorners[2] = 0;  
    xCorners[3] = -10;  yCorners[3] = 10;  
    myColor = color(255, 255, 255);

    myCenterX = width / 2.0f;
    myCenterY = height / 2.0f;

    myDirectionX = 0.0f;
    myDirectionY = 0.0f;

    myPointDirection = 0.0f;
  }
  public void hyperspace() {
    myDirectionX = 0.0f;
    myDirectionY = 0.0f;

    myCenterX = (float)(Math.random() * width);
    myCenterY = (float)(Math.random() * height);

    myPointDirection = (float)(Math.random() * 360.0);
  }
}
