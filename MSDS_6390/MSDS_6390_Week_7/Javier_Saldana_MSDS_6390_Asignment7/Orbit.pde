class Orbit {
  float orbitRel;
  
  Orbit (float orbitRel){
    this.orbitRel = orbitRel;
  }
  
  void drawOrbit(){
    noFill();
    //orbit lines color
    stroke(255,25);
    ellipseMode(CENTER);
    //orbit
    ellipse(width*0.5, height*0.5, earthOrbit*orbitRel, earthOrbit*orbitRel); 
  }
}
