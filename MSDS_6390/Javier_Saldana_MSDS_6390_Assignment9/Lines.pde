class Lines extends hoursVisual
{
  //margins for visualization
  //private final float vis1Top = canvasHeight*.7;
  //private final float vis1Bottom = canvasHeight*.9;
  //private final float vis1Right = canvasWidth*.9;
  //private final float vis1Left = canvasWidth*.1;
  
  //variables
  //private int[] hours;
  //private int maxValue;
  //private PVector[] barPosition;
  private color lineColor;
  
    Lines(){
  }
  
  Lines(ArrayList<Pet> pets){
    super(pets);
    lineColor = color(0,0,255);
  }
  
  public void display(){
    fill(lineColor);
    strokeWeight(3);
        for (int i = 0; i < barPosition.length-1; i++)
    {
      line(barPosition[i].x+30, barPosition[i].y, barPosition[i+1].x+30, barPosition[i+1].y);
    }
  }
}
