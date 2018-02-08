public void setup()
{
  frameRate(10);
  size(600,600);
}
public void draw()
{
  sierpinski((int)(Math.random()*600),(int)(Math.random()*600),(int)(Math.random()*100));
}
public void mousePressed(){
  background(255);
  sierpinski((int)Math.random()*255,(int)Math.random()*255,(int)Math.random()*255);
  fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
}
public void sierpinski(int x, int y, int len) 
{
  if (len<=20)
    triangle (x,y,x+len,y,x+(len/2),y-len);
  else 
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}