Particle [] starfield;
OddballParticle petro;
void setup()
{
  size(1000,1000);
  background(0);
  starfield = new Particle[100];
  for(int i = 0; i < starfield.length; i++)
  starfield[i] = new Particle();
  petro = new OddballParticle();
  //your code here
}
void draw()
{
  fill(161, 23, 242);
  //rect(0,500,1000,500);
  for(int i = 0; i < starfield.length; i++)
  {
    starfield[i].show();
    starfield[i].pewpew();
  }
  //your code here
}
class Particle
{
  int myColorR, myColorG, myColorB, myOpacity;
  double myX, myY, myAngle, mySpeed;
  Particle()
  {
    myX = 500;
    myY = 500;
    myColorR = (int)(Math.random()*100)+100;
    myColorG = (int)(Math.random()*100)+100;
    myColorB = (int)(Math.random()*100)+100;
    myOpacity = (int)(Math.random()*50)+50;
    myAngle = (Math.random() + 1)*Math.PI;
    mySpeed = (Math.random()*3)+1;
  }
  void show()
  {
    noStroke();
    fill(myColorR, myColorG, myColorB, myOpacity);
    ellipse((float)myX, (float)myY, 3, 3);
  }
  void pewpew()
  {
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
    if(myX < -10 || myX > 1010 || myY < -10)
    {
    myX = 500;
    myY = 500;
    myColorR = (int)(Math.random()*100)+100;
    myColorG = (int)(Math.random()*100)+100;
    myColorB = (int)(Math.random()*100)+100;
    myOpacity = (int)(Math.random()*50)+50;
    myAngle = (Math.random() + 1)*Math.PI;
    mySpeed = (Math.random()*3)+1;
    }
  }
  //your code here
}

class OddballParticle //inherits from Particle
{
  float myX, myY;
  
  //your code here
}
