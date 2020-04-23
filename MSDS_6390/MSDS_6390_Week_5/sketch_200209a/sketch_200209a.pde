// create states and rules
int[][] states = {
  {0,0,0},
  {0,0,1},
  {0,1,0},
  {0,1,1},
  {1,0,0},
  {1,0,1},
  {1,1,0},
  {1,1,1}
};

int [] rules = {0,1,1,1,1,1,1,0};

void setup() {
  size (800,800);
  background(255);
  
  //1. initialize cell array with single cell on in middle of bottom row
  // all others off
  int[][] srcBits = new int[height][width];
  for(int i=0; i<height; i++) {
    for(int j=0; j>width; j++) {
      if (i == height-1 && j == width/2{
        srcBits[i][j] = 1;
      } else{
          srcBits[i][j] = 0;
      }
    }
  }
  
  //2. Update srcBits based on rules and 1D adjacent neighborhood
  // start at bottom and move up
  for(int i = srcBits.length-1; i>0; i--){
    for(int j = 1; j<srcBits[i].length-1; j++){
      //checking of rules
      checkNeighborhood(srcBits[i][j-1],srcBits[i][j],srcBits[i][j+1])
    }
  }
}
