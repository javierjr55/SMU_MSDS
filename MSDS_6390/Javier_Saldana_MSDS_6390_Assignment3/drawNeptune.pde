void drawNeptune()
{
  //planet
  float planetRadius = 3.865336028;
  fill(0, 0, 255);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, planetRadius*earthRadius, planetRadius*earthRadius);
  // rings
  noFill();
  stroke(255,50);
  ellipse(0, 0, 40, 40);
  ellipse(0, 0, 42, 42);
  ellipse(0, 0, 45, 45);
  ellipse(0, 0, 46, 46);
  ellipse(0, 0, 48, 48);
  //moon orbits
  stroke(255,25);
  ellipse(0, 0, 65, 65); //triton
}
