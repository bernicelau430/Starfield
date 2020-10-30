Particle[] parts;
OddballParticle[] odds;
void setup(){
	size(500, 500);
  background(0);
  parts = new Particle[3000];
  odds = new OddballParticle[25];
  for (int i = 0; i < parts.length; i++) {
    parts[i] = new Particle();
  }
  for (int i = 0; i < odds.length; i++) {
    parts[i] = new OddballParticle();
  }
} 
void draw(){
  background(0, 0, 0);
	for(int i = 0; i < parts.length; i++) {
    parts[i].move();
    parts[i].show();
  }
}
class Particle{
	 double x, y, speed;
   int angle;
   int myColor;
   Particle(){
      x = 250;
      y = 250;
      angle = (int)(Math.random()*2*Math.PI);
      speed = Math.random()*10;
      myColor = color((int)(Math.random()*256), (int)(Math.random()*256), 255, 90);
   }
   void move(){
     x = Math.cos(angle) * speed + x;
     y = Math.sin(angle) * speed + y;
   }
   void show(){
     noStroke();
     fill(myColor);
     ellipse((float)x, (float)y, 10, 10);
   }
}

class OddballParticle extends Particle{
	void move(){
    x = x + (int)(Math.random()*7)-3;
    y = y + (int)(Math.random()*7)-3;
  }
  void show(){
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), 50);
    ellipse((float)x, (float)y, 50, 50);
  }
}
