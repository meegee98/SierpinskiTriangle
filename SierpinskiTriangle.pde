public void setup()
{
	size(800, 800);
	background(255, 255, 255);

}
public void draw()
{
	//mousePressed();
	//triangle(100, 700, 400, 100, 700, 700);

}
public void mousePressed()//optional
{
	background(255, 255, 255);
	sierpinski(mouseX, mouseY, mouseX);
	//sierpinski(100, 700, 500);
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
		 noStroke();
		 fill(255, 0, 0, 100);
		 sierpinski(x, y, len/2);
		 fill(0, 0, 255, 100);
		 sierpinski(x+len/2, y, len/2);
		 fill(0, 255, 0, 100);
		 sierpinski(x+len/4, y-len/2, len/2);
	}
}
public void keyPressed (){
    if(key==CODED && keyCode==UP)
	    {
	    	background(255, 255, 255);
	    }
	
}