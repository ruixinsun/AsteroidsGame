class Asteroid extends Floater
{ 
  private int rotateSpeed;
  public Asteroid()
  {
    rotateSpeed = (int)(Math.random()*11)-5;
    
      
  corners = 6;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = (int)(Math.random()*6)+36;
      yCorners[0] = (int)(Math.random()*6)+5;
      xCorners[1] = (int)(Math.random()*6)+19;
      yCorners[1] = (int)(Math.random()*6)-22;
      xCorners[2] = (int)(Math.random()*6)-29;
      yCorners[2] = (int)(Math.random()*6)-22;
      xCorners[3] = (int)(Math.random()*6)-34;
      yCorners[3] = (int)(Math.random()*6)-10;
      xCorners[4] = (int)(Math.random()*6)-29;
      yCorners[4] = (int)(Math.random()*6)+22;
      xCorners[5] = (int)(Math.random()*6)+12;
      yCorners[5] = (int)(Math.random()*6)+24;

   myColor = color(90);
      myCenterX = 200;
      myCenterY = 300;
      myDirectionX = 1;
      myDirectionY = 1;
     
  }
   public void setX(int x){myCenterX=x;}  
   public int getX(){return (int)myCenterX;}   
   public void setY(int y){myCenterY=y;}  
   public int getY(){return (int)myCenterY;}   
   public void setDirectionX(double x){myDirectionX=x;}  
   public double getDirectionX(){return myDirectionX;}   
   public void setDirectionY(double y){myDirectionY=y;}   
   public double getDirectionY(){return myDirectionY;}   
   public void setPointDirection(int degrees){myPointDirection=degrees;}
   public double getPointDirection(){return myPointDirection;}
  
  public void move()
  {
    turn(rotateSpeed);
    super.move();
  }
  
}
