
public class Player extends Character
{
  int nlives;
  int xear1;
  int years;
  int xear2; 
  int body;
  int xhead;
  float yhead;
  int xsnout1;
  int ysnout;
  int xsnout2;
  int xsnout3;
  int ylegs;
  int xleg1;
  int xleg2;
  int yeyes;
  int xeye1;
  int xeye2;
  int ypupils;
  int speed;
  int pigx = mouseX;
  int pigy = mouseY;
  boolean intersect = false;
  //final int LIVES = 100;

  public Player (float x, float y, float xspeed, 
  float yspeed, int nlives)
  {
    super (x, y, xspeed, yspeed);
    this.nlives = nlives;
    xear1 = 140;
    years = 85;
    xear2 = 200;
    body = 170;
    xhead = 170;
    yhead = 112.5;
    xsnout1 = 170;
    ysnout = 122;
    xsnout2 = 165;
    xsnout3 = 175;
    ylegs = 210;
    xleg1 = 140;
    xleg2 = 200;
    yeyes = 105;
    xeye1 = 180;
    xeye2 = 160;
    ypupils = 110;
    speed = 1;
  }
  
  public void setLives(int nlives)
  {
    this.nlives = nlives;
  }
  
  public int getLives()
  {
    return nlives;
  }

  public void display()
  {
    stroke(0);
    fill(255, 200, 200);
    ellipseMode(CENTER);
    rectMode(CENTER);
    ellipse(mouseX-30, mouseY-25, 20, 20);//ears
    ellipse(mouseX+30, mouseY-25, 20, 20);
    ellipse(mouseX, mouseY+60, 100, 100);//body
    ellipse(mouseX, mouseY+2.5, 75, 75);
    ellipse(mouseX, mouseY+12, 30, 20);//snout
    ellipse(mouseX-5, mouseY+12, 5, 5);
    ellipse(mouseX+5, mouseY+12, 5, 5);
    ellipse(mouseX-30, mouseY+100, 20, 20);//legs
    ellipse(mouseX+30, mouseY+100, 20, 20);
    fill(255);
    ellipse(mouseX+10, mouseY-5, 20, 20);//eyes
    ellipse(mouseX-10, mouseY-5, 20, 20);
    fill(0);
    ellipse(mouseX+10, mouseY, 10, 10);//pupils
    ellipse(mouseX-10, mouseY, 10, 10);
  }

  void move() 
  {
    if (mouseX < 28)
      mouseX = 28;
    else
      mouseX  = mouseX;
    if (mouseX > 1340)
      mouseX = 1340;
    else 
      mouseX = mouseX;
    if (mouseY > 726)
      mouseY = 726;
    else
      mouseY = mouseY;
    if (mouseY < 25)
      mouseY = 25;
    else
      mouseY = mouseY;
  }

  //detect collision 
  void kill()
  {   
    nlives--;
    //pig.play();
  }
  
  boolean intersects(Enemy farm)
  {
    if (dist(mouseX, mouseY, farm.getX(), farm.getY()) < 50)
    {
      intersect = true;
      return intersect;
    }
    else 
    {
      intersect = false;
      return intersect;
    }
  }
}

