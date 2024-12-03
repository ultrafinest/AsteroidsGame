Asteroid asteroids = new Asteroid();
class Asteroid extends Floater
{
  protected int rotationSpeed;
  private Asteroid()
  {
    rotationSpeed = 2;
    corners = 6; 
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = color(125);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = 1; 
    myYspeed = 1; 
    myPointDirection = (int)(Math.random()*360);
  }
  public void move()
  {
    turn(rotationSpeed);
    super.move();
  }
  

  public float getCenterX(){
      return (float) myCenterX;
    }
    public float getCenterY(){
      return (float) myCenterY;
    }
  public void setCenterX(double newCenterX){
    myCenterX = newCenterX;
  }
  public void setCenterY(double newCenterY){
    myCenterY = newCenterY;
  }
}
