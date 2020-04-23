void header(){
  //title
  //blue line
  rectMode(CENTER);
  fill(0,0,255);
  rect(width/2,height*.045,width/1.75, 20);
  
  //text
  textSize(74);
  textAlign(CENTER);
  fill(255);
  text("DALLAS POLICE DEPARTMENT",width/2, height*.07);
  textSize(48);
  text("V e h i c u l a r   A c c i d e n t s   i n   2 0 2 0",width/2, height*.12);
  
  fill(255,255,255,50);
  rectMode(CORNER);
  rect(40, 34, 250, 50);
  //small text tips
  textSize(16);
  textAlign(LEFT);
  fill(255);
  text("Hover over boxes and bars \nto interact with visuals",50, 50);
}
