void drawMars()
{
  //planet
  float planetRadius = 0.532087;
  fill(255, 0, 0);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, planetRadius*earthRadius, planetRadius*earthRadius);
  // orbit line for moons
  noFill();
  stroke(255,25);
  ellipse(0, 0, 20, 20);
  ellipse(0, 0, 40, 40);
}
