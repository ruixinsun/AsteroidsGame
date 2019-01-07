Spaceship s;
Star[] stars;
ArrayList<Asteroid> a;
ArrayList<Bullet> mag;

public void setup() 
{
  size(500, 500);
  s = new Spaceship();
  stars = new Star[100];
  for (int i=0; i<stars.length; i++)
  {
    stars[i] = new Star();
  }
  a = new ArrayList<Asteroid>();
  for (int i=0; i<10; i++)
  {
    a.add(new Asteroid());
  }
  mag = new ArrayList<Bullet>();
}


public void draw() 
{
  background(0);
  s.show();
  s.move();

  for (int i=0; i<stars.length; i++)
  {
    stars[i].show();
  }
  for (int i=0; i<a.size(); i++)
  {
    a.get(i).show();
    a.get(i).move();
  }
  for (int i=0; i<mag.size(); i++)
  {
    mag.get(i).show();
    mag.get(i).move();
  }
   for(int i = 0; i < a.size(); i++)
  {
    for(int j = 0; j < mag.size(); j++)
    {
      if(dist(a.get(i).getX(),a.get(i).getY(),mag.get(j).getX(),mag.get(j).getY())<30)
      {
        mag.remove(j);
        a.remove(i);
        break;
      }
    }
  }
 


}
 public void mousePressed()
 {
   mag.add(new Bullet(s));
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





  
  

