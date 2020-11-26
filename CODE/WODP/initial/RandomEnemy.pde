class RandomEnemy implements Enemy{
  public float x,y;
  public float size;
  protected float xSpeed,ySpeed;

  
  public RandomEnemy(float x, float y){
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
     if(x < 0){
       xSpeed = random(10);
       ySpeed = random(20)-10;
     }
     if(x+size > width){
       xSpeed = -random(10);
       ySpeed = random(20)-10;
     }
     if(y < 0){
       ySpeed = random(10);
       xSpeed = random(20)-10; 
     }
     if(y+size > height){
       ySpeed = -random(10);
       xSpeed = random(20)-10;
     }
     
     x += xSpeed;
     y += ySpeed;
   }
  
  public float getX(){return x;}
  public float getY(){return y;}
  public float getSize(){return size;}
   
}
