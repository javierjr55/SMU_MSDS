void drawJupiter()
{
    //planet
  float planetRadius = 10.97549267;
  fill(255, 120, 0);
  //stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, planetRadius*earthRadius, planetRadius*earthRadius);
  // rings
  noFill();
  stroke(255,50);
  ellipse(0, 0, 40, 40);
  ellipse(0, 0, 41, 41);
  //moon orbits
  stroke(255,25);
  ellipse(0, 0, 50, 50); //io
  ellipse(0, 0, 75, 75); //europa
  ellipse(0, 0, 120, 120); //ganymede
  ellipse(0, 0, 150, 150); //callisto
}
