class Star 
{
  protected int starSize;
  protected int starColor;
  protected int myX;
  protected int myY;
  private Star()
  {
    starSize = (int)(Math.random()*7);
    starColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show()
  {
    fill(255, 255, 0);
    stroke(255, 255, 0);
    ellipse(myX, myY, starSize, starSize);
  }
}
