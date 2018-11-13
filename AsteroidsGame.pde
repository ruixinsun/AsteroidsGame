Spaceship s;

Star[] stars;
Asteroid a;

public void setup() 
{
  size(500,500);
  s = new Spaceship();
  stars = new Star[200];
  for(int i=0; i<stars.length; i++)
  {
    stars[i] = new Star();
  }
  a = new Asteroid();
}
public void draw() 
{
  background(0);
  s.show();
  s.move();
  a.show();
  for(int i=0; i<stars.length; i++)
  {
    stars[i].show();
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
