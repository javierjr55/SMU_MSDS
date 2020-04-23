class divisionVisual{
  //margins
  private float vis2Left = canvasWidth*.1;
  private float vis2Right = canvasWidth*.35;
  private float vis2Top = canvasHeight*.35;
  private float vis2Bottom = canvasHeight*.5;
  private float vis2Width = vis2Right - vis2Left;
  private float vis2Height = vis2Bottom - vis2Top;
  
  //variables
  private int[] values;
  private float[] angles;
  private String[] division;
  private int sumValues;
  //private int maxValue;
  //private PVector[] position;
  
  divisionVisual(){    
  }
  
    public divisionVisual(ArrayList<Accident> accidents)
  {
    //pull in data
    sumValues = 0;
    values = new int[7];
    division = new String[7];
    division[0] = "Central";
    division[1] = "North Central";
    division[2] = "Northeast";
    division[3] = "Northwest";
    division[4] = "South Central";
    division[5] = "Southeast";
    division[6] = "Southwest";
    //position = new PVector[division.length];
    
    for(int i = 0; i < values.length; i++)
    {
      int divisionCounter = 0;
      for(Accident a : accidents)
      {
        String tempValues = a.getDivision();
        if(tempValues.equals(division[i]))
        {
          divisionCounter++;
        }
      }
      values[i] = divisionCounter;
      sumValues += divisionCounter;
      //println(axes[i]+": "+division[i]);
    }
    
    //create angles
    angles = new float[values.length];
    
    for(int i = 0; i < values.length; i++)
    {
      angles[i] = 360f / sumValues * values[i];
    }
  }
  
  public void render()
  {
    //Pie Chart
    float lastAngle = 0;
    float diameter = vis2Width;
    for(int i = 0; i < values.length; i++)
    {
      float red = map(i, 0, values.length, 0, 255);
      if(mouseX >=  vis2Right+50 && mouseX <= vis2Right+70 && 
      mouseY >= vis2Top - 100 + 55*i && mouseY <= vis2Top - 100 + 55*i + 20 )
      {        
        fill(253,171,159);
        textSize(32);
        textAlign(CENTER);
        text(values[i]+" accidents in "+division[i], width/2 - 100, 260);
      } else 
        {
          fill(red,0,0);
          textSize(32);
          textAlign(CENTER);
          text(sumValues+" total accidents", width/2 - 100, 680);
        }
      
      arc(vis2Left+(vis2Width/2), vis2Top + (vis2Height/2), diameter, diameter, lastAngle, lastAngle+radians(angles[i]));
      lastAngle += radians(angles[i]);
      //println(division[i]+": "+angles[i]);
      
      //Legend
      //rectMode(CORNER);
      rect(vis2Right+50, vis2Top - 100 + 55*i, 20, 20);
      fill(255);
      textAlign(LEFT);
      textSize(24);
      text(division[i], vis2Right+100, vis2Top - 83 + 55*i);
      //ellipse(vis2Right+30, vis2Top + 20 + 50*i,5,5);
    }
    textSize(24);
    textAlign(CENTER);
    text("Accidents by Division", vis2Left + vis2Width/2, vis2Top - 180);
  }
}
