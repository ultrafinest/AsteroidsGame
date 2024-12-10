class Spaceship extends Floater  
{   
    private Spaceship()
    {
      corners = 4;
      xCorners = new int[]{-10, 20, -10, -4};
      yCorners = new int[]{-8, 0 , 8, 0};
      myColor = color(255, 0, 0); 
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    public void hyperspace()
    {
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
      myPointDirection = (int)(Math.random()*360);
    }
    public void reverseThrust (double dAmount)   
    {           
      double dRadians =myPointDirection*(Math.PI/180);     
      myXspeed -= ((dAmount) * Math.cos(dRadians));    
      myYspeed -= ((dAmount) * Math.sin(dRadians));       
    }   
    public float getCenterX(){
      return (float) myCenterX;
    }
    public float getCenterY(){
      return (float) myCenterY;
    }
    public float getXSpeed(){
      return (float) myXspeed;
    }
    public float getYSpeed(){
      return (float) myYspeed;
    }
    public float getMyDirection(){
      return (float) myPointDirection;
    }
    public void setCenterX(double newCenterX){
      myCenterX = newCenterX;
    }
    public void setCenterY(double newCenterY){
      myCenterY = newCenterY;
    }
}
