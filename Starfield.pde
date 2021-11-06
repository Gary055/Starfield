Particle [] starfield;
OddballParticle specialboi;
int [] linefield;
OddballParticle petro;
void setup()
{
  size(1000,1000);
  starfield = new Particle[300];
  for(int i = 0; i < starfield.length; i++)
  starfield[i] = new Particle();
  specialboi = new OddballParticle();
  linefield = new int [15];
  petro = new OddballParticle();
  //your code here
}
void draw()
{
  background(0);
  for(int i = 0; i < starfield.length; i++)
  {
    starfield[i].show();
    starfield[i].pewpew();
  }
  specialboi.show();
  specialboi.pewpew();
  for(int i = 0; i < linefield.length; i++)
  {
    fill(161, 23, 242);
    triangle(500+(i*30), 500, 500+(i*180), 1000, 502+(i*180.1), 1000);
    triangle(500-(i*30), 500, 500-(i*180), 1000, 498-(i*180.1), 1000);
    triangle(0, 500+(i*50), 1000, 500+(i*50), 0, 500+(i*50.1));
    triangle(0, 500+(i*50), 1000, 500+(i*50), 1000, 500+(i*50.1));
  }
  //your code here
}
class Particle
{
  int myColorR, myColorG, myColorB, myOpacity;
  double myX, myY, myAngleX, myAngleY, mySpeed;
  Particle()
  {
    myX = 500;
    myY = 500;
    myColorR = (int)(Math.random()*100)+100;
    myColorG = (int)(Math.random()*100)+100;
    myColorB = (int)(Math.random()*100)+100;
    myOpacity = (int)(Math.random()*50)+50;
    myAngleX = Math.cos((Math.random()+1)*Math.PI);
    myAngleY = Math.sin((Math.random()+1)*Math.PI);
    mySpeed = (Math.random()*3)+1;
  }
  void show()
  {
    noStroke();
    fill(myColorR, myColorG, myColorB, myOpacity);
    if(myY-myAngleY*mySpeed<500)
    triangle(500, 500, 
    (float)(myX+(2*myAngleX)+(myAngleX*mySpeed)), 
    (float)(myY+(2*myAngleY)+(myAngleY*mySpeed)),
    (float)(myX-(2*myAngleX)+(myAngleX*mySpeed)), 
    (float)(myY+(2*myAngleY)+(myAngleY*mySpeed)));
    else
    triangle((float)myX, (float)myY, 
    (float)(myX+(myAngleX)+(myAngleX*mySpeed)), 
    (float)(myY+(myAngleY)+(myAngleY*mySpeed)),
    (float)(myX-(myAngleX)+(myAngleX*mySpeed)), 
    (float)(myY+(myAngleY)+(myAngleY*mySpeed)));
  }
  void pewpew()
  {
    myX += myAngleX * mySpeed;
    myY += myAngleY * mySpeed;
    if( myX-(myAngleX*mySpeed) < -10 || 
        myX-(myAngleX*mySpeed) > 1010 || 
        myY-(myAngleY*mySpeed) < -10)
    {
    myX = 500;
    myY = 500;
    myColorR = (int)(Math.random()*100)+100;
    myColorG = (int)(Math.random()*100)+100;
    myColorB = (int)(Math.random()*100)+100;
    myOpacity = (int)(Math.random()*50)+50;
    myAngleX = Math.cos((Math.random()+1)*Math.PI);
    myAngleY = Math.sin((Math.random()+1)*Math.PI);
    mySpeed = (Math.random() * 3)+1;
    }
  }
  //your code here
}

class OddballParticle extends Particle//inherits from Particle
{
  void show()
  {
   noStroke();
    fill(myColorR, myColorG, myColorB, myOpacity);
    if(myY-myAngleY*mySpeed<500)
    triangle(500, 500, 
    (float)(myX+(20*myAngleX)+(myAngleX*mySpeed)), 
    (float)(myY+(20*myAngleY)+(myAngleY*mySpeed)),
    (float)(myX-(20*myAngleX)+(myAngleX*mySpeed)), 
    (float)(myY+(20*myAngleY)+(myAngleY*mySpeed)));  }
  void pewpew()
  {
    myX += myAngleX * mySpeed;
    myY += myAngleY * mySpeed;
    if( myX < -10 || myX > 1010 || myY < -10)
    {
    myX = 500;
    myY = 500;
    myColorR = (int)(Math.random()*100)+100;
    myColorG = (int)(Math.random()*100)+100;
    myColorB = (int)(Math.random()*100)+100;
    myOpacity = (int)(Math.random()*50)+50;
    myAngleX = Math.cos((Math.random()+1)*Math.PI);
    myAngleY = Math.sin((Math.random()+1)*Math.PI);
    mySpeed = (Math.random() * 3)+1;
    }
  //your code here
  }
}
