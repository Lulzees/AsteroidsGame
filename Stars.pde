public class Stars
{
  int myX, myY;
  public Stars()
  {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
  }
  public void show()
  {
    noStroke();
    fill(myX, myY, (myX + myY)/2);
    ellipse(myX, myY, 5, 5);
    noFill();
  }
}