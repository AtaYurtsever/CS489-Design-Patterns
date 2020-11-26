class RightBouncingEnemy extends BouncingEnemy{
   public RightBouncingEnemy(float x, float y){
      super(x,y); 
   }
   
   void update(){
      this.xSpeed += 0.3;
      super.update();
   }
}

class RightRandomEnemy extends RandomEnemy{
   public RightRandomEnemy(float x, float y){
      super(x,y); 
   }
   
   void update(){
      this.xSpeed += 0.3;
      super.update();
   }
}
