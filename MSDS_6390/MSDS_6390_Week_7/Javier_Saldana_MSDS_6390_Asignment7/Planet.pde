class Planet {
  float velocityRel, radius, orbitRel;
  color planetColor;
  //float velocity = 0;
  
  Planet(float velocityRel, float radius, float orbitRel, color planetColor){
    //this.velocity = velocity;
    this.velocityRel = velocityRel;
    this.radius = radius;
    this.orbitRel = orbitRel;
    this.planetColor = planetColor;
  }
  
  void drawPlanet(){
    
  // speed calc
  velocity += TWO_PI/500*velocityRel;
  
  // center screen point
  translate(width*0.5, height*0.5);
  pushMatrix();
  
    //speed of planet
    rotate(velocity);

    //position of planet
    translate(earthOrbit*orbitRel/2, 0);
  
    //planet
    fill(planetColor);
    stroke(0);
    ellipseMode(CENTER);
    ellipse(0, 0, radius*earthRadius, radius*earthRadius);
    
  popMatrix();
  }
}
