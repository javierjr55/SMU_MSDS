void drawSun()
{
  float planetRadius = 10.3204;
  fill(255, 255, 0);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(width*0.5, height*0.5, planetRadius*earthRadius, planetRadius*earthRadius); 
}
