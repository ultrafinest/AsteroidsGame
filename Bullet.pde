class Bullet extends Floater
{
  Bullet(Spaceship newShip)
  {
    myCenterX = newShip.getCenterX();
    myCenterY = newShip.getCenterY();
    myXspeed = newShip.getXSpeed();
    myYspeed = newShip.getYSpeed();
    myPointDirection = newShip.getMyDirection();
    accelerate(6);
    myColor = color(255, 0, 0);
  }
  public void show()
  { 
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
    super.show();
  }
  public float getCenterX(){
    return (float) myCenterX;
  }
  public float getCenterY(){
    return (float) myCenterY;
  }
}
