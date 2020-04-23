//PImage img;
//void setup() {
// size(1000,1000);
// img = loadImage("sniper.jpg");
// img.resize(0,1000);
// image(img, 0, 0);
 
//  loadPixels();
//  //access pixels in sketch window
//  for (int i=0; i< pixels.length; i++){
//     float r = red(pixels[i]);
//     float g = green(pixels[i]);
//     float b = blue(pixels[i]);
//     b *= 1.5;
//     g *= 1.5;
//     r *= 1.5;
//     pixels[i] = color(r, g, b);
//  }
//  updatePixels();
//  //to modify the image window only, then add 'img.' to the pixels
//  // i.e. img.loadPixels
//}

//// 5.6 MULTIDIMENSIONAL ARRAYS
//int cols = 20;
//int rows = 20;
//int[][] vals2D = new int[cols][rows];
//void setup() {
//   size(400,400);
//   background(0, 200, 200);
//   int colSpan = width/cols;
//   int rowSpan = height/rows;
//   for (int i=0; i<vals2D.length; i++) {
//      for (int j=0; j<vals2D[i].length; j++){
//        rect(colSpan*i, rowSpan*j, colSpan, rowSpan);
//      }
//   }
//}

// 5.7 IMAGING FX
// simple head flip
void setup() {
   background(255);
   size(800,400);
   PImage img = loadImage("sniper.jpg");
   img.resize(0,400);
   int len = img.pixels.length - 1;
   image(img, 0, 0);
   
   PImage img2 = createImage(400, 400, RGB);
   for (int i=len; i>0; i--) {
     img2.pixels[len-i]= img.pixels[i];
   }
   image(img2, 400, 0);
}
