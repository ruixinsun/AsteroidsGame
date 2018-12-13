
class Bullet extends Floater  
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = 250;
    myCenterY = 250;
    double dRadians = myDirectionX*(Math.PI/180);   
    myDirectionX = 5*Math.cos(dRadians);
    myDirectionY = 5*Math.sin(dRadians);
    
  }
  
  
  
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
ellipse(10,10,10,10);
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
  
  
  
  
  
  
  
