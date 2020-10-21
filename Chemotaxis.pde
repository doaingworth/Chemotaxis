//declare bacteria variables here   
int bactNum = 30; 
Bacteria[] germs = new Bacteria[bactNum];
int[] colorVals = new int[3];

void setup()   
{     
  //initialize bacteria variables here
  background(255,255,255);
  size(900,900);
  for (int x = 0; x < bactNum; x++) 
  {
    colorVals[0] = (int)(Math.random()*255);
    colorVals[1] = (int)(Math.random()*255);
    colorVals[2] = (int)(Math.random()*255);
    germs[x] = new Bacteria((int)(Math.random()*900), (int)(Math.random()*900), (int)(Math.random()*100)+1, colorVals);
  }
}   

void draw()   
{    
  background(0);
  for (int x = 0; x < bactNum; x++) 
  {
    germs[x].move();
    germs[x].show();
  }
}  

class Bacteria
{     
  int locX, locY, bactSize;
  int[] bactColor;
  Bacteria(int x, int y, int size, int[] colorr) {
    locX = x;
    locY = y;
    bactSize = size;
    bactColor = colorr;
  }
  
  void move() 
  {
    locX += (int)(Math.random()*5)-2;
    locY += (int)(Math.random()*5)-2;
  }
  
  void show() 
  {
    fill(bactColor[0], bactColor[1], bactColor[2]);
    ellipse(locX,locY,bactSize,bactSize);
  }
} 
