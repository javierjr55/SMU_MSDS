//Javier Saldana

PImage beto;
PImage cruz;
PImage texas;
PImage tx_flag;

void setup() {
   size(1920,1080);
   
   //load images
   beto = loadImage("Beto.jpg");
   beto.resize(0,500);
   cruz = loadImage("Cruz.jpg");
   cruz.resize(0,500);
   texas = loadImage("tx_black.png");
   tx_flag = loadImage("texas_flag.jpg");
}

void draw() {
   // flag as background
   imageMode(CORNER);
   image(tx_flag,0,0);
   
   //left image + border
   noStroke();
   rect(5,5,cruz.width+10,cruz.height+10);
   image(cruz,10,10);
   
   // right image + border
   noStroke();
   rect(width - beto.width - 15,5,beto.width+10,beto.height+10);
   image(beto,width - beto.width - 10,10);
   
   //center texas
   imageMode(CENTER);
   image(texas,width/2,height/2);
  
  //title
  fill(255);
  textSize(58);
  textAlign(CENTER);
  text("Texas U.S. Senate Election 2018", width/2, 125);
  textSize(65);
  text("What Color is Texas?", width/2, 200);
  
  // gop
  textSize(24);
  textAlign(LEFT);
  text("Ted Cruz (Republican)", 20, cruz.height+50);
  textSize(45);
  text("Final Votes:", 20, cruz.height+150);
  text("4,260,553 (50.9%)", 20, cruz.height+200);
  text("Red Value:", 20, cruz.height+350);
  text("255 X 50.9% = 130", 20, cruz.height+400);
  
  // dem
  textSize(24);
  textAlign(RIGHT);
  text("Beto O'Rourke (Democrat)", width - 20, beto.height+50);
  textSize(45);
  text("Final Votes:", width - 20, beto.height+150);
  text("4,045,632 (48.3%)", width - 20, beto.height+200);
  text("Blue Value:", width - 20, beto.height+350);
  text("255 X 48.3% = 123", width - 20, beto.height+400);
  
  //slider
  drawSlider();
  
  //rgb values
  int r = sliderValue;
  int b = 255-sliderValue-2;
  int g = 2;
  
   texas.loadPixels();
   for(int i=0; i< texas.pixels.length; i++){ 
     //check for pixel color to replace w/ values
      if (texas.pixels[i] <= color(255)) {
        texas.pixels[i] = color(r, g, b);
     }
   }
   texas.updatePixels();
   image(texas,width/2,height/2);
}

void mouseDragged()
{
  moveSlider(mouseX, mouseY);
}

void mouseMoved()
{
 hoverSlider(mouseX, mouseY); 
}
