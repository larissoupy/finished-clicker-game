void game() {
  background(midpink);
 
  if (dist(mouseX,mouseY,x,y) < d/2) {
    stroke(white);
  } else {
  stroke(darkpurple);
  }
  
  fill(rainbow);
  strokeWeight(5);
  circle(x,y,d);
  
  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 50);
  text("Lives: " +lives, width/2, 100);
  text("HIGHSCORE:" +highscore, width/2, 150);
  
  if (dist(mouseX, mouseY, 40, 40) <50) {
 stroke(white);
  } else {
 stroke(darkpurple);
  }
  fill(lightpurple);
  rect(10,10,70,70);
  fill(darkpurple);
  rect(25,20,10,50);
  rect(55,20,10,50);
  x = x + vx;
  y = y + vy;
  
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height-d/2) {
    vy = vy * -1;
  }
}

void gameClicks(){
  if (dist(mouseX,mouseY,x,y) < d/2) {
   score = score + 1;
   vx = vx * 1.1;
   vy = vy * 1.1;
   coin.rewind();
   coin.play();
  } else if (dist(mouseX, mouseY, 40, 40) <50) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives == 0) mode = GAMEOVER;
  }
}
