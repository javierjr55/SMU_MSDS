class Loader
{
  private static final String fileName = "Dallas_Auto_Accidents2020.csv";
  private Table rawData;
  private ArrayList<Accident> accidents;
  
  public Loader()
  {
    //create new array list object 
    accidents = new ArrayList<Accident>();
    
    //load data to variable
    rawData = loadTable(fileName, "header, csv");
    
    //iterate through each line to assign data
    for (TableRow row : rawData.rows()) {
      String division=row.getString("Division");
      String date=row.getString("Date1 of Occurrence");
      String weekday=row.getString("Day1 of the Week");
      Integer day=row.getInt("Day1 of the Year");
      String time=row.getString("Time1 of Occurrence");
      Integer hour = row.getInt("Hour of Occurrence");
      Float xCoord=row.getFloat("X Coordinate");
      Float yCoord=row.getFloat("Y Cordinate");
      String address=row.getString("Location1");
      Float lat = row.getFloat("lat");
      Float lon = row.getFloat("lon");

      //assign new data row to object
      Accident accident = new Accident(division, date, weekday, day, time, hour, xCoord, yCoord, address, lat, lon);
      //add new data to object
      accidents.add(accident);
    }
    println("Data loaded: " + accidents.size() + " records loaded.");
  }
  
  public ArrayList<Accident> getAccidents()
  {
    return accidents;
  }
}
