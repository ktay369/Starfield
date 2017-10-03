NormalParticle [] crap;
void setup()
{
  size(500, 500);
  crap = new NormalParticle[100];
 for (int i = 0; i <crap.length; i++)
  {
    crap[i] = new NormalParticle();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i <crap.length; i++)
  {
  crap[i].show();
  crap[i].move();
  }
}
class NormalParticle 
{
  float x, y, sp, ang;
  int col;
  NormalParticle() {
    x = 250;
    y = 250;
    sp = 3;
    ang = (float)Math.random()* 360;
    col = (int)(Math.random()*256);
  }
  public void move(){
    x = x + cos(ang)*sp;
    y = y +sin(ang)*sp;
    if(sp>=0)
    sp = sp -.03;
  }
  public void show(){
    fill(col, col, col);
    ellipse(x, y, 5, 5);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}