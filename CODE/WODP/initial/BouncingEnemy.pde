class BouncingEnemy implements Enemy{
  public float x,y;
  public float size;
  protected float xSpeed,ySpeed;

  
  public BouncingEnemy(float x, float y){
       this.x =x;
       this.y = y;
       size = 50;
       xSpeed = random(20)-10;
       ySpeed = random(20)-10;
    }
    
    public void render(){
       fill(0,0,255);
       rect(x,y,size,size);
    }
    
   public void update(){
     if(x < 0 || x + size > width)
       xSpeed = -xSpeed;
     if(y < 0 || y + size > height)
       ySpeed = -ySpeed;
       
     x += xSpeed;
     y += ySpeed;
   }
  
  public float getX(){return x;}
  public float getY(){return y;}
  public float getSize(){return size;}
   
}
