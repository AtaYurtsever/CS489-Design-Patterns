Character c;
ArrayList<Enemy> enemies;
void setup(){
  size(800,800);
  frameRate(60);
  c = new Character(200,200);
  enemies = new ArrayList<Enemy>();
  enemies.add(
        new Enemy(400,400,new RightMovementDecorator(
          new HeavyMovementDecorator(
            new BouncingMovementStrategy()
          )
        ))
        );
}

void draw(){
  background(0);
  c.update(); 
  for(Enemy e:enemies){
     e.update();
  }
  c.render();
  for(Enemy e:enemies)
    e.render();
  if(c.isHit(enemies))
    stop();
  
}

void keyPressed(){
  //System.out.println(key);
  if(key == 'a')
    c.moveLeft();
  if(key == 'd')
    c.moveRight();
  if(key == 'w')
    c.moveUp();
  if(key == 's')
    c.moveDown();
  
  
}
