//NormalParticle [] stuff;
Particle[] part;
void setup()
{
  size(500, 500);
  part = new Particle[100];
  //stuff = new NormalParticle[100];
 for (int i = 0; i <part.length; i++)
  {
    part[i] = new NormalParticle();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i <part.length; i++)
  {
  part[i].show();
  part[i].move();
  }
}
class NormalParticle implements Particle
{
  double x, y, sp, ang, siz;
  int col;
  NormalParticle() {
    x = 250;
    y = 250;
    sp = 3;
    ang = Math.random()* 360;
    col = (int)(Math.random()*255)+1;
    siz = 5;
  }
  public void move(){
    x = x + cos((float)ang)*sp;
    y = y +sin((float)ang)*sp;
    if(sp>=0&& siz<=30){
    sp = sp -.03;
    siz = siz+.1;
    }
  }
  public void show(){
    fill(col, col, col);
    ellipse((float)x, (float)y, (float)siz, (float)siz);
  }
}



interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double x, y, sp, ang;
  int col;
  OddballParticle(){
   x = 250;
    y = 250;
    sp = 3;
    ang = Math.random()* 360;
    col = (int)(Math.random()*255)+1;
  
  }
public void show(){
  fill(col, col, col);
    ellipse((float)x, (float)y, 5, 5);
}
public void move(){
  x = x + cos((float)ang)*sp;
    y = y +sin((float)ang)*sp;
    if(sp>=0)
    sp = sp -.03;
}
}
class JumboParticle implements Particle
{
  double x, y, sp, ang;
  int col;
  JumboParticle(){
     x = 250;
    y = 250;
    sp = 3;
    ang = Math.random()* 360;
    col = (int)(Math.random()*255)+1;
  }
 public void show(){
  fill(col, col, col);
    ellipse((float)x, (float)y, 5, 5);
}
public void move(){
  x = x + cos((float)ang)*sp;
    y = y +sin((float)ang)*sp;
    if(sp>=0)
    sp = sp -.03;
}
}