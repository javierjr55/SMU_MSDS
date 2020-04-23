package kernel;

import processing.core.*; 
import processing.data.*; 
import javax.annotation.processing.SupportedSourceVersion;
import javax.lang.model.SourceVersion;

/**
 *
 * @author Javier Saldaña
 */
@SupportedSourceVersion(SourceVersion.RELEASE_13)
public class Final extends PApplet {

Loader loader;
dataPoints landings;
Mars mars;

PImage mars_map;
PShape planet;
int r = 300;

Table table;

public void setup()
{
  
  loader = new Loader(this);
  landings = new dataPoints(this.loader.getMissions(), this);
  mars = new Mars(this);
  
  mars.planet();
}

public void draw() 
{
  background(0);

  //Gives user ability to move planet around
    if (mousePressed)
    {
      camera(width+map(mouseX, 0, width, -2*width, 2*width), 
         height+map(mouseY, 0, height, -height, height),
         height/2/tan(PI*30.0f / 180.0f), 
         width/2, height/2.0f, 0, 
         0, 1, 0);  
    } else camera();
  
    //Adds motion to the planet
  mars.motion();
  
  //Plots the data points to the planet
  landings.render();
  
  //Adds legend and title 
  mars.HUD();

}
@Override
  public void settings() {  size(1000, 1000, P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "kernel.Final" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
