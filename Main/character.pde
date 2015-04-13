//abstract class for Enemy and Player
public abstract class Character
{
  protected float x, y, xspeed, yspeed;

  //constructor
  Character(float x, float y, float xspeed, float yspeed)
  {
    this.x = x;
    this.y = y;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
  }

  //sets x position  
  void setX (float x)
  {
    this.x = x;
  }

  //gets x position 
  float getX ()
  {
    return x;
  }

  //sets y position
  void setY (float y)
  {
    this.y = y;
  }

  //gets y position
  float getY ()
  {
    return y;
  }

  //sets x speed
  void setXspeed (float xspeed)
  {
    this.xspeed = xspeed;
  }

  //gets x speed
  float getXspeed ()
  {
    return xspeed;
  }

  //sets y speed
  void setYspeed (float yspeed)
  {
    this.yspeed = yspeed;
  }

  //gets y speed
  float getYspeed ()
  {
    return yspeed;
  }

  //abstact methods
  abstract void move();

  abstract void display();
}

