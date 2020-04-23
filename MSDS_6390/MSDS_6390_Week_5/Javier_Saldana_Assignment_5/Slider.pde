int sliderWidth = width + 500;
int sliderValue = 130;
//String sliderValText = sliderValue + " votes";
int selectorDiameter = 30;
int selectorWeight = 30;
//float gopPercent = sliderValue/255;
//float demPercent = (255-sliderValue)/255;

//int gopVotes = 8306185 * int(gopPercent);
//int demVotes = 8306185 - gopVotes;

//String gopText = gopVotes + "(" + gopPercent*100 + "%)";
//String demText = demVotes + "(" + demPercent*100 + "%)";

PVector sliderPosition = new PVector(675, 950);
PVector selectorPosition = new PVector(sliderPosition.x, sliderPosition.y);

void moveSlider(int x, int y)
{
  float distance = dist(x, y, selectorPosition.x, selectorPosition.y);
  if(distance <= selectorDiameter/2)
  {
    selectorPosition.x = x;
    if(selectorPosition.x < sliderPosition.x)
    {
      selectorPosition.x = sliderPosition.x;
    }
    else if(selectorPosition.x > sliderPosition.x + sliderWidth)
    {
      selectorPosition.x = sliderPosition.x + sliderWidth;
    }
    
    sliderValue = (int)map(selectorPosition.x, sliderPosition.x, sliderPosition.x + sliderWidth, 255, 0);
  }
}

void hoverSlider(int x, int y)
{
  float distance = dist(x, y, selectorPosition.x, selectorPosition.y);
  selectorWeight = distance <= selectorDiameter/2 ? 3 : 1;
}

void drawSlider()
{
  stroke(0);
  fill(255);
  strokeWeight(10);
  line(sliderPosition.x, sliderPosition.y, sliderPosition.x + sliderWidth, sliderPosition.y);
  
  strokeWeight(selectorWeight);
  ellipse(selectorPosition.x, selectorPosition.y, selectorDiameter, selectorDiameter);
  
  fill(255);
  textSize(60);
  textAlign(CENTER, CENTER);
  text(255-sliderValue-2, sliderPosition.x + sliderWidth + 500, sliderPosition.y);
  text(sliderValue, sliderPosition.x - 500, sliderPosition.y);

}

// Code adapted from:
// https://raw.githubusercontent.com/juanibarral/smu_vis_of_info/master/workspace/Sketch_004_conditionals/Slider.pde
