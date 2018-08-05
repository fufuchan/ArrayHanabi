ArrayList <Particle> particles;

void setup() {
  
  size (600, 600);
  background (0, 150);
  particles = new ArrayList <Particle>();
}


void draw() {
  
  particles.add(new Particle());
  
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.update();
    p.display();
    p.keyPressed();
    
    if (p.isDead()) {
      particles.remove(i);
    }
  }
  
}
