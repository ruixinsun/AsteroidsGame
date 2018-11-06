public class Stars //note that this class does NOT extend Floater
{
  private int x,y; 
  
  public Stars()
  {
    x = (int)(Math.random()*500);
    x = (int)(Math.random()*500);
  }
  public void show()
  {
    fill(255);
    ellipse(x, y, 3, 3);
  }
}
