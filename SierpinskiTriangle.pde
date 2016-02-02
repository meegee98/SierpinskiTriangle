public void setup()
{
	size(800, 800);
	background(0,0,0);

}
public void draw()
{
	sierpinski(100, 700, 500);
	//triangle(100, 700, 400, 100, 700, 700);

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=20)
	{
		//fill(0, 0, 255);
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else
	{
		 fill(255, 0, 0, 3);
		 sierpinski(x, y, len/2);
		 fill(0, 0, 255, 3);
		 sierpinski(x+len/2, y, len/2);
		 fill(0, 255, 0, 3);
		 sierpinski(x+len/4, y-len/2, len/2);
	}
}