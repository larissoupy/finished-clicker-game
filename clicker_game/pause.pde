 void pause() {
  // background(yellow);
   
   fill(darkpurple);
   textSize(50);
   text("this is pause", width/2,300);
   
  rect(10,10,70,70);
  fill(darkpurple);
  rect(25,20,10,50);
  rect(55,20,10,50);
 }
 
 void pauseClicks(){
  if (mouseX > 10 && mouseX < 80 && mouseY > 10 && mouseY < 80) {
  mode = GAME;
  }
 }
 //im done! i think
 //im gonna clean up any unused code now :)
