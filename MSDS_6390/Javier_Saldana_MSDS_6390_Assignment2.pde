PImage img;
  
void settings(){
  img = loadImage("self.jpg");
  int imgWidth = img.width;
  int imgHeight = img.height;
  size(imgWidth, imgHeight);
}

void setup(){
  background(255,255,255);

}

void draw(){
  //neck
  fill(250,199,170);
  noStroke();
  beginShape();
  curveVertex(width*.7,height*.553);
  curveVertex(width*.7,height*.553);
  curveVertex(width*.685,height*.633);
  curveVertex(width*.687,height*.705);
  curveVertex(width*.699,height*.753);
  curveVertex(width*.698,height*.829);
  curveVertex(width*.675,height*.983);
  curveVertex(width*.377,height*.985);
  curveVertex(width*.302,height*.775);
  curveVertex(width*.320,height*.555);
  curveVertex(width*.694,height*.553);
  curveVertex(width*.694,height*.553);
  endShape();

  
  //torso shape
  fill(21,100,187);
  stroke(0,0,0);
  strokeWeight(2);
  beginShape();
  curveVertex(width*.052,height*.726);
  curveVertex(width*.052,height*.726);
  curveVertex(width*.098,height*.702);
  curveVertex(width*.166,height*.684);
  curveVertex(width*.217,height*.665);
  curveVertex(width*.247,height*.658);
  curveVertex(width*.304,height*.551);
  curveVertex(width*.312,height*.543);
  curveVertex(width*.319,height*.568);
  curveVertex(width*.344,height*.647);
  curveVertex(width*.392,height*.748);
  curveVertex(width*.396,height*.764);
  curveVertex(width*.426,height*.792);
  curveVertex(width*.443,height*.827);
  curveVertex(width*.503,height*.869);
  curveVertex(width*.565,height*.926);
  curveVertex(width*.612,height*.975);
  curveVertex(width*.646,height*.864);
  curveVertex(width*.679,height*.816);
  curveVertex(width*.687,height*.778);
  curveVertex(width*.687,height*.746);
  curveVertex(width*.687,height*.717);
  curveVertex(width*.682,height*.678);
  curveVertex(width*.684,height*.645);
  curveVertex(width*.687,height*.627);
  curveVertex(width*.694,height*.637);
  curveVertex(width*.717,height*.675);
  curveVertex(width*.761,height*.699);
  curveVertex(width*.798,711.0);
  curveVertex(width*.876,height*.748);
  curveVertex(width*.956,height*.784);
  curveVertex(width*1,height*.815);
  curveVertex(width*1,height*.818);
  curveVertex(width*1,height*1);
  curveVertex(width*0,height*1);
  curveVertex(width*0,height*.748);
  curveVertex(width*0,height*.748);
  endShape();
  
// left collar
  stroke(0,0,0);
  strokeWeight(2);
  beginShape();
  curveVertex(width*.650,height*.994);
  curveVertex(width*.666,height*.969);
  curveVertex(width*.691,height*.944);
  curveVertex(width*.707,height*.922);
  curveVertex(width*.741,height*.887);
  curveVertex(width*.788,height*.857);
  curveVertex(width*.791,height*.844);
  curveVertex(width*.750,height*.803);
  curveVertex(width*.790,height*.816);
  curveVertex(width*.835,height*.811);
  curveVertex(width*.858,height*.796);
  curveVertex(width*.858,height*.790);
  curveVertex(width*.832,height*.760);
  curveVertex(width*.782,height*.713);
  curveVertex(width*.762,height*.701);
  curveVertex(width*.738,height*.688);
  curveVertex(width*.723,height*.682);
  curveVertex(width*.691,height*.629);
  curveVertex(width*.685,height*.664);
  curveVertex(width*.687,height*.690);
  curveVertex(width*.687,height*.729);
  curveVertex(width*.688,height*.756);
  curveVertex(width*.688,height*.778);
  curveVertex(width*.688,height*.788);
  curveVertex(width*.673,height*.821);
  curveVertex(width*.664,height*.848);
  curveVertex(width*.646,height*.863);
  curveVertex(width*.637,height*.883);
  curveVertex(width*.632,height*.909);
  curveVertex(width*.626,height*.941);
  curveVertex(width*.621,height*.980);
  curveVertex(width*.623,height*.994);
  endShape();

// right collar
  beginShape();
  curveVertex(width*.613,height*.983);
  curveVertex(width*.578,height*.937);
  curveVertex(width*.546,height*.907);
  curveVertex(width*.520,height*.880);
  curveVertex(width*.491,height*.856);
  curveVertex(width*.461,height*.839);
  curveVertex(width*.441,height*.833);
  curveVertex(width*.435,height*.799);
  curveVertex(width*.415,height*.785);
  curveVertex(width*.399,height*.771);
  curveVertex(width*.389,height*.738);
  curveVertex(width*.366,height*.695);
  curveVertex(width*.340,height*.645);
  curveVertex(width*.329,height*.596);
  curveVertex(width*.315,height*.556);
  curveVertex(width*.315,height*.541);
  curveVertex(width*.309,height*.544);
  curveVertex(width*.297,height*.562);
  curveVertex(width*.283,height*.593);
  curveVertex(width*.265,height*.626);
  curveVertex(width*.251,height*.647);
  curveVertex(width*.241,height*.700);
  curveVertex(width*.265,height*.764);
  curveVertex(width*.269,height*.801);
  curveVertex(width*.287,height*.823);
  curveVertex(width*.332,height*.789);
  curveVertex(width*.355,height*.775);
  curveVertex(width*.378,height*.755);
  curveVertex(width*.406,height*.812);
  curveVertex(width*.436,height*.831);
  curveVertex(width*.482,height*.869);
  curveVertex(width*.526,height*.891);
  curveVertex(width*.547,height*.913);
  endShape();
  
  //head shape
  fill(250,199,170);
  stroke(0,0,0);
  strokeWeight(2);
  beginShape();
  curveVertex(width*.313,height*.542);
  curveVertex(width*.313,height*.542);
  curveVertex(width*.304,height*.492);
  curveVertex(width*.304,height*.432);
  curveVertex(width*.298,height*.359);
  curveVertex(width*.287,height*.343);
  curveVertex(width*.288,height*.3);
  curveVertex(width*.291,height*.266);
  curveVertex(width*.304,height*.200);
  curveVertex(width*.332,height*.141);
  curveVertex(width*.386,height*.099);
  curveVertex(width*.463,height*.064);
  curveVertex(width*.538,height*.057);
  curveVertex(width*.586,height*.064);
  curveVertex(width*.654,height*.108);
  curveVertex(width*.704,height*.190);
  curveVertex(width*.723,height*.269);
  curveVertex(width*.732,height*.329);
  curveVertex(width*.739,height*.414);
  curveVertex(width*.745,height*.474);
  curveVertex(width*.746,height*.512);
  curveVertex(width*.734,height*.537);
  curveVertex(width*.723,height*.557);
  curveVertex(width*.699,height*.597);
  curveVertex(width*.675,height*.623);
  //curveVertex(width*.654,height*.637);
  //curveVertex(width*.633,height*.655);
  curveVertex(width*.609,height*.669);
  curveVertex(width*.572,height*.684);
  curveVertex(width*.540,height*.684);
  curveVertex(width*.505,height*.679);
  //curveVertex(width*.474,height*.668);
  //curveVertex(width*.451,height*.653);
  curveVertex(width*.433,height*.652);
  curveVertex(width*.406,height*.636);
  curveVertex(width*.384,height*.621);
  curveVertex(width*.363,height*.604);
  curveVertex(width*.344,height*.586);
  curveVertex(width*.323,height*.561);
  curveVertex(width*.323,height*.561);
  endShape();
  
  //left ear shape
  fill(250,199,170);
  stroke(0,0,0);
  strokeWeight(2);
  beginShape();
  //curveVertex(726.0,336.0);
  curveVertex(width*.726,height*.336);
  curveVertex(width*.740,height*.334);
  curveVertex(width*.746,height*.345);
  curveVertex(width*.748,height*.385);
  curveVertex(width*.747,height*.427);
  curveVertex(width*.761,height*.457);
  curveVertex(width*.768,height*.473);
  curveVertex(width*.751,height*.479);
  curveVertex(width*.745,height*.466);
  curveVertex(width*.724,height*.338);
  //curveVertex(724.0,338.0);
  endShape();

 // right ear
  fill(250,199,170);
  stroke(0,0,0);
  strokeWeight(2);
  beginShape();
  curveVertex(width*.300,height*.537);
  curveVertex(width*.301,height*.489);
  curveVertex(width*.281,height*.489);
  curveVertex(width*.271,height*.486);
  curveVertex(width*.275,height*.462);
  curveVertex(width*.274,height*.457);
  curveVertex(width*.274,height*.443);
  curveVertex(width*.273,height*.419);
  curveVertex(width*.273,height*.400);
  curveVertex(width*.273,height*.369);
  curveVertex(width*.271,height*.353);
  curveVertex(width*.279,height*.350);
  curveVertex(width*.292,height*.348);
  curveVertex(width*.305,height*.389);
  curveVertex(width*.302,height*.479);
  endShape();

// hair fade
  fill(0,0,0,127);
  noStroke();
  beginShape();
  curveVertex(width*.310,height*.398);
  curveVertex(width*.317,height*.372);
  curveVertex(width*.322,height*.347);
  curveVertex(width*.324,height*.306);
  curveVertex(width*.333,height*.287);
  curveVertex(width*.345,height*.268);
  curveVertex(width*.361,height*.255);
  curveVertex(width*.375,height*.226);
  curveVertex(width*.378,height*.203);
  curveVertex(width*.377,height*.186);
  curveVertex(width*.380,height*.172);
  curveVertex(width*.412,height*.149);
  curveVertex(width*.488,height*.138);
  curveVertex(width*.571,height*.138);
  curveVertex(width*.640,height*.141);
  curveVertex(width*.664,height*.186);
  curveVertex(width*.690,height*.205);
  curveVertex(width*.697,height*.250);
  curveVertex(width*.713,height*.271);
  curveVertex(width*.730,height*.325);
  curveVertex(width*.728,height*.300);
  //curveVertex(width*.722,height*.292);
  curveVertex(width*.722,height*.255);
  curveVertex(width*.717,height*.230);
  curveVertex(width*.705,height*.190);
  curveVertex(width*.685,height*.154);
  curveVertex(width*.666,height*.124);
  curveVertex(width*.634,height*.092);
  curveVertex(width*.585,height*.065);
  curveVertex(width*.550,height*.058);
  curveVertex(width*.485,height*.058);
  curveVertex(width*.440,height*.074);
  curveVertex(width*.404,height*.087);
  curveVertex(width*.352,height*.123);
  curveVertex(width*.329,height*.147);
  curveVertex(width*.304,height*.196);
  curveVertex(width*.291,height*.270);
  curveVertex(width*.285,height*.343);
  curveVertex(width*.291,height*.338);
  endShape();
  
  // hair top
  fill(0,0,0);
  noStroke();
  beginShape();
  curveVertex(width*.378,height*.203);
  curveVertex(width*.377,height*.186);
  curveVertex(width*.380,height*.172);
  curveVertex(width*.412,height*.149);
  curveVertex(width*.488,height*.138);
  curveVertex(width*.571,height*.138);
  curveVertex(width*.640,height*.141);
  curveVertex(width*.664,height*.186);
  curveVertex(width*.705,height*.190);
  curveVertex(width*.685,height*.154);
  curveVertex(width*.666,height*.124);
  curveVertex(width*.634,height*.092);
  curveVertex(width*.585,height*.065);
  curveVertex(width*.550,height*.058);
  curveVertex(width*.485,height*.058);
  curveVertex(width*.440,height*.074);
  curveVertex(width*.404,height*.087);
  curveVertex(width*.352,height*.123);
  curveVertex(width*.329,height*.147);
  curveVertex(width*.304,height*.196);
  curveVertex(width*.291,height*.270);
  endShape();

  // left eyebrow
  noStroke();
  fill(0,0,0,125);
  beginShape();
  curveVertex(width*.366,height*.307);
  curveVertex(width*.366,height*.307);
  curveVertex(width*.398,height*.296);
  curveVertex(width*.455,height*.288);
  curveVertex(width*.495,height*.294);
  curveVertex(width*.512,height*.288);
  curveVertex(width*.512,height*.262);
  curveVertex(width*.466,height*.257);
  curveVertex(width*.418,height*.253);
  curveVertex(width*.378,height*.273);
  curveVertex(width*.357,height*.293);
  curveVertex(width*.363,height*.309);
  curveVertex(width*.363,height*.309);
  endShape();
  
  // right eyebrow
  beginShape();
  curveVertex(width*.578,height*.283);
  curveVertex(width*.578,height*.283);
  curveVertex(width*.628,height*.277);
  curveVertex(width*.674,height*.284);
  curveVertex(width*.695,height*.296);
  curveVertex(width*.708,height*.292);
  curveVertex(width*.701,height*.270);
  curveVertex(width*.676,height*.254);
  curveVertex(width*.635,height*.243);
  curveVertex(width*.598,height*.251);
  curveVertex(width*.582,height*.254);
  curveVertex(width*.575,height*.271);
  curveVertex(width*.575,height*.271);
  endShape();

// left eye
  fill(255,255,255);
  stroke(0,0,0);
  strokeWeight(1);
beginShape();
curveVertex(width*.583,height*.342);
curveVertex(width*.583,height*.342);
curveVertex(width*.583,height*.342);
curveVertex(width*.599,height*.330);
curveVertex(width*.617,height*.322);
curveVertex(width*.639,height*.317);
curveVertex(width*.663,height*.326);
curveVertex(width*.673,height*.330);
curveVertex(width*.675,height*.334);
curveVertex(width*.667,height*.334);
curveVertex(width*.655,height*.339);
curveVertex(width*.630,height*.344);
curveVertex(width*.613,height*.344);
curveVertex(width*.592,height*.345);
curveVertex(width*.592,height*.345);
curveVertex(width*.592,height*.345);
endShape();

// right eye
beginShape();
curveVertex(width*.485,height*.341);
curveVertex(width*.485,height*.341);
curveVertex(width*.473,height*.349);
curveVertex(width*.460,height*.349);
curveVertex(width*.430,height*.346);
curveVertex(width*.415,height*.346);
curveVertex(width*.401,height*.343);
curveVertex(width*.406,height*.335);
curveVertex(width*.425,height*.329);
curveVertex(width*.451,height*.329);
curveVertex(width*.474,height*.336);
curveVertex(width*.489,height*.345);
curveVertex(width*.489,height*.345);
endShape();

// pupils
  fill(0,0,0);
noStroke();
beginShape();
curveVertex(width*.428,height*.346);
curveVertex(width*.428,height*.346);
curveVertex(width*.450,height*.348);
curveVertex(width*.463,height*.349);
curveVertex(width*.462,height*.330);
curveVertex(width*.447,height*.329);
curveVertex(width*.429,height*.331);
curveVertex(width*.429,height*.331);
endShape();

beginShape();
curveVertex(width*.605,height*.345);
curveVertex(width*.611,height*.345);
curveVertex(width*.627,height*.346);
curveVertex(width*.636,height*.346);
curveVertex(width*.638,height*.347);
curveVertex(width*.639,height*.318);
curveVertex(width*.619,height*.320);
curveVertex(width*.608,height*.325);
curveVertex(width*.603,height*.333);
curveVertex(width*.603,height*.343);
endShape();

// nose
  fill(250,199,170);
  stroke(0,0,0);
  strokeWeight(2);
beginShape();
curveVertex(width*.499,height*.404);
curveVertex(width*.484,height*.413);
curveVertex(width*.483,height*.437);
curveVertex(width*.491,height*.450);
curveVertex(width*.500,height*.450);
curveVertex(width*.504,height*.439);
curveVertex(width*.514,height*.438);
curveVertex(width*.523,height*.440);
curveVertex(width*.529,height*.449);
curveVertex(width*.535,height*.452);
curveVertex(width*.546,height*.457);
curveVertex(width*.553,height*.454);
curveVertex(width*.566,height*.443);
curveVertex(width*.575,height*.437);
curveVertex(width*.600,height*.443);
curveVertex(width*.590,height*.451);
curveVertex(width*.592,height*.459);
curveVertex(width*.603,height*.449);
curveVertex(width*.609,height*.432);
curveVertex(width*.607,height*.410);
curveVertex(width*.597,height*.395);
curveVertex(width*.589,height*.382);
curveVertex(width*.575,height*.362);
curveVertex(width*.569,height*.347);
curveVertex(width*.562,height*.333);
curveVertex(width*.558,height*.322);
curveVertex(width*.548,height*.321);

endShape();

// beard
 fill(0,0,0,127);
  noStroke();
 // strokeWeight(2);
beginShape();
//curveVertex(489.0,461.0);
//curveVertex(489.0,461.0);
curveVertex(width*.425,height*.461);
curveVertex(width*.429,height*.473);
curveVertex(width*.424,height*.513);
curveVertex(width*.432,height*.539);
curveVertex(width*.433,height*.590);
curveVertex(width*.448,height*.639);
curveVertex(width*.480,height*.668);
curveVertex(width*.517,height*.681);
curveVertex(width*.551,height*.687);
curveVertex(width*.561,height*.685);
curveVertex(width*.584,height*.682);
curveVertex(width*.621,height*.662);
curveVertex(width*.640,height*.645);
curveVertex(width*.653,height*.606);
curveVertex(width*.652,height*.558);
curveVertex(width*.657,height*.524);
curveVertex(width*.658,height*.497);
curveVertex(width*.654,height*.479);
curveVertex(width*.617,height*.476);
curveVertex(width*.581,height*.468);
curveVertex(width*.519,height*.465);
curveVertex(width*.478,height*.462);
curveVertex(width*.452,height*.462);
//curveVertex(452.0,462.0);
endShape();

  //fill(255,255,255,20);
  //stroke(0,0,0);
  //strokeWeight(1);
  //ellipse(551,683,10,10);

// beard inside
  fill(250,199,170);
noStroke();
beginShape();
curveVertex(width*.453,height*.538);
curveVertex(width*.454,height*.558);
curveVertex(width*.454,height*.594);
curveVertex(width*.460,height*.610);
curveVertex(width*.482,height*.612);
curveVertex(width*.497,height*.605);
curveVertex(width*.507,height*.587);
curveVertex(width*.507,height*.569);
curveVertex(width*.516,height*.567);
curveVertex(width*.555,height*.567);
curveVertex(width*.571,height*.567);
curveVertex(width*.584,height*.571);
curveVertex(width*.587,height*.592);
curveVertex(width*.587,height*.607);
curveVertex(width*.593,height*.617);
curveVertex(width*.618,height*.617);
curveVertex(width*.633,height*.601);
curveVertex(width*.631,height*.573);
curveVertex(width*.630,height*.544);
curveVertex(width*.630,height*.520);
curveVertex(width*.630,height*.502);
curveVertex(width*.618,height*.490);
curveVertex(width*.597,height*.491);
curveVertex(width*.579,height*.491);
curveVertex(width*.557,height*.491);
curveVertex(width*.531,height*.494);
curveVertex(width*.502,height*.490);
curveVertex(width*.492,height*.492);
curveVertex(width*.467,height*.504);
curveVertex(width*.453,height*.505);
curveVertex(width*.449,height*.528);
endShape();

// smile
fill(0,0,0);
  stroke(0,0,0);
  strokeWeight(1);
beginShape();
curveVertex(width*.455,height*.521);
curveVertex(width*.455,height*.521);
curveVertex(width*.476,height*.539);
curveVertex(width*.504,height*.552);
curveVertex(width*.527,height*.552);
curveVertex(width*.540,height*.552);
curveVertex(width*.567,height*.552);
curveVertex(width*.593,height*.552);
curveVertex(width*.609,height*.539);
curveVertex(width*.622,height*.528);
curveVertex(width*.631,height*.512);
curveVertex(width*.629,height*.497);
curveVertex(width*.599,height*.502);
curveVertex(width*.576,height*.502);
curveVertex(width*.561,height*.500);
curveVertex(width*.537,height*.499);
curveVertex(width*.524,height*.499);
curveVertex(width*.496,height*.499);
curveVertex(width*.478,height*.505);
curveVertex(width*.461,height*.507);
curveVertex(width*.459,height*.512);
curveVertex(width*.459,height*.522);
curveVertex(width*.459,height*.522);
endShape();


// arcs or lines
noFill();
stroke(0,0,0,190);
 strokeWeight(2);
beginShape();
curveVertex(width*.391,height*.339);
curveVertex(width*.405,height*.322);
curveVertex(width*.437,height*.308);
curveVertex(width*.468,height*.311);
curveVertex(width*.491,height*.321);
curveVertex(width*.506,height*.333);
endShape();

beginShape();
curveVertex(width*.580,height*.331);
curveVertex(width*.599,height*.316);
curveVertex(width*.618,height*.308);
curveVertex(width*.647,height*.305);
curveVertex(width*.666,height*.312);
curveVertex(width*.690,height*.323);
endShape();

beginShape();
curveVertex(width*.503,height*.446);
curveVertex(width*.511,height*.445);
curveVertex(width*.525,height*.445);
curveVertex(width*.521,height*.438);
curveVertex(width*.507,height*.438);
endShape();

beginShape();
curveVertex(width*.572,height*.446);
curveVertex(width*.585,height*.446);
curveVertex(width*.585,height*.439);
curveVertex(width*.581,height*.436);
curveVertex(width*.576,height*.436);
curveVertex(width*.574,height*.442);
endShape();

beginShape();
curveVertex(width*.566,height*.738);
curveVertex(width*.566,height*.771);
curveVertex(width*.566,height*.807);
curveVertex(width*.581,height*.850);
curveVertex(width*.601,height*.877);
endShape();

beginShape();
curveVertex(width*.503,height*.725);
curveVertex(width*.522,height*.753);
curveVertex(width*.552,height*.765);
curveVertex(width*.584,height*.738);
curveVertex(width*.597,height*.720);
endShape();

beginShape();
curveVertex(width*.319,height*.519);
curveVertex(width*.346,height*.578);
curveVertex(width*.370,height*.607);
curveVertex(width*.406,height*.631);
curveVertex(width*.442,height*.648);
endShape();

beginShape();
curveVertex(width*.699,height*.497);
curveVertex(width*.701,height*.525);
curveVertex(width*.697,height*.556);
curveVertex(width*.694,height*.572);
endShape();

beginShape();
curveVertex(width*.456,height*.444);
curveVertex(width*.433,height*.465);
curveVertex(width*.430,height*.491);
curveVertex(width*.430,height*.521);
curveVertex(width*.436,height*.535);
endShape();

beginShape();
curveVertex(width*.646,height*.467);
curveVertex(width*.661,height*.494);
curveVertex(width*.665,height*.518);
curveVertex(width*.657,height*.538);
endShape();

beginShape();
curveVertex(width*.399,height*.370);
curveVertex(width*.423,height*.376);
curveVertex(width*.469,height*.376);
curveVertex(width*.496,height*.370);
endShape();

beginShape();
curveVertex(width*.597,height*.359);
curveVertex(width*.623,height*.362);
curveVertex(width*.662,height*.365);
curveVertex(width*.682,height*.367);
endShape();
beginShape();
endShape();


  
//  stroke(0,0,0);
//  strokeWeight(1);
//  fill(255,255,255);


  
}
