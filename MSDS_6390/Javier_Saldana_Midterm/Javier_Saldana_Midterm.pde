Loader loader;
hoursVisual visual1;
divisionVisual visual2;
dallasVisual visual3;

static int canvasWidth = 1920;
static int canvasHeight = 1080;
PImage background;

void settings()
{
  size(canvasWidth, canvasHeight);
  loader = new Loader();
  visual1 = new hoursVisual(loader.getAccidents());
  visual2 = new divisionVisual(loader.getAccidents());
  visual3 = new dallasVisual(loader.getAccidents());
}


void draw(){
  //background
  noStroke();
  background = loadImage("policeLights.jpg");
  background.resize(1920,0);
  image(background, 0, 0);
  fill(0,0,0,200);
  rectMode(CORNER);
  rect(0,0,width, height);
  
  header();
  
  visual1.render();
  visual2.render();
  visual3.render();

}
