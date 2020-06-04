void setup(){
 size(1500, 800);
 background(255);
 
 float houseWidth = width * 0.8;
 float houseHeight = height * 0.6;
 
 float deltaWidth = width - houseWidth;
 float deltaHeight = height - houseHeight;
 
 float x0 = deltaWidth/2, y0 = deltaHeight;
 float x1 = width/2, y1 = 0;
 float x2 = deltaWidth/2 + houseWidth, y2 = deltaHeight;
 
 strokeWeight(5);
 noStroke();
 fill(100, 50, 20);
 rect(deltaWidth/2, deltaHeight, houseWidth, houseHeight);
 
 fill(40,10,40);
 triangle(x0,y0,x1,y1,x2,y2);
}