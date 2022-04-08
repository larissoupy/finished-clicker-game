void gameover() {
  background(darkpurple);
  
  theme.pause(); 
  //how do i restart the gameover sound without it glitching out
  gameover.play();
  strokeWeight(5);
  stroke(lightpink);
  
  fill(yellow);
  textSize(80);
  text("GAME OVER!!!", width/2, 400);
  textSize(20);
  textSize(60);
  text("HIGHSCORE:" +highscore, width/2, 180);
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    stroke(white);
  } else {
    stroke(lightpink);
  }
     fill(lightpurple);
     rect(300,500,200,100);
  
  textSize(36);
  fill(yellow);
  text("try again?", width/2,545);
}

void gameoverClicks(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
  mode = INTRO;
  x = width/2;
  y = height/2;
  vx = random(-5,5);
  vy = -5;
  //hehe nvm this works, i was like crying in mouse lmao
  }
}
