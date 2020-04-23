class dallasVisual
{
  //create margins for visualization
  private final float vis3Top = canvasHeight*.15;
  private final float vis3Left = canvasWidth*.6;
  private final float vis3Bottom = vis3Top+550;
  private final float vis3Right = vis3Left + 499;
  private float vis2Right = canvasWidth*.35;
  private float vis2Top = canvasHeight*.35;
  PImage dallas = loadImage("Dallas.png");
  
  //declare variables
  private PVector[] coordinates;
  private String[] divisions;
  private String[] divList;

  
  public dallasVisual(ArrayList<Accident> accidents)
  {
    int i = 0;
    coordinates = new PVector[accidents.size()];
    divisions = new String[accidents.size()];
    divList = new String[7];

    divList[0] = "Central";
    divList[1] = "North Central";
    divList[2] = "Northeast";
    divList[3] = "Northwest";
    divList[4] = "South Central";
    divList[5] = "Southeast";
    divList[6] = "Southwest";
    
    for(Accident a : accidents)
    //for(int i = 0; i < accidents.size(); i++)
    {
      //bring in divisions
      divisions[i] = a.getDivision();
      
      //map coordinates
      //topleft = 33.028175, -97.000537
      //topright = 33.028175, -96.460439
      //bottomleft = 32.625213, -97.000537
      //bottomright = 32.625213, -96.460439

      Float tempLat = a.getLat();
      Float tempLon = a.getLon();
      float pY = (float)map(tempLat, 32.625213, 33.028175, vis3Bottom, vis3Top);
      float pX = (float)map(tempLon, -97.000537, -96.460439, vis3Left, vis3Right);
      coordinates[i] = new PVector(pX, pY);
      //println("point "+ i +": "+ coordinates[i].x+", "+coordinates[i].y);

      i++;
    }
  }
  
  public void render()
  {

    
    //original image dims
    //1460 x 1324
    //resized image dims
    //550 x 499 (ratio of 2.6545)
    // map
    dallas.resize(550,0);
    image(dallas, vis3Left, vis3Top);
    int transparency;
    
    for(int i = 0; i < divList.length; i++)
    {
      float blue = map(i, 0, divList.length, 0, 255);
          if(mouseX >=  vis2Right+300 && mouseX <= vis2Right+320 && 
          mouseY >= vis2Top - 100 + 55*i && mouseY <= vis2Top - 100 + 55*i + 20 )
          {
            transparency = 255;
          } else transparency = 50;
          fill(0,0,blue, transparency);
      
      for (int j = 0; j < divisions.length; j++)
      {
        String tempDiv = divisions[j];
        if(tempDiv.equals(divList[i]))
        {
          fill(0, 0, blue, transparency);
          stroke(255);
          strokeWeight(1);
          rect(vis2Right+300, vis2Top - 100 + 55*i, 20, 20);
          noStroke();
          ellipse(coordinates[j].x, coordinates[j].y, 5, 5);
          //println(divisions[j]+" = "+divList[i]);
        } //else println("FALSE");
      }
      
      //Legend
      //rectMode(CORNER);
      //rect(vis2Right+300, vis2Top - 100 + 55*i, 20, 20);
      //fill(255);
      //textAlign(LEFT);
      //textSize(24);
      //text(divList[i], vis2Right+100, vis2Top - 83 + 55*i);
    }
        
    //map points
    //for(int i = 0; i < coordinates.length; i++)
    //{
    //  //fill(0);
    //  noStroke();
    //  ellipse(coordinates[i].x, coordinates[i].y, 5, 5);
    //}    
  }
}
