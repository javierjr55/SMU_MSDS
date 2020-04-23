//Javier Saldana

float earthVel = 0;
float moonVel = 0;
float mercuryVel = 0;
float venusVel = 0;
float marsVel = 0;
float phobosVel = 0;
float deimosVel = 0;
float jupiterVel = 0;
float ganymedeVel = 0;
float callistoVel = 0;
float ioVel = 0;
float europaVel = 0;
float saturnVel = 0;
float tethysVel = 0;
float dioneVel = 0;
float rheaVel = 0;
float titanVel = 0;
float uranusVel = 0;
float umbrielVel = 0;
float titaniaVel = 0;
float neptuneVel = 0;
float tritonVel = 0;
float earthRadius = 1.25;
float earthVelRel = TWO_PI/500;

// orbits and relative to earth
float mercuryOrbRel = 0.38704819;
float venusOrbRel = 0.723321859;
float earthOrbit = earthRadius*75;
float marsOrbRel = 1.5232358;
float jupiterOrbRel = 5.204388985;
float saturnOrbRel = 9.582616179;
float uranusOrbRel = 19.19104991;
float neptuneOrbRel = 30.04518072;

void setup()
{
  size(3000, 2000);
}

void draw()
{
  background(0);
  //  int starCount = 500;
  //for (int i = 0; i < starCount; i += 1){
  //  noStroke();
  //  fill(255);
  //  ellipse(random(width), random(height), 1,1);
  //}
  
  
  noFill();
  //orbit lines color
  stroke(255,25);
  ellipseMode(CENTER);
  // mercury orbit
  ellipse(width*0.5, height*0.5, earthOrbit*mercuryOrbRel, earthOrbit*mercuryOrbRel); 
  // venus orbit
  ellipse(width*0.5, height*0.5, earthOrbit*venusOrbRel, earthOrbit*venusOrbRel); 
  // earth orbit
  ellipse(width*0.5, height*0.5, earthOrbit, earthOrbit);
  // mars orbit
  ellipse(width*0.5, height*0.5, earthOrbit*marsOrbRel, earthOrbit*marsOrbRel); 
  // jupiter orbit
  ellipse(width*0.5, height*0.5, earthOrbit*jupiterOrbRel, earthOrbit*jupiterOrbRel); 
  // saturn orbit
  ellipse(width*0.5, height*0.5, earthOrbit*saturnOrbRel, earthOrbit*saturnOrbRel); 
  // uranus orbit
  ellipse(width*0.5, height*0.5, earthOrbit*uranusOrbRel, earthOrbit*uranusOrbRel); 
  // neptune orbit
  ellipse(width*0.5, height*0.5, earthOrbit*neptuneOrbRel, earthOrbit*neptuneOrbRel);  
  drawSun();
  
  //draw mercury
  // speed calc
  mercuryVel += earthVelRel*1.607;
  // center screen point
  translate(width*0.5, height*0.5);
  pushMatrix();
    //speed of planet
    rotate(mercuryVel);
    //position of planet
    translate(earthOrbit*mercuryOrbRel/2, 0);
    drawMercury();
  popMatrix();
  
  //draw venus
  // speed calc
  venusVel += earthVelRel*1.174;
  pushMatrix();
    //speed of planet
    rotate(venusVel);
    //position of planet
    translate(earthOrbit*venusOrbRel/2, 0);
    drawVenus();
  popMatrix();
  

  // draw earth
  // speed calcs
  earthVel += earthVelRel;
  moonVel += TWO_PI/250;
  pushMatrix();
    //speed of earth
    rotate(earthVel);
    //position of earth
    translate(earthOrbit/2, 0);
    drawEarth();
    pushMatrix();
      // speed of moon
      rotate(moonVel);
      // moon position
      translate(10, 0);
      // color of moon
      fill(200);
      // size of moon
      ellipse(0,0, 1, 1);
    popMatrix();
  popMatrix();
  
  // draw mars
  // speed calcs
  marsVel += earthVelRel*0.802;
  phobosVel += TWO_PI/255;
  deimosVel += TWO_PI/25;
  pushMatrix();
    //speed of planet
    rotate(marsVel);
    //position of planet
    translate(earthOrbit*marsOrbRel/2, 0);
    drawMars();
    pushMatrix();
      // speed of phobos
      rotate(phobosVel);
      // phobos position
      translate(20, 0);
      // color of phobos
      fill(255,0,0);
      // size of phobos
      ellipse(0,0, 2, 1);
    popMatrix();
    pushMatrix();
      // speed of deimons
      rotate(deimosVel);
      // deimos position
      translate(10, 0);
      // color of deimos
      fill(215,0,0);
      // size of phobos
      ellipse(0,0, 2, 1);
    popMatrix();
  popMatrix();
  
  // draw jupiter
  // speed calcs
  jupiterVel += earthVelRel*0.0734;
  ganymedeVel += TWO_PI/100;
  callistoVel += TWO_PI/200;
  ioVel += TWO_PI/25;
  europaVel += TWO_PI/50;
  pushMatrix();
    //speed of planet
    rotate(jupiterVel);
    //position of planet
    translate(earthOrbit*jupiterOrbRel/2, 0);
    drawJupiter();
    pushMatrix(); //ganymede
      // speed
      rotate(ganymedeVel);
      // position
      translate(60, 0);
      // color
      fill(255,255,255);
      // size
      ellipse(0,0, 2, 1);
    popMatrix();
    pushMatrix(); //callisto
      // speed
      rotate(callistoVel);
      // deimos
      translate(75, 0);
      // color
      fill(255,255,255);
      // size
      ellipse(0,0, 2, 1);
    popMatrix();
    pushMatrix(); //io
      // speed
      rotate(ioVel);
      // position
      translate(25, 0);
      // color
      fill(255,255,255);
      // size
      ellipse(0,0, 2, 1);
    popMatrix();
    pushMatrix(); //europa
      // speed
      rotate(europaVel);
      // position
      translate(37.5, 0);
      // color
      fill(255,255,255);
      // size
      ellipse(0,0, 2, 1);
    popMatrix();
  popMatrix();
  
  // draw saturn
  // speed calcs
  saturnVel += earthVelRel*0.0323;
  tethysVel += TWO_PI/50;
  dioneVel += TWO_PI/75;
  rheaVel += TWO_PI/100;
  titanVel += TWO_PI/175;
  pushMatrix();
    //speed of planet
    rotate(saturnVel);
    //position of planet
    translate(earthOrbit*saturnOrbRel/2, 0);
    drawSaturn();
    pushMatrix(); //tethys
      // speed
      rotate(tethysVel);
      // position
      translate(37.5, 0);
      // color
      fill(255,255,255);
      // size
      ellipse(0,0, 2, 1);
    popMatrix();
    pushMatrix(); //dione
      // speed
      rotate(dioneVel);
      // deimos
      translate(40, 0);
      // color
      fill(255,255,255);
      // size
      ellipse(0,0, 2, 1);
    popMatrix();
    pushMatrix(); //rhea
      // speed
      rotate(rheaVel);
      // position
      translate(50, 0);
      // color
      fill(255,255,255);
      // size
      ellipse(0,0, 2, 1);
    popMatrix();
    pushMatrix(); //titan
      // speed
      rotate(titanVel);
      // position
      translate(75, 0);
      // color
      fill(255,255,255);
      // size
      ellipse(0,0, 2, 1);
    popMatrix();
  popMatrix();
  
  // draw uranus
  // speed calcs
  uranusVel += earthVelRel*0.0282;
  umbrielVel += TWO_PI/50;
  titaniaVel += TWO_PI/75;
  pushMatrix();
    //speed of planet
    rotate(uranusVel);
    //position of planet
    translate(earthOrbit*uranusOrbRel/2, 0);
    drawUranus();
    pushMatrix(); //tethys
      // speed
      rotate(umbrielVel);
      // position
      translate(37.5, 0);
      // color
      fill(255,255,255);
      // size
      ellipse(0,0, 2, 1);
    popMatrix();
    pushMatrix(); //dione
      // speed
      rotate(titaniaVel);
      // deimos
      translate(40, 0);
      // color
      fill(255,255,255);
      // size
      ellipse(0,0, 2, 1);
    popMatrix();
  popMatrix();
  
  
  // draw neptune
  // speed calcs
  neptuneVel += earthVelRel*0.0182;
  tritonVel += TWO_PI/150;
  pushMatrix();
    //speed
    rotate(neptuneVel);
    //position
    translate(earthOrbit*neptuneOrbRel/2, 0);
    drawNeptune();
    pushMatrix();
      // speed
      rotate(tritonVel);
      // moon
      translate(32.5, 0);
      // color
      fill(200);
      // size
      ellipse(0,0, 1, 1);
    popMatrix();
  popMatrix();

}
