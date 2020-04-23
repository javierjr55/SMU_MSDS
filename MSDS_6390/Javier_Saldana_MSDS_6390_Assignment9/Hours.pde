class hoursVisual
{
  //create margins for visualization
  public final float vis1Top = canvasHeight*.7;
  public final float vis1Bottom = canvasHeight*.9;
  public final float vis1Right = canvasWidth*.9;
  public final float vis1Left = canvasWidth*.1;
  
  //declare variables
  public int[] hours;
  private int maxValue;
  public PVector[] barPosition;
  
  hoursVisual(){
  }
  
  public hoursVisual(ArrayList<Pet> pets)
  {
    hours = new int[24];    
    barPosition = new PVector[hours.length];
    //values = new int[hours.length];
    for(int i = 0; i < hours.length; i++)
    {
      int hourCounter = 0;
      for(Pet a : pets)
      {
        int tempHour = a.getIntakeTime();
        if(tempHour == i)
        {
          hourCounter++;
        }
      }
      hours[i] = hourCounter;
    }
    int maxValue = max(hours);
    for(int i = 0; i < hours.length; i++)
    {
      int bX = (int)map(i, 0, hours.length, vis1Left, vis1Right);
      int bY = (int)map(hours[i], 0, maxValue, vis1Bottom, vis1Top);
      barPosition[i] = new PVector(bX, bY);
    }
  }
    
  public void render()
  {
    //Bar Properties
    stroke(0);
    
    //Bars
    rectMode(CORNER);
    //for (int i = 0; i < barPosition.length; i++)
    for (int i = 0; i < 23; i++)
    {
      if(mouseX >=  barPosition[i].x && mouseX <= barPosition[i].x + (vis1Right - vis1Left)/barPosition.length && 
      mouseY >= barPosition[i].y && mouseY <= vis1Bottom )
      {
        fill(137,207,255);
        textAlign(CORNER);
        textSize(24);
        text(hours[i], barPosition[i].x, barPosition[i].y);
      } else fill(0,0,200,155);
      ellipse(barPosition[i].x+30, barPosition[i].y, 15, 15);
      //rect(barPosition[i].x, barPosition[i].y, (vis1Right - vis1Left)/barPosition.length, vis1Bottom - barPosition[i].y);
      //println("hour "+i+": "+barPosition[i].y);
    }
    
    //Title
    textSize(24);
    fill(255);
    textAlign(CENTER);
    text("Intakes by Hour", canvasWidth/2, vis1Top - 15);
    
    //Axis Properties
    stroke(255);
    strokeWeight(2);
    textSize(18);
    fill(255);
    textAlign(CENTER);
    
    //X Axis
    line(vis1Left, vis1Bottom, vis1Right, vis1Bottom);
    for (int i = 0; i < barPosition.length; i++)
    {
      text(i+":00", barPosition[i].x + ((vis1Right - vis1Left)/barPosition.length)/2, vis1Bottom+25);
    }
    text("Time (Hours)",canvasWidth/2, vis1Bottom + 55);
    
    //Y Axis
    line(vis1Left, vis1Bottom, vis1Left, vis1Top);
    pushMatrix();
      translate(vis1Left-50, canvasHeight*.80);
      rotate(radians(-90));
      text("Num. of Intakes",0,0);
    popMatrix();
    text(max(hours), vis1Left-20, vis1Top+10);
    text(max(hours)/2, vis1Left-20, vis1Top+((vis1Bottom-vis1Top)/2)+10);
  }
  
}
