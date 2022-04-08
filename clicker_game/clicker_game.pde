import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//make slider next!!
int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;
 
 
float x, y, d;
float vx, vy;
int score, lives;
// trying to figure out highscore
int highscore;
int rainbow;
Minim minim;
float sliderX;

//testing a thing
float sizer;


//colours woooooo
//spell colour like color >:(
color darkpurple = #6E44FF;
color lightpurple = #B892FF;
color lightpink = #FFC2E2;
color midpink = #FF90B3;
color darkpink = #EF7A85;
color yellow = #FFEF87;
color white = #FFFFFF;
color midpurple = #9F4DFF;

AudioPlayer theme, coin, bump, gameover;
PFont font;

void setup() {
  
  size(800, 800);
  
  mode = INTRO;
  
  
  textAlign(CENTER, CENTER);
  
  
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5,5);
  vy = -5;
  score = 0;
  lives = 3;
  highscore = 0;
  rainbow = lightpurple;
  sliderX = 100;
  
  
  
  //
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
}

void draw() {
  if (mode == INTRO) {
  intro();
  } else if (mode == GAME) {
   game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
      options();
  } else {
    println("Error: Mode = " + mode);
 }
  
  
}
