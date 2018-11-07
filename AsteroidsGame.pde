Spaceship s;
Star[] stark;
public void setup() 
{
  size(500,500);
  s = new Spaceship();
  stark = new Star[200];
  for(int i=0; i<stark.length; i++)
  {
    stark[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  s.show();
  s.move();
  for(int i=0; i<stark.length; i++)
  {
    stark[i].show();
  }
}
public void keyPressed()
{
  if (keyCode == UP)
  {
    s.accelerate(2);
  }
  if (keyCode == DOWN)
  {
    s.accelerate(-1.9);
  }
  if (keyCode == LEFT)
  {
    s.turn(-8);
  }
  if (keyCode == RIGHT)
  {
    s.turn(8);
  }
  if (keyCode == SHIFT)
  {
    
    s.setX((int)(Math.random()*600));
    s.setY((int)(Math.random()*600));
    s.setDirectionX(0);
    s.setDirectionY(0);
    s.setPointDirection((int)(Math.random()*360));
  }
  
  
  
  
}
