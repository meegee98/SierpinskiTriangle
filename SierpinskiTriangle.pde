public void setup()
{
	size(500, 500);

}
public void draw()
{
	sierpinski();

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len<=20)
		triangle(x, y, len, y+len, len+x, len);
	else{
		triangle(x, y, len/2, y+len/2, x+len/2, len/2);
	}
}