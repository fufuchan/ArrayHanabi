class Particle {
  
    PVector acceleration;
    PVector velocity;
    PVector location;
    
    float sz  = PI;
    float life = 255;
    
    Particle() {
    acceleration = new PVector (0, 0.1);
    velocity = new PVector (random(-10, 10), random(-10, 5));
    location = new PVector (width / 2, height /2);
    
    }
  
  void update() {
    
    velocity.add(acceleration);
    location.add(velocity);
    
    life -= 4;  
  }
  
  boolean isDead() {
    if (life <= 0) {
      return true;
    } else {
      return false;
    }
  }
  
  void display() {
    
    stroke (random(life / 2), random(life / 2), random(220), life);
    strokeWeight (sz);
    ellipse (location.x, location.y, sz, sz);
  }
  
  
  void keyPressed() {

    if (key == 'f') {
      velocity = new PVector (random(-10, 2), random(-10, 2));
    }
    if (key == 'r') {
      velocity = new PVector (random(-2, 10), random(-2, 10));
    }
    if (key == 'e') {
      stroke (random(220), random(50), random(120), life);
      ellipse (location.x, location.y, sz, sz);
    }
    //if (key == 'y') {
    //  stroke (random(life), random(life / 2), random(30), life);
    //  ellipse (location.x + random(20), location.y + random(20), sz, sz);
    //}
  }
  
  
  
}
