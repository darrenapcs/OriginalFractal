private int a = 0;
private int b = 155;
public void setup() 
{
	size(500, 500);
  noStroke();
}
public void draw()
{
    background(0);

    Squaren(10,10, width-10);

}

public void mouseClicked()
{
  a = a + 50;
  width += 20;
  if(a > 200)
    {
      a=0;
      b = b+20;
    }

  if(b > 220)
    b=0;

}
public void Squaren(int x, int y, int len)
{
   if(len <= 5)
   {
   fill(a,b,150);
   rect(x,y,len,len);
   }
   else
   {
   	Squaren(x,y,len/2);
    Squaren(x+len/2,y,len/2);
    Squaren(x,y+len/2,len/2);
    Squaren(x+len/2,y+len/2,len/2);
   } 
}