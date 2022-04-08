void intro() {
  theme.play();
  background(lightpink);
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    stroke(white);
  } else {
    stroke(darkpurple);
  }
  
  fill(lightpurple);
  strokeWeight(5);
  rect(300,500,200,100);
  
   if (mouseX > 10 && mouseX < 210 && mouseY > 10 && mouseY < 80) {
     stroke(white);
   } else {
     stroke(darkpurple);
   }

  rect(10,10,200,70);
  fill(yellow);
  textSize(40);
  text("options",110, 40);
  
  fill(yellow);
  textSize(20);
  text("click me!", width/2, 550);
//clicky
  
  fill(lightpurple);
  textSize(60);
  text("CLICKER GAME", width/2, 200);
}
//ref this for button clicky

void introClicks(){
if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
  mode = GAME;
  }

  if (mouseX > 10 && mouseX < 210 && mouseY > 10 && mouseY < 80) {
    mode = OPTIONS;
  }
}
