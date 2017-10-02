
void setup()
{
  size(500, 500);
  
}
void draw()
{
  
}
class NormalParticle extends Particle
{
  float x, y, sp, ang;
  int color;
  NormalParticle() {
    x = 250;
    y = 250;
    sp = 5;
    ang = (float)Math.random()* 360;
  }
  public void move(){
    x = x + cos(ang)*sp;
    y = y +sin(ang)*sp;
  }
  public void show(){
    fill(color);
    ellipse(x, y, 5, 5);
  }
}
interface Particle
{
  public void show();
  public void draw();
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}