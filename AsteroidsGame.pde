Spaceship vin;
Stars[] dots;
Asteroid[] cent;
public void setup() 
{
  size(600, 600);
  vin = new Spaceship();
  dots = new Stars[50];
  for(int i = 0; i<50; i++)
  {
    dots[i] = new Stars();
    cent[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  vin.move();
  vin.show();
  for(int i = 0; i<50; i++)
  {
    dots[i].show();
    cent[i].move();
    cent[i].show();
  }
}
public void keyTyped()
{
  if (key == 'w')
    vin.accelerate(0.2);
  if (key == 'q')
    vin.turn(-10);
  if (key == 'e')
    vin.turn(10);
  if (key == 'f')
  {
    vin.setX((int)(Math.random()*600));
    vin.setY((int)(Math.random()*600));
    vin.setDirectionX(0);
    vin.setDirectionY(0);
    vin.setPointDirection((int)(Math.random()*360));
  }
  
}