void drawMercury()
{
  //planet
  float planetRadius = 0.383021728;
  fill(255, 10, 10);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, planetRadius*earthRadius, planetRadius*earthRadius);
}
