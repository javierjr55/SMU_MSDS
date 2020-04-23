int sliderWidth = width + 500;
int sliderValue = 10;
String sliderValText = sliderValue + " mg/l";
int selectorDiameter = 30;
int selectorWeight = 30;

PVector sliderPosition = new PVector(600, 50);
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
    
    sliderValue = (int)map(selectorPosition.x, sliderPosition.x, sliderPosition.x + sliderWidth, 10, 0);
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
  textSize(24);
  textAlign(CENTER, CENTER);
  text(sliderValue, sliderPosition.x + sliderWidth + 100, sliderPosition.y);
}

// Code adapted from:
// https://raw.githubusercontent.com/juanibarral/smu_vis_of_info/master/workspace/Sketch_004_conditionals/Slider.pde
