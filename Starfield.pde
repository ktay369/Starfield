//NormalParticle [] stuff;
Particle[] part;
void setup()
{
  size(500, 500);
  part = new Particle[100];
  //stuff = new NormalParticle[100];
 for (int i = 0; i <part.length; i++)
  {
    if(i%99==0)
    part[i] = new JumboParticle();
    else if (i%98==0)
    part[i] = new OddballParticle();
    else
    part[i] = new NormalParticle();
  }
  for(int i = 0; i<part.length; i++)
  {
   part[i].move();
   part[i].show();
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
  int col, col3, col2;

  NormalParticle() {
    x = 250;
    y = 250;
    sp = 3;
    ang = Math.random()* 360;
    col = (int)(Math.random()*255)+1;
    col2 = (int)(Math.random()*255)+1;
    col3 = (int)(Math.random()*255)+1;
    siz = 15;
  }
  public void move(){
    x = x + cos((float)ang)*sp;
    y = y +sin((float)ang)*sp;
    if(sp>=0&& siz<=60){
    sp = sp -.01;
    //siz = siz+.1;
    }
    else
    sp = sp +.03;
   
  }
  public void show(){
    fill(col, col2, col3);
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
  int siz;
  OddballParticle(){
   x = 250;
    y = 250;
    col = (int)(Math.random()*255)+1;
    siz = 15;
  
  }
public void show(){
  fill(col, col, col);
    ellipse((float)x, (float)y, siz, siz);
}
public void move(){
  x = x + (int)(Math.random()*5)-2;
    y = y + (int)(Math.random()*5)-2;
    
}
}
class JumboParticle extends NormalParticle
{
  JumboParticle(){
     siz = 50;
  }

}