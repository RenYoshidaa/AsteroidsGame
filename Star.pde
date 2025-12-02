public class Star {
  private float x;
  private float y;
  private float size;
  private float brightness;

  public Star() {
    x = (float)(Math.random() * width);
    y = (float)(Math.random() * height);

    size = (float)(Math.random() * 3 + 2);
    brightness = (float)(Math.random() * 255);
  }

  public void show() {
    noStroke();
    fill(brightness);
    ellipse(x, y, size, size);
  }
}
