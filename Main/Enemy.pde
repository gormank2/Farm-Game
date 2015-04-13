
public class Enemy extends Character
{
  float bodyx;
  float bodyy;
  float ex1foot;
  float ex2foot;
  float eyfeet;
  float ex1ear;
  float ex2ear;
  float eyears;
  float exhead;
  float eyhead;
  float ex1hand;
  float ex2hand;
  float eyhands;
  float exmouth;
  float eymouth;
  float ex1hat;
  float ey1hat;
  float ex2hat;
  float ey2hat;
  float ex1eye;
  float ex2eye;
  float eyeyes;
  float pupils;

  private float test = 15;


  public Enemy (float x, float y, float xspeed, float yspeed)
  {
    super (x, y, xspeed, yspeed);
    bodyx = random(25, 475);
    bodyy = x;
    ex1foot = x-10;
    ex2foot = x+10;
    eyfeet = y+40;
    ex1ear = x+25;
    ex2ear = x-25;
    eyears = y-62.5;
    exhead = x;
    eyhead = y-62.5;
    ex1hand = x-37.5;
    ex2hand = x+37.5;
    eyhands = y;
    exmouth = x-10;
    eymouth = y-50;
    ex1hat = x-30;
    ey1hat = y-79;
    ex2hat = x-20;
    ey2hat = y-110;
    ex1eye = x-10;
    ex2eye = x+10;
    eyeyes = y-62.5;
    pupils = y-60;
  }

  public void display()
  {
    stroke(0);
    fill(0, 0, 255);
    ellipse(x-10, y+40, 15, 15);//feet
    ellipse(x+10, y+40, 15, 15);
    fill(255, 200, 200);
    ellipse(x+25, y-62.5, 5, 5);//ears
    ellipse(x-25, y-62.5, 5, 5);
    ellipse(x, y-62.5, 50, 50);//head
    ellipse(x-37.5, y, 15, 15);//hands
    ellipse(x+37.5, y, 15, 15);
    fill(100, 0, 0);
    ellipse(x, y, 75, 75);//body
    fill(255);
    ellipse(x-10, y-62.5, 15, 15);//eyes
    ellipse(x+10, y-62.5, 15, 15);
    fill(0);
    ellipse(x-10, y-60, 7, 7);//pupils
    ellipse(x+10, y-60, 7, 7);
  }

  public void move()
  {
    x += xspeed;
    y += yspeed;
    ex1foot = ex1foot + xspeed;
    ex2foot = ex2foot + xspeed;
    eyfeet = eyfeet + yspeed;
    ex1ear = ex1ear + xspeed;
    ex2ear = ex2ear + xspeed;
    eyears = eyears + yspeed;
    exhead = exhead + xspeed;
    eyhead = eyhead + yspeed;
    ex1hand = ex1hand + xspeed;
    ex2hand = ex2hand + xspeed;
    eyhands = eyhands + yspeed;
    exmouth = exmouth + xspeed;
    eymouth = eymouth + yspeed;
    bodyx = bodyx + xspeed;
    bodyy = bodyy +yspeed;
    ex1hat = ex1hat + xspeed;
    ey1hat = ey1hat + yspeed;
    ex2hat = ex2hat + xspeed;
    ey2hat = ey2hat + yspeed;
    ex1eye = ex1eye + xspeed;
    ex2eye = ex2eye + xspeed;
    eyeyes = eyeyes + yspeed;
    pupils = pupils + yspeed;

    if (y<75 || y>height-25)
    { 
      yspeed = yspeed*-1;
    }
    if (x<25 || x>width-25)
    {
      xspeed = xspeed*-1;
    }
  }
}
 
