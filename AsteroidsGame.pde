Spaceship s;
public void setup() 
{
  size(500,500);
  s = new Spaceship();
}
public void draw() 
{
  background(0);
  s.show();
  s.move();
}
public void keyPressed()
{
  if (key == 'w')
  {
    s.accelerate(2);
  }
  if (key == 's')
  {
    s.accelerate(-2);
  }
  
  
  
}
