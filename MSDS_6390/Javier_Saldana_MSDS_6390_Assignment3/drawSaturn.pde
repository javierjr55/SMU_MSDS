void drawSaturn()
{
  //planet
  float planetRadius = 9.141990904;
  fill(212, 175, 55);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, planetRadius*earthRadius, planetRadius*earthRadius);
  // rings
  noFill();
  stroke(255,100);
  strokeWeight(7);
  ellipse(0, 0, 30, 30);

  //moon orbits
  stroke(255,25);
  strokeWeight(1);
  ellipse(0, 0, 75, 75); //tethys
  ellipse(0, 0, 80, 80); //dione
  ellipse(0, 0, 100, 100); //rhea
  ellipse(0, 0, 150, 150); //titan
}
