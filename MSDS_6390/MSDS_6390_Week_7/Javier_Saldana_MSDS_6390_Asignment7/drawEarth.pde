void drawEarth()
{
  //planet
  fill(0, 255, 150);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, earthRadius, earthRadius);
  // orbit line for moon
  noFill();
  stroke(255,25);
  ellipse(0, 0, 20, 20);
}
