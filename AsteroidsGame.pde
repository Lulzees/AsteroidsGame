Spaceship vin;
Stars[] dots;
ArrayList<Bullet> yes;
ArrayList<Asteroid> cent;
public void setup() 
{
  size(600, 600);
  vin = new Spaceship();
  dots = new Stars[50];
  cent = new ArrayList<Asteroid>();
  yes = new ArrayList<Bullet>();
  for(int i = 0; i<50; i++)
  {
    dots[i] = new Stars();
  }

  for(int i = 0; i<30; i++)
  {
    cent.add(new Asteroid());
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
  for(int i = 0; i<cent.size(); i++)
  {
    cent.get(i).move();
    cent.get(i).show();
    if(dist(cent.get(i).getX(), cent.get(i).getY(), vin.getX(), vin.getY()) < 20)
    {
      cent.remove(i);
    }
  }
  for(int i = 0; i<yes.size(); i++)
  {
    yes.get(i).move();
    yes.get(i).show();
    for(int j = 0; j<cent.size(); j++)
    {
      if(dist(yes.get(i).getX(), yes.get(i).getY(), cent.get(j).getX(), cent.get(j).getY())<10)
      {
        yes.remove(i);
        cent.remove(j);
        break;
      }
    }
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
  if (key == 'r')
  {
    yes.add(new Bullet(vin));
  }
  
}