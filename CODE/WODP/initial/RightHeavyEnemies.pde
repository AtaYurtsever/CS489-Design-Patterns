class RightHeavyBouncingEnemy extends HeavyBouncingEnemy{
   public RightHeavyBouncingEnemy(float x, float y){
      super(x,y); 
   }
   
   void update(){
      this.ySpeed += 0.3;
      super.update();
   }
}

class RightHeavyRandomEnemy extends HeavyRandomEnemy{
   public RightHeavyRandomEnemy(float x, float y){
      super(x,y); 
   }
   
   void update(){
      this.ySpeed += 0.3;
      super.update();
   }
}
