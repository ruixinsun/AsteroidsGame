public class Star //note that this class does NOT extend Floater
{
  private int x,y; 
  
  public Star()
  {
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
  }
  public void show()
  {
    fill(255);
    ellipse(x, y, 2, 2);
  }
}
