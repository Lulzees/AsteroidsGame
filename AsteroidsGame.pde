Spaceship vin;
Stars[] dots;
public void setup() 
{
  size(800, 800);
  vin = new Spaceship();
  dots = new Stars[50];
  for(int i = 0; i<50; i++)
  {
    dots[i] = new Stars();
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
  
}