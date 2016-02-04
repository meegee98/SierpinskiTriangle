public void setup()
{
	size(700, 800);
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
	//sierpinski(mouseX, mouseY, 500);
	//math.rand
	sierpinski(50, 700, mouseX);
}
public void keyPressed ()
{
    int myColor= color(225, 194, 240, 1);
    if (key==CODED && keyCode==UP) 
	 {
	 	background(myColor);
	 	sierpinski(50, 700, 600);
	 }
    if(key==CODED && keyCode==DOWN)
	    {
	    	background(myColor);
	    	sierpinski2(50, 700, 600);
	    }
	 if(key==CODED && keyCode==LEFT)
	 {
	 	background(myColor);
	 	sierpinski3(50, 700, 600);
	 }	
	 	
}
public void sierpinski(int x, int y, int len) 
{
	if(len<=20)
	{
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
public void sierpinski2(int x, int y, int len)
{
	
	if(len <=20)
	{
		ellipse(x, y, len, len);
	}
	else
	{	
		noStroke();
		fill(255, 0, 0, 100);
		sierpinski2(x, y, len/2);
		fill(0, 0, 255, 100);
		sierpinski2(x+len/2, y, len/2);
		fill(0, 255, 0, 100);
		sierpinski2(x+len/4, y-len/2, len/2);
	}
}
public void sierpinski3(int x, int y, int len)
{
	if(len <=20)
	{
		rect(x, y, len, len);
	}
	else
	{
		noStroke();
		fill(255, 0, 0, 100);
		sierpinski3(x, y, len/2);
		fill(0, 0, 255, 100);
		sierpinski3(x+len/2, y, len/2);
		fill(0, 255, 0, 100);
		sierpinski3(x+len/4, y-len/2, len/2);
	}
}
