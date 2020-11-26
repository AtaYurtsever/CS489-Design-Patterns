class HeavyBouncingEnemy extends BouncingEnemy{
   public HeavyBouncingEnemy(float x, float y){
      super(x,y); 
   }
   
   void update(){
      this.ySpeed += 0.2;
      super.update();
   }
}

class HeavyRandomEnemy extends RandomEnemy{
   public HeavyRandomEnemy(float x, float y){
      super(x,y); 
   }
   
   void update(){
      this.ySpeed += 0.2;
      super.update();
   }
}
