//initial class
class Character{
 private float x,y;
 private float xSpeed,ySpeed;
 private float speed;
 private float size;
 public Character(float x, float y){
   this.x = x;
   this.y = y;
   speed = 6;
   size = 50;
   this.xSpeed = 0;
   this.ySpeed = 0;
 }
  
 public void render(){
  fill(200,50,50);
  noStroke();
  rect(x,y,size,size); 
 }
 
 private void checkCollisionWithSides(){
   if(x<=-xSpeed){
     x = 0;
     xSpeed = 0;
   }
   if(x+xSpeed >= width-size){
     x = width - size;
     xSpeed = 0;
   }
   if(y<=-ySpeed){
     y = 0;
     ySpeed = 0;
   }
   if(y+ySpeed >= width-size){
     y = width - size;
     ySpeed = 0;
   }
   
 }
 
 public void update(){
  checkCollisionWithSides();
  if(xSpeed != 0 || ySpeed != 0){
    float sp = sqrt(xSpeed*xSpeed+ySpeed*ySpeed);
    xSpeed = speed * xSpeed/sp;
    ySpeed = speed * ySpeed/sp;
  }
  
  this.x += this.xSpeed;
  this.y += this.ySpeed;
  //this.xSpeed = 0;
  //this.ySpeed = 0;
 }
 
 public void moveUp(){
  this.ySpeed += -speed;
 }
 
 public void moveDown(){
  this.ySpeed += speed; 
 }
 
 public void moveLeft(){
  this.xSpeed += -speed;
 }
 
 public void moveRight(){
  this.xSpeed += speed; 
 }
 
 public boolean isHit(ArrayList<Enemy> enemies){
   for(Enemy e:enemies){
    if( (e.getX() >= x         && e.getX() <= x+size       ||
        e.getX()+e.getSize() >= x  && e.getX()+e.getSize() <x+size  )&&
        (e.getY() >= y         && e.getY() <= y+size       ||
        e.getY()+e.getSize() >= y  && e.getY()+e.getSize() <= y+size)){
          println("hit");
         return true; 
        }
   }
   return false;
 }
}
