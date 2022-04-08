void options() {
  background(lightpink);
  
   stroke(darkpurple);
   strokeWeight(5);
   fill(rainbow);
   circle(x,y-200,d);
   
   
     if (mouseX > 10 && mouseX < 210 && mouseY > 10 && mouseY < 80) {
     stroke(white);
   } else {
     stroke(darkpurple);
   }
   fill(lightpurple);
  rect(10,10,200,70);
  fill(yellow);
  textSize(40);
  text("return",110, 40);
  
  fill(lightpurple);
  textSize(50);
  fill(darkpink);
  text("your circle colour and size", width/2, 700);
  
   //slider!!!!
   stroke(darkpurple);
   line(100,650,700,650);
   fill(rainbow);
   if(dist(mouseX,mouseY,sliderX,650) < 25) {
     stroke(white);
   } else {
     stroke(darkpurple);
   }
   circle(sliderX, 650, 50);
   //oh my god it works yay
   
   //circle 1
   if (dist(200,500,mouseX,mouseY) < 50) {
    stroke(white);
  }else {
     stroke(darkpurple);
   }
   fill(lightpurple);
   circle(200,500,100);
   
    if (dist(400,500,mouseX,mouseY) < 50) {
    stroke(white);
  }else {
     stroke(darkpurple);
   }
   fill(yellow);
   circle(400,500,100);
   
    if (dist(600,500,mouseX,mouseY) < 50) {
    stroke(white);
  }else {
     stroke(darkpurple);
   }
   fill(midpurple);
   circle(600,500,100);
   
}

void optionClicks() {
   if (mouseX > 10 && mouseX < 210 && mouseY > 10 && mouseY < 80) {
   mode = INTRO ;
  }
  if (mouseX > 100 && mouseX <700 && mouseY > 625 && mouseY < 675) {
    sliderX = mouseX;
   // this kinda works?
      d = sliderX;
      //slider can be used in game mode, idk how to fix :/
      //slider has been fixed! needed it own dragged void
  }
  //i am testing slider and sizer and its not working
  //THIS! DO THIS! I THINK SOMETHING WAS WRONG WITH BRACKET
  
  if (dist(200,500,mouseX,mouseY) < 50) {
    rainbow = lightpurple;
  }
  
   if (dist(400,500,mouseX,mouseY) < 50) {
    rainbow = yellow;
  }
   if (dist(600,500,mouseX,mouseY) < 50) {
    rainbow = midpurple;
  }
 }
 void optionDragged() {
     if (mouseX > 100 && mouseX <700 && mouseY > 625 && mouseY < 675) {
    sliderX = mouseX;
    //this kinda works?
   d = sliderX;
     }
  
}
