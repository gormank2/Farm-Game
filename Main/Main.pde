/**Kylie Gorman
 IMM-120 Final Project*/

import ddf.minim.*; //use for sound
Minim minim;
AudioPlayer pig;
//end of sound variables
PImage bg;
boolean gameover = false;
boolean intersect = false;
Player user;
Enemy farmers[];
int nlives = 5;

void setup() {
  size(1344, 756);
  bg = loadImage("farm.png");
  smooth();
  user = new Player(250, 250, 0, 0, nlives);
  farmers = new Enemy[20];
  
  //sound
  minim = new Minim(this);
  pig = minim.loadFile(dataPath("pig.mp3"), 512);

  //create farmers
  for (int index = 0; index < farmers.length; index++)
  {  
    farmers [index] = new Enemy(200, 200, 4, 6);
    farmers [index].setX(random(25, 475));
    farmers [index].setY(farmers [index].getX());
    farmers [index].setXspeed(random(-2, 4));
    farmers [index].setYspeed(random(5, 6));
  }
  user.setX(250);
  user.setY(250);
  user.setXspeed(0);
  user.setYspeed(0);
}

void draw() {
  background(bg);

  user.display();
  user.move();
  user.getX();
  user.getY();
  user.getXspeed();
  user.getYspeed();

  for (int index = 0; index < farmers.length; index++)
  {
    farmers [index].display();
    farmers [index].move();

    if (user.intersects(farmers [index]))
    {
      user.kill();
      farmers[index] = new Enemy(random(25, 475), farmers[index].getX(), 
      4, 6);
    }
  }


  fill(0);     
  text ( "Lives: " + user.getLives(), 10, 10);


  //game over
  if (user.getLives() == 0)
    gameover = true;
  if (gameover) 
  {
    background(0);
    fill(255);
    textSize(30);
    text( "Game Over", (width/2)-50, height/2);
    int score = frameCount;
    text("Score: " +score, (width/2)-50, (height/2)+50);
    pig.play(); //play oink at end of game
    noLoop();
  }
}

