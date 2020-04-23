// Javier Saldaña
// MSDS 6390

void setup(){
 // x , y
 // Create dark background
 size(1600,1389); 
 background(31,31,31);
 
 // Create canvas background
 fill(205,206,203);
 // (x, y, width, height)
 rect(30,30,1540,1329);
 
 // Create purple/maroon shape
 // which become color canvas
 fill(85,16,35);
 noStroke();
 rect(55,55,1490,1279);

 // Create purple rectangles in background
 fill(86,35,102);
 noStroke();
 rect(55,188,1490,198);
 rect(264,523,270,811);
 rect(1005,523,341,811);
 rect(530,927,500,407);
 
 // Create orange rectangle
 // with transparency
 fill(251,96,66,180);
 noStroke();
 rect(122,322,1287,815);
 
 // Create windows
 fill(86,35,102);
 noStroke();
 rect(324,657,137,270);
 rect(1070,657,137,270);
}
