class HeavyMovementDecorator implements MovementStrategy{
   MovementStrategy strategy;
   public HeavyMovementDecorator(MovementStrategy strategy){
      this.strategy = strategy; 
   }
   
   void move(Enemy e){
      e.ySpeed += 0.2;
      strategy.move(e); 
   }
}

class RightMovementDecorator implements MovementStrategy{
   MovementStrategy strategy;
   public RightMovementDecorator(MovementStrategy strategy){
      this.strategy = strategy; 
   }
   
   void move(Enemy e){
      e.xSpeed += 0.3;
      strategy.move(e); 
   }
}
