class Accident
{
  private String division;
  private String date;
  private String weekday;
  private Integer day;
  private String time;
  private Integer hour;
  private Float xCoord;
  private Float yCoord;
  private String address;
  private Float lat;
  private Float lon;

  public Accident(){
  }
  
  public Accident(String division, String date, String weekday, Integer day, String time, Integer hour, Float xCoord, Float yCoord, String address, float lat, float lon)
  {
    this.division = division;
    this.date = date;
    this.weekday = weekday;
    this.day = day;
    this.time = time;
    this.hour = hour;
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    this.address = address;
    this.lat = lat;
    this.lon = lon;
  }
  
  public String getDivision(){return division;};
  public String getDate(){return date;};
  public String getWeekday(){return weekday;};
  public Integer getDay(){return day;};
  public String getTime(){return time;};
  public Integer getHour(){return hour;};
  public Float getXCoord(){return xCoord;};
  public Float getYCoord(){return yCoord;};
  public String getAddress(){return address;};
  public Float getLat(){return lat;};
  public Float getLon(){return lon;};

}
