Spaceship ship = new Spaceship();
Star[] stars = new Star[40];
ArrayList<Asteroid> asteroid = new ArrayList();
ArrayList<Bullet> bullets = new ArrayList();
public void setup() 
{
  background(0);
  size(500, 500);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i] = new Star();
  }
  for(int i = 0; i < (int)(Math.random()*9 + 4); i++)
  {
    asteroid.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }
  ship.show();
  ship.move();
  for (int i = 0; i < asteroid.size(); i++) {
    asteroid.get(i).show();
    asteroid.get(i).move();
    if (dist(ship.getCenterX(), ship.getCenterY(), asteroid.get(i).getCenterX(), asteroid.get(i).getCenterY()) < 20) 
    {
      asteroid.remove(i);
      i--; 
    }
  }
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
      for (int j = 0; j < asteroid.size(); j++) {
        if (dist(bullets.get(i).getCenterX(), bullets.get(i).getCenterY(), asteroid.get(j).getCenterX(), asteroid.get(j).getCenterY()) < 15) {
            bullets.remove(i);
            asteroid.remove(j);
            asteroid.add(j, new Asteroid());
            i--;
            break; 
        }
      }
  }
}
public void keyPressed()
{
  if(keyPressed){
    if(key == 'a' || key == 'A'){
      ship.turn(-10);
    }
    if(key == 'd' || key == 'D'){
      ship.turn(10);
    }
    if(key == 'w' || key == 'W'){
      ship.accelerate(0.5);
    }
    if(key == 's' || key == 'S'){
      ship.reverseThrust(0.5);
    }
    if(key == 'h' || key == 'H'){
      ship.hyperspace();
    }
    if(key == ' '){
      bullets.add(new Bullet(ship));
    }
  }
  ship.move();
  ship.show();
}
