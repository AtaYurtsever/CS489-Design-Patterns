//initial class
class Enemy{
  public float x,y;
  public float size;
  protected float xSpeed,ySpeed;
  private MovementStrategy strategy;
  
  public Enemy(float x, float y, MovementStrategy strategy) {
      this.x = x;
      this.y = y;
      this.size = 50;
      this.xSpeed = random(20)-10;
      this.ySpeed = random(20)-10;
      
      this.strategy = strategy;
   }
  
  public void render(){
      fill(0,0,255);
      rect(x,y,size,size);  
  };
  
  public void update(){
    strategy.move(this);
  };
  
  public float getX(){return x;}
  public float getY(){return y;}
  public float getSize(){return size;}
  
}
