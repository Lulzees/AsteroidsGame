public class Asteroid extends Floater
{
  private int rotSpeed;
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}  
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;}
  public Asteroid()
  {
    rotSpeed = (int)(Math.random()*720)-360;
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    myColor = 255;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    xCorners[0] = 10;
    yCorners[0] = -10;
    xCorners[1] = 10;
    yCorners[1] = 10;
    xCorners[2] = -10;
    yCorners[2] = 10;  
    xCorners[3] = -10;
    yCorners[3] = -10;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
}