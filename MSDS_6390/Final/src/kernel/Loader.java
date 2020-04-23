/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kernel;
import java.util.ArrayList;
import processing.core.*;
import processing.data.*;

/**
 *
 * @author Javier
 */
public class Loader
{
  private static final String url = "https://raw.githubusercontent.com/javierjr55/SMU_MSDS/master/Data_Sets/mars_missions.csv";
  private Table rawData;
  private ArrayList<Mission> missions;
  public PApplet p;
  
  public Loader(PApplet _p)
  {
      p = _p;
//  }
//  
//  public Loader()
//  {
    //create new array list object 
    missions = new ArrayList<Mission>();
    
    //load data to variable
    rawData = p.loadTable(url, "header, csv");
    
    //iterate through each line to assign data
    for (TableRow row : rawData.rows()) {
      String name = row.getString("Name");
      float lat = row.getFloat("Latitude");
      float lon = row.getFloat("Longitude");
      String operator = row.getString("Operator");
    
      //assign new data row to object
      Mission mission = new Mission(name, lat, lon, operator);
      //add new data to object
      missions.add(mission);
    }
    //println("Data loaded: " + missions.size() + " records loaded.");
  }
  
  public ArrayList<Mission> getMissions()
  {
    return missions;
  }
}
