interface MovementStrategy{
   public void move(Enemy e); 
}

class RandomMovementStrategy implements MovementStrategy{
   public void move(Enemy e){
           if(e.x < 0){
        e.xSpeed = random(10);
        e.ySpeed = random(20)-10;
     }
     if(e.x+e.size > width){
        e.xSpeed = -random(10);
        e.ySpeed = random(20)-10;
     }
     if(e.y < 0){
        e.ySpeed = random(10);
        e.xSpeed = random(20)-10;
     }
     if(e.y+e.size > height){
        e.ySpeed = -random(10);
        e.xSpeed = random(20)-10;
     }
     
     e.x += e.xSpeed;
     e.y += e.ySpeed;
    
   }
}

class BouncingMovementStrategy implements MovementStrategy{
  public void move(Enemy e){
      if(e.x < 0 ||
       e.x+e.size > width)
         e.xSpeed = -e.xSpeed;
     if(e.y < 0 ||
       e.y+e.size > height)
         e.ySpeed = -e.ySpeed;
     
     e.x += e.xSpeed;
     e.y += e.ySpeed;
  } 
}
