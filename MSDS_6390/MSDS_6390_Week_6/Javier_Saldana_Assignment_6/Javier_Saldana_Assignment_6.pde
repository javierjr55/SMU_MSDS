PImage aoe2, dark, feudal, castle, imperial;

String api = "https://age-of-empires-2-api.herokuapp.com/api/v1/units";
JSONObject allUnits;
JSONArray aoeUnits;
JSONObject units;

String unitsName, age;
float arraySize;

int darkTrans, feudalTrans, castleTrans, imperialTrans;
float unitCurveX;

void settings()
{
  size(1920, 1080);
  allUnits = loadJSONObject(api);
}

void draw(){
  aoeUnits = allUnits.getJSONArray("units");
  arraySize = aoeUnits.size();
  
  //background
  aoe2 = loadImage("aoe2.jpg");
  aoe2.resize(1920,0);
  
  imageMode(CORNER);
  image(aoe2, 0, 0);
  fill(0,0,0,200);
  rect(0,0,width, height);
  
      //age badges
  dark = loadImage("dark.png");
  //dark.resize(0,0);
  feudal = loadImage("feudal.png");
  castle = loadImage("castle.png");
  imperial = loadImage("imperial.png"); 
  
  //age transparency
  if (mouseX >= width/5-dark.width*.75 && mouseX <= width/5+dark.width*.75 && 
      mouseY >= height*.85-dark.height*.75 && mouseY <= height*.85+dark.height*.75)
  {
    darkTrans = 255;
  } else darkTrans = 75;
  
  if (mouseX >= width/5*2-feudal.width*.75 && mouseX <= width/5*2+feudal.width*.75 && 
      mouseY >= height*.85-feudal.height*.75 && mouseY <= height*.85+feudal.height*.75)
    {
      feudalTrans = 255;
    } else feudalTrans = 75;
    
  if (mouseX >= width/5*3-castle.width*.75 && mouseX <= width/5*3+castle.width*.75 && 
      mouseY >= height*.85-castle.height*.75 && mouseY <= height*.85+castle.height*.75)
    {
      castleTrans = 255;
    } else castleTrans = 75;
    
  if (mouseX >= width/5*4-imperial.width*.75 && mouseX <= width/5*4+imperial.width*.75 && 
      mouseY >= height*.85-imperial.height*.75 && mouseY <= height*.85+imperial.height*.75)
    {
      imperialTrans = 255;
    } else imperialTrans = 75;
  
  
  
  //draw circles
  float radius=850;
  float angle=PI/arraySize;
  
  for(int i = 0; i < aoeUnits.size(); i++)
  {
    units = aoeUnits.getJSONObject(i);
    age = units.getString("age");
    
    //color circles and curves based on age
    if(age.equals("Dark"))
    {
      unitCurveX = width/5;
      fill(255,165,0,darkTrans);
      stroke(255,165,0,darkTrans);
    } else if(age.equals("Feudal"))
      {
        unitCurveX = width/5*2;
        fill(255,10,10,feudalTrans);
        stroke(255,10,10,feudalTrans);
      } else if(age.equals("Castle"))
        {
          unitCurveX = width/5*3;
          fill(255,0,255,castleTrans);
          stroke(255,0,255,castleTrans);
        } else if(age.equals("Imperial"))
          {
            unitCurveX = width/5*4;
            fill(10,255,10,imperialTrans);
            stroke(10,255,10,imperialTrans);
          }
    // draw circles and curves
    ellipse((width/2)+radius*sin(angle*(i+52)),(height*.8)+radius*cos(angle*(i+52)),20,20);
    noFill();
    curve((width/2)+radius*sin(angle*(i+70)),(height*.8)+radius*cos(angle*(i+60)) ,(width/2)+radius*sin(angle*(i+52)),(height*.8)+radius*cos(angle*(i+52)),unitCurveX, height*.85, unitCurveX, height*.95);
  }
  
  //load badges for ages
  noFill();
  noStroke(); 
    
  imageMode(CENTER);
  image(dark, width/5, height*0.85);
  image(feudal, width/5*2, height*0.85);
  image(castle, width/5*3, height*0.85);
  image(imperial, width/5*4, height*0.85);
  
  textSize(48);
  textAlign(CENTER);
  fill(255,165,0);
  text("Dark Age",width/5, height*.95);
  fill(255,10,10);
  text("Feudal Age",width/5*2, height*.95);
  fill(255,0,255);
  text("Castle Age",width/5*3, height*.95);
  fill(10,255,10);
  text("Imperial Age",width/5*4, height*.95);
  
  
  textAlign(LEFT);
  textSize(36);
  fill(255);
  text("Hover an Age to reveal how many units it unlocks!", 50, 50, 400, 400);
 
}
