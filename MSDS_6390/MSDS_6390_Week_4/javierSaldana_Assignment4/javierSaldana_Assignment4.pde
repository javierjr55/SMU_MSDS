float bubbleCountCurrent = 0;
int bubbleCount = 99999;
float[] x = new float[bubbleCount];
float[] y = new float[bubbleCount];
int sideCount = 50;
float[] radius = new float[bubbleCount];
float[] speedX = new float[bubbleCount];
float[] speedY = new float[bubbleCount];
float[] gravity = new float[bubbleCount];
float[] damping = new float[bubbleCount];
float[] friction = new float[bubbleCount];

static final String normStatus = "Normal dissolved oxygen levels ";
static final String sublethalStatus = "Sub-lethal dissolved oxygen levels";
static final String hypoxiaStatus = "Deadly dissolved oxygen levels";
static final String deadZoneStatus = "Minimal to none dissolved oxygen levels";

static final float normO2 = 0.5;
static final float sublethalO2 = 0.1;
static final float hypoxiaO2 = 0.05;
static final float deadZoneO2 = 0;

float currentO2lvl = normO2;
String currentStatus = normStatus;
String explaination = "Our technological advances in agriculture and global warming are taking the breath away from marine life.\nOver 400 dead zones have been discovered across the world and human activity is the major contributing factor in the development of these deadly spots.\n\nMost marine life is able to survive in areas where the dissolved oxygen level excees 5 mg/l.\nAt 5 mg/l, 10% of marine life has already died from stress. By 3 - 2 mg/l, over 50% of marine life is dead.\n At 1 - 0 mg/l, virtually all marine life has died in the dead zone.";

void setup() {
  size(1920, 1080);
  for( int i=0; i< bubbleCount; i += 1) {
    x[i] = random(100,width-100);
    y[i] = height-1;
    speedX[i] = random(-.25,.25);
    speedY[i] = random(-1,-3);
    radius[i] = random(1, 3);
    gravity[i] = -0.09;
    damping[i] = 10;
    friction[i] = .77;
  }
}

void draw() {
  background(1,20,181);
  
  drawSlider();
  
  strokeWeight(1);
  stroke(0);  
  
  if (sliderValue == 0)
  {
    currentO2lvl = deadZoneO2;
    currentStatus = deadZoneStatus;
  }
  else if(sliderValue <= 3)
  {
    currentO2lvl = hypoxiaO2;
    currentStatus = hypoxiaStatus;
  }
  else if(sliderValue <= 5)
  {
    currentO2lvl = sublethalO2;
    currentStatus = sublethalStatus;
  }
  else
  {
    currentO2lvl = normO2;
    currentStatus = normStatus;
  }

  for( int i=0; i< bubbleCountCurrent; i += 1) {
  bubbles(x[i], y[i], radius[i], sideCount, 2, color(103, 173, 219));
  x[i] += speedX[i];
  speedY[i] += gravity[i];
  y[i] += speedY[i];
  
  textSize(48);
  text(currentStatus, width/2, height / 4);
  
  textSize(24);
  text(explaination, width/2, height / 2.5);
  
  checkCollisions(i);
  }
  if(bubbleCountCurrent < bubbleCount - currentO2lvl){
   bubbleCountCurrent += currentO2lvl; 
  }
}

void checkCollisions(int i) {
 if (x[i] > width - radius[i]) {
   x[i] = width - radius[i];
   speedX[i] = speedX[i] * -1;
 }
 
 if (x[i] < radius[i]){
 x[i] = radius[i];
 speedX[i] = speedX[i] * -1;
 }
}

void mouseDragged()
{
  moveSlider(mouseX, mouseY);
}

void mouseMoved()
{
 hoverSlider(mouseX, mouseY); 
}

// O2 threshold rates obtained from:
// https://www.pnas.org/content/105/40/15452

// Basis for code adapted from Async material - particle example
