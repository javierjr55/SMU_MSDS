class typeVisual{
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
  private String[] type;
  private int sumValues;
  
  typeVisual(){    
  }
  
    public typeVisual(ArrayList<Pet> pets)
  {
    //pull in data
    sumValues = 0;
    values = new int[5];
    type = new String[5];
    type[0] = "BIRD";
    type[1] = "CAT";
    type[2] = "DOG";
    type[3] = "LIVESTOCK";
    type[4] = "WILDLIFE";
    
    for(int i = 0; i < values.length; i++)
    {
      int typeCounter = 0;
      for(Pet a : pets)
      {
        String tempValues = a.getType();
        if(tempValues.equals(type[i]))
        {
          typeCounter++;
        }
      }
      values[i] = typeCounter;
      sumValues += typeCounter;
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
        text(values[i]+" "+ type[i] + "Intakes", width/2 - 100, 260);
      } else 
        {
          fill(red,0,0);
          textSize(32);
          textAlign(CENTER);
          text(sumValues+" total intakes", width/2 - 100, 680);
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
      text(type[i], vis2Right+100, vis2Top - 83 + 55*i);
      //ellipse(vis2Right+30, vis2Top + 20 + 50*i,5,5);
    }
    textSize(24);
    textAlign(CENTER);
    text("Intakes by Type", vis2Left + vis2Width/2, vis2Top - 180);
  }
}
