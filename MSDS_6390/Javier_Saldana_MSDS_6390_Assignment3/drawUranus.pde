void drawUranus()
{
  //planet
  float planetRadius = 3.981556342;
  fill(135, 206, 235);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, planetRadius*earthRadius, planetRadius*earthRadius);
  // rings
  noFill();
  stroke(255,100);
  ellipse(0, 0, 10, 10);

  //moon orbits
  stroke(255,25);
  strokeWeight(1);
  ellipse(0, 0, 75, 75); //umbriel
  ellipse(0, 0, 80, 80); //titania
}
