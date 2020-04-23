class Pet
{

  private String iD;
  private String type;
  private String breed;
  private String censusTract;
  private String councilDistrict;
  private String inType;
  private String inSubType;
  private Integer inTotal;
  private String reason;
  private String inDate;
  private Integer inTime;
  private String dueOut;
  private String inCond;
  private String holdReq;
  private String outType;
  private String outSubType;
  private String outDate;
  private String outTime;
  private String outCond;
  private String chip;
  private String origin;
  private String info;
  private String mo;
  private String yr;

  public Pet(){
  }
  
  public Pet(String iD, String type, String breed, String censusTract, String councilDistrict, String inType, String inSubType, Integer inTotal,  String reason, String inDate, Integer inTime, String dueOut, String inCond, String holdReq, String outType, String outSubType, String outDate, String outTime, String outCond, String chip, String origin, String info, String mo, String yr)
  {
    this.iD = iD;
    this.type = type;
    this.breed = breed;
    this.censusTract = censusTract;
    this.councilDistrict = councilDistrict;
    this.inType = inType;
    this.inSubType = inSubType;
    this.inTotal = inTotal;
    this.reason = reason;
    this.inDate = inDate;
    this.inTime = inTime;
    this.dueOut = dueOut;
    this.inCond = inCond;
    this.holdReq = holdReq;
    this.outType = outType;
    this.outSubType = outSubType;
    this.outDate = outDate;
    this.outTime = outTime;
    this.outCond = outCond;
    this.chip = chip;
    this.origin = origin;
    this.info = info;
    this.mo = mo;
    this.yr = yr;

  }
  
  public String getID() {return iD;};
  public String getType() {return type;};
  public String getBreed() {return breed;};
  public String getCensusTract() {return censusTract;};
  public String getCouncilDistrict() {return councilDistrict;};
  public String getIntakeType() {return inType;};
  public String getIntakeSubType() {return inSubType;};
  public Integer getIntakeTotal() {return inTotal;};
  public String getReason() {return reason;};
  public String getIntakeDate() {return inDate;};
  public Integer getIntakeTime() {return inTime;};
  public String getDueOut() {return dueOut;};
  public String getIntakeCondition() {return inCond;};
  public String getHoldRequest() {return holdReq;};
  public String getOutcomeType() {return outType;};
  public String getOutcomeSubType() {return outSubType;};
  public String getOutcomeDate() {return outDate;};
  public String getOutcomeTime() {return outTime;};
  public String getOutcomeCondition() {return outCond;};
  public String getChipStatus() {return chip;};
  public String getOrigin() {return origin;};
  public String getInfo() {return info;};
  public String getMonth() {return mo;};
  public String getYear() {return yr;};

}
