/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kernel;
import processing.core.*;
import static processing.core.PConstants.SPHERE;

/**
 *
 * @author Javier
 */
public class Mars
{
    private PApplet p;
    float revolution;
    int r = 300;
    PShape planet;
    PImage mars_map;
    
    public Mars(PApplet _p)
    {
        p = _p;
    }
    
  public void planet()
  {     
    //mars_map = p.loadImage("https://planetary.s3.amazonaws.com/assets/images/charts-diagrams/2019/20190220_mars_lander_map.jpg");
    mars_map = p.loadImage("https://ezqorg.dm.files.1drv.com/y4mqQ4ehJGLiXr5PY9kRpUDIyJ_JNV5YZSXDnNgg6Mk_TTKieXlLyTOZI7Xx9c5PZTQIkVWNUwEmmXBMg-T--okPIvYjnmVUyBbfTJcGoxv6IT6LUMH6J5mEg4MN5sQATtPtAWZV20Ww8WnjS_Zl4sDnObHnCJHZxGc9-yUy7RUzRgbMikQ63xIfaESaKSa56LFxszipUV92YzYfzWJgwLsfA/nasa_mars.jpg");
    //mars_map = p.loadImage("nasa_mars.jpg");
    
    p.noStroke();
    planet = p.createShape(SPHERE, r);
    planet.setTexture(mars_map);
  }
  
  public void motion()
  {
    //move Mars to center
    p.translate(p.width/2, p.height/2);
    
    //rotate axis by 25 degrees to represents Mars' true axis tilt
    p.rotateZ(p.radians(25));
    
    //make Mars revolve in axis
    p.rotateY(revolution += 0.005);
    
    if (p.keyPressed == true){
    p.directionalLight(255, 255, 255, -1, 0, 0);
    }else p.lights();
    
    p.fill(200);
    p.shape(planet);
    
    //draw y axis for reference
    p.stroke(100, 100, 100);
    p.line(0, -500, 0, 0, 500, 0);
    p.noStroke();
  }
  
  public void HUD()
  {
    //2D legend
    p.camera();
    p.hint(p.DISABLE_DEPTH_TEST);
    p.noLights();
    
    //title
    p.textSize(74);
    p.textAlign(p.CENTER);
    p.fill(255);
    p.text("M I S S I O N S  T O  M A R S",p.width/2, (float) (p.height*.07));
    
    //legend
    p.fill(255, 255, 255, 40);
    p.rect(10, 80, 200, 100);
    p.fill(255);
    p.textSize(12);
    p.textAlign(p.LEFT);
    p.ellipseMode(p.CENTER);
    p.stroke(0);
    p.text("Legend", 15, 95);
    
    p.fill(255, 255, 0);
    p.ellipse(20, 110, 10, 10);
    p.fill(255);
    p.text("European Space Agency (EU)", 35, 115);
  
    p.fill(0, 0, 255);
    p.ellipse(20, 127, 10, 10);
    p.fill(255);
    p.text("National Space Centre (UK)", 35, 132);
    
    p.fill(255, 255, 255);
    p.ellipse(20, 144, 10, 10);
    p.fill(255);
    p.text("NASA (USA)", 35, 149);
    
    p.fill(255, 0, 0);
    p.ellipse(20, 161, 10, 10);
    p.fill(255);
    p.text("Soviet Union (RUSSIA)", 35, 166);
    p.noStroke();
  
    p.hint(p.ENABLE_DEPTH_TEST);
  }
  
}