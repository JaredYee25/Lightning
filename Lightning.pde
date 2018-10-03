int startX = 0;
int startY = (int)(Math.random()*150+200);
int endX = 0;
int endY = 150;
void setup()
{
  size(500,500);
  strokeWeight(2);
  background(0);
}
void draw()
{
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  while (startX < 501) 
  {
    endX = startX + (int)((Math.random()*9)+1);
    endY = startY + (int)((Math.random()*18)-9);
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }  
}
void mousePressed()
{ 
  startX = 0;
  startY = (int)(Math.random()*150+200);
  background(0);
  redraw();
}
