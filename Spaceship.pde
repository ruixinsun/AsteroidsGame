class Spaceship extends Floater  
{   
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
   
   public Spaceship()
   {
     corners=3;  //the number of corners, a triangular floater has 3   
     int[] xS = {-8, 16, -8, -2};   
     int[] yS = {-8,0,8,0};  
     xCorners =xS;
     yCorners=yS;
     int myColor=0;   
     myCenterX=myCenterY=0; //holds center coordinates   
     myDirectionX= myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
     myPointDirection=0; //holds current direction the ship is pointing in degrees    
   }
   public void move ()
{  
  //Moves the floater towards the coordinates
  //myDirectionX and myDirectionY

  //move the floater in the current direction of travel
  myCenterX += myDirectionX;
  myCenterY += myDirectionY;

  //wrap around screen
  if(myCenterX >width){
    myCenterX = 0;
  }
  else if (myCenterX<0){
    myCenterX = width;
  }
  if(myCenterY >height){
    myCenterY = 0;
  }
  else if (myCenterY < 0){
    myCenterY = height;
  }
}
}
