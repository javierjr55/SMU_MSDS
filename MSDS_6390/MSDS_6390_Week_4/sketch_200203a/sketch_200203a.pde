float birthRate = 0.4;
float particleCountCurrent = 0;
int particleCount = 300;
float[] x = new float[particleCount];
float[] y = new float[particleCount];
//int[] sideCount = new int[particleCount];
int sideCount = 50;
float[] radius = new float[particleCount];
float[] speedX = new float[particleCount];
float[] speedY = new float[particleCount];
float[] gravity = new float[particleCount];
float[] damping = new float[particleCount];
//float damping = 9.5;
float[] friction = new float[particleCount];

void setup() {
  size(1920, 1080);
  for( int i=0; i< particleCount; i += 1) {
    x[i] = random(100,width-100);
    y[i] = height-1;
    //sideCount[i] = int(random(3, 10));
    speedX[i] = random(-.25,.25);
    speedY[i] = random(-1,-3);
    radius[i] = random(1, 3);
    gravity[i] = -0.009;
    damping[i] = 10;
    friction[i] = .77;
  }
}

void draw() {
  background(1,20,181);
  fill(0, 50);
  noStroke();
  rect(-1, -1, width+1, height+1);
  for( int i=0; i< particleCountCurrent; i += 1) {
  polygon(x[i], y[i], radius[i], sideCount, 2, color(103, 173, 219));
  x[i] += speedX[i];
  speedY[i] += gravity[i];
  y[i] += speedY[i];
  
  checkCollisions(i);
  }
  if(particleCountCurrent < particleCount - birthRate){
   particleCountCurrent += birthRate; 
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
 
 //if (y[i] > height - radius[i]){
 //  y[i] = height - radius[i];
 //  speedY[i] = speedY[i] * -1;
 //  speedY[i] *= damping[i];
 //  speedX[i] *= friction[i];
 //}
 
 //if (y[i] < radius[i]) {
 //y[i] = radius[i];
 //speedY[i] = speedY[i] * -1;
 //}
}
