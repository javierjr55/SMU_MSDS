int point0x = 100;
int point0y = 400;
int point1x = 200;
int point1y = 100;
int point2x = 300;
int point2y = 100;
int point3x = 400;
int point3y = 400;

void setup()
{
size(500,500);
}

void draw()
{
  background(200);

  noFill();
  stroke(255,0,0);
  strokeWeight(5);
  beginShape();
  //In order to make curve touch all points
  //simply add the first and last point again
    //curveVertex(point0x,point0y);
    curveVertex(point0x,point0y);
    curveVertex(point1x,point1y);  
    curveVertex(point2x,point2y);  
    curveVertex(point3x,point3y); 
    //curveVertex(point3x,point3y);
  endShape();
  
  stroke(0,0,0);
  strokeWeight(1);
  fill(255,255,255);
  ellipse(point0x,point0y, 10,10);
  ellipse(point1x,point1y, 10,10);
  ellipse(point2x,point2y, 10,10);
  ellipse(point3x,point3y, 10,10);
}
