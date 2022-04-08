void mouseDragged() {
 if (mode == OPTIONS) {
   optionDragged();
  }
}  
//there that fixed it ugh
void mouseReleased() {
  if (mode == INTRO) {
  introClicks();
  } else if (mode == GAME) {
   gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == OPTIONS) {
    optionClicks();
  }
  if (score > highscore) {
    highscore = score;
  }
  //this is where things might start falling apart
  if (lives == 0) {
    score = 0;
  }
  if (lives == 0) {
    lives = 3;
  }
  //I FIGURED IT OUT!!! NO FALLING APART! :D
    
    
}
