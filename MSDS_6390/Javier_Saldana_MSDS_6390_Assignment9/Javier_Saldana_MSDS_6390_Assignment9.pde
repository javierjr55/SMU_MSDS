/*
I was attempting to use the data points class as the super and the lines class as the subclass
The principle behind it was that I could use the code done by the hours class and use that to essentially plot the points
and connect them using the lines subclass. I was under the impression that the variables don't have to be initiated again
since they were already initiated in the super class. However, when I run the code I get the NullPointException which is 
essentially telling me the lines subclass doesn't know what to do with the barPosition[] I have asked it to use as its 
traits for the lines. I tried breaking up the data engine and lines and data points into separate classes but that wouldn't
work either since I would get the same error. Sorry for the imcomplete assignment.
*/

Loader loader;
Lines visual1;
typeVisual visual2;

static int canvasWidth = 1920;
static int canvasHeight = 1080;
PImage background;

void settings()
{
  size(canvasWidth, canvasHeight);
  loader = new Loader();
  visual1 = new Lines(loader.getPets());
  visual2 = new typeVisual(loader.getPets());
}


void draw(){
  //background
  noStroke();
  background = loadImage("dog.jpg");
  background.resize(1920,0);
  image(background, 0, 0);
  fill(0,0,0,200);
  rectMode(CORNER);
  rect(0,0,width, height);
  
  header();
  
  //draw data points
  visual1.render();
  
  //draw lines
  visual1.display();
  
  //draw pie chart
  visual2.render();

}
