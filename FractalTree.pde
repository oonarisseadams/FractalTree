private double fractionLength = .8; 
private int smallestBranch = 20; 
private double branchAngle = .5;  
public void setup() 
{   
  size(400,400);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);
  stroke(120, 50, 50);   
  line(200,300,200,380);   
  drawBranch(200,300,100,3*Math.PI/2);
} 
public void drawBranch(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  double angle3 = angle;
  branchLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  int endX3 = (int)(branchLength*Math.cos(angle3) + x);
  int endY3 = (int)(branchLength*Math.sin(angle3) + y);
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  line(x, y, endX3, endY3);
  if(branchLength > smallestBranch)
  {
    drawBranch(endX1, endY1, branchLength-5, angle1);
    drawBranch(endX2, endY2, branchLength-5, angle2);
    drawBranch(endX3, endY3, branchLength-5, angle3);
  }
  
} 
