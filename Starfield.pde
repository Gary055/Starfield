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
  fill(255,0,0);
  rect(0,500,1000,500);
  //your code here
}
class Particle
{
  //your code here
}

class OddballParticle //inherits from Particle
{
  //your code here
}
