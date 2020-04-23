class Loader
{
  private static final String fileName = "animal.csv";
  private Table rawData;
  private ArrayList<Pet> pets;
  
  public Loader()
  {
    //create new array list object 
    pets = new ArrayList<Pet>();
    
    //load data to variable
    rawData = loadTable(fileName, "header, csv");
    
    //iterate through each line to assign data
    for (TableRow row : rawData.rows()) {
      String iD = row.getString("Animal Id");
      String type = row.getString("Animal Type");
      String breed = row.getString("Animal Breed");
      String censusTract = row.getString("Census Tract");
      String councilDistrict = row.getString("Council District");
      String inType = row.getString("Intake Type");
      String inSubType = row.getString("Intake Subtype");
      Integer inTotal = row.getInt("Intake Total");
      String reason = row.getString("Reason");
      String inDate = row.getString("Intake Date");
      Integer inTime = row.getInt("Intake Hour");
      String dueOut = row.getString("Due Out");
      String inCond = row.getString("Intake Condition");
      String holdReq = row.getString("Hold Request");
      String outType = row.getString("Outcome Type");
      String outSubType = row.getString("Outcome Subtype");
      String outDate = row.getString("Outcome Date");
      String outTime = row.getString("Outcome Time");
      String outCond = row.getString("Outcome Condition");
      String chip = row.getString("Chip Status");
      String origin = row.getString("Animal Origin");
      String info = row.getString("Additional Information");
      String mo = row.getString("Month");
      String yr = row.getString("Year");

      //assign new data row to object
      Pet pet = new Pet(iD, type, breed, censusTract, councilDistrict, inType, inSubType, inTotal, reason, inDate, inTime, dueOut, inCond, holdReq, outType, outSubType, outDate, outTime, outCond, chip, origin, info, mo, yr);
      //add new data to object
      pets.add(pet);
    }
    println("Data loaded: " + pets.size() + " records loaded.");
  }
  
  public ArrayList<Pet> getPets()
  {
    return pets;
  }
}
