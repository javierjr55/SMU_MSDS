/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kernel;
import processing.core.*;
import java.util.ArrayList;
import processing.core.PApplet;

/**
 *
 * @author Javier
 */
public class dataPoints
{  
  //declare variables
  public PApplet p;
  private PVector[] coordinates;
  private String[] names, operators;
  
  //metrics
  private float phi;
  private float theta;
  private float x;
  private float y;
  private float z;
  int r = 300;
  
  public dataPoints(PApplet _p)
  {
      p = _p;
  }
  
  public dataPoints(ArrayList<Mission> missions, PApplet _p)
    {
        p = _p;
      int i = 0;
      //initialize arrays
      coordinates = new PVector[missions.size()];
      names = new String[missions.size()];
      operators = new String[missions.size()];
      
      for(Mission m : missions)
      {
        //call names
        names[i] = m.getName();
        
        //call operators
        operators[i] = m.getOperator();
        
        //call coords
        Float pY = m.getLat();
        Float pX = m.getLon();
        coordinates[i] = new PVector(pX, pY);
        
        i++;
      }
    }
    
    /**
     *
     */
    public void render()
  {
    for(int i = 0; i < names.length; i++)
    {
        //color circles and curves based on age
        switch (operators[i]) {
            case "Soviet Union":
                p.fill(255, 0, 0);
                break;
            case "NASA":
                p.fill(255, 255, 255);
                break;
            case "ESA":
                p.fill(255, 255, 0);
                break;
            case "National Space Centre":
                p.fill(0, 0, 255);
                break;
            default:
                break;
        }
       
        p.pushMatrix();
        theta = p.radians(coordinates[i].y);
        phi = p.radians(coordinates[i].x) + p.PI;
        x = r * p.cos(theta) * p.cos(phi);
        y = -r * p.sin(theta);
        z = -r * p.cos(theta) * p.sin(phi);
        p.translate(x, y, z);
        p.sphere(5);
        p.popMatrix();
        
        p.println("Point "+i+": ("+coordinates[i].y+", "+coordinates[i].x+")");
    }
  }
}
