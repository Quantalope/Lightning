int n=0;
int r = 0;
int hor = 0;
int ver = 0;

void setup()
{
  size(200,200);
  background(0);
}
void draw()
{
  noStroke();
  fill(0,0,0,5);
  rect(0,0,200,200);
}
void mousePressed()
{
  zap(mouseX,0);
}
void zap(int x, int y)
{
  background(255,255,255);
  float z = 1;
  stroke(255,0,0);
  while(y<200){
    if(z<=0)
      z=0.5;
    strokeWeight(z);
    z+=Math.random()-0.2;
    beginShape();
    vertex(x,y);
    x+=(int)((20*Math.random())-10);
    y+=(int)(20*Math.random());
    vertex(x,y);
    endShape();
  }
  hor = x;
  ver = y;
  stroke(220,220,50);
  for(int i = 3; i>0; i--){
    z=3;
    x=hor;
    y=ver;
    while(y>100&&x>hor-50&&x<hor+50){
      if(z<=0)
      z=0.5;
      strokeWeight(z);
      z-=Math.random()-0.2;
      beginShape();
      vertex(x,y);
      x-=(int)((40*Math.random())-20);
      y-=(int)(20*Math.random());
      vertex(x,y);
      endShape();
    }
  }
  if(mouseY < 20)
    mouseY = 20;
  n = (int)(Math.random()*50)+25;
  strokeWeight(3);
  while(n>0)
    {
      stroke(255,165,100,50+n);
      ellipse(hor,ver,r,r);
      r+=(int)(5*Math.random());
      n-=2;
    }
  r = 0;
}
