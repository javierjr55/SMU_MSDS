/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kernel;

/**
 *
 * @author Javier
 */
public class Mission
{
  private String name;
  private Float lat;
  private Float lon;
  private String operator;

  public Mission(){}
  
  public Mission(String name, Float lat, Float lon, String operator)
  {
    this.name = name;
    this.lat = lat;
    this.lon = lon;
    this.operator = operator;
  }
  
  public String getName(){return name;};
  public Float getLat(){return lat;};
  public Float getLon(){return lon;};
  public String getOperator(){return operator;};
}
