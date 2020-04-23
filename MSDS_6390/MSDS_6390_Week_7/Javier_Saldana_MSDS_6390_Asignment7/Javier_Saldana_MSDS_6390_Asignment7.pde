//Javier Saldana

float earthRadius = 5.25;
float earthOrbit = earthRadius*250;
float earthVelRel = TWO_PI/500;
float velocity = 0;

float earthVel = 0;
float moonVel = 0;
float mercuryVel = 0;
float venusVel = 0;
float marsVel = 0;
float phobosVel = 0;
float deimosVel = 0;

// orbits and relative to earth
float mercuryOrbRel = 0.38704819;
float venusOrbRel = 0.723321859;
//float earthOrbit = earthRadius*75;
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
  
  //draw orbits
  Orbit orbMercury = new Orbit(0.38704819);
  orbMercury.drawOrbit();
 
  Orbit orbVenus = new Orbit(0.723321859);
  orbVenus.drawOrbit();

  Orbit orbEarth = new Orbit(1);
  orbEarth.drawOrbit();
  
  Orbit orbMars = new Orbit(1.5232358);
  orbMars.drawOrbit();
  
  drawSun();
  /**************************************************************************
  I attempted to include classes but for some reason, the planet gets pushed 
  out to the bottom right. I'm assuming it has something to do with the push/pop
  matrix manipulation I am performing. None the less, it works with the first
  planet but fails with the rest. As a result, I left the original methods in
  place for functionality purposes. 
  
  I was able to create an 'Orbit' class and reduce the size of the code a
  substantial amount. I'll keep working on it on my personal time to figure
  out where is it that I went wrong with the translating or rotating.
  
    color planetColor = color(255,10,10);
  Planet planetMercury = new Planet(1.607, 0.383021728, 0.38704819, planetColor);
  planetMercury.drawPlanet();
  
    planetColor = color(255,0,0);
  Planet planetVenus = new Planet(1.174,0.949974735, 0.723321859, planetColor);
  planetVenus.drawPlanet();
  *****************************************************************************/
  
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
  
  //Planet(velocityRel, radius, orbitRel, planetColor)


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
  popMatrix();*/
  
}
