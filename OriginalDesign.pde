//Oliver Noss AP Computer Science Block 4 
int n = 50;
float[] x = new float[n];
float[] y = new float[n];
color[] rgb = new color[n];
float[] dx = new float[n];
float[] dy = new float[n];
int c = 0; 
int ringHeight = 10;
int ringWidth = 10;
//add class next

void setup()
{   
	size(500,500);
	background(0);
	stroke(0);
	strokeWeight(5);
	noFill();
	while(c < n)
	{
		x[c] = 250;
		y[c] = 250;
		dx[c] = random(-5.0,5.0);
		dy[c] = random(-5.0,5.0);
		while(dx[c]==0 || dy[c]==0 || dx[c]==dy[c] || dx[c]==-dy[c])
		{
			dx[c] = random(-4.0,4.0);
			dy[c] = random(-4.0,4.0);
		}
		rgb[c] = color(random(256), random(256), random(256));  
		c++;
	}
}
void draw()
{   
	noStroke();
	fill(0,0,0,10);
	rect(0,0,500,500);
	c = 0;
	bounce();
	move();
		
}

void move()
{ 
	c = 0;
	while(c < n)
		{
			stroke(rgb[c]);
			ellipse(int(x[c]), int(y[c]), ringWidth, ringHeight); //int()
			x[c] += dx[c];  
			y[c] += dy[c];
			c++;
		}
}

void bounce()
{
	while(c < n)
	{
		if (x[c] <= ringWidth/2 || x[c] >= 500-ringWidth/2)
		{
			dx[c]=-dx[c];
		}
		if (y[c] <= ringHeight/2 || y[c] >= 500-ringHeight/2)
		{
			dy[c]=-dy[c];
		}
		c++;
	}
}