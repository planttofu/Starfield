Particle [] star = new Particle[2000];
void setup() {
  size(800, 800); 
  for(int i = 0; i < 50; i++) {
    star[i] = new Oddball();
  }
  for(int n = 50; n < star.length; n++) {
    star[n] = new Particle();
  }
}

void draw() {
  //background(2);
  fill(0, 0, 0, 10);
  rect(0, 0, 800, 800);
  for(int i = 0; i < star.length; i++) {
    star[i].show();
    star[i].move();
  }
}

class Particle {
  double myX, myY, mySpeed, Angle;
  int myColor;
  
  Particle() {
    myX = mouseX;
    myY = mouseY;
    mySpeed = Math.random()* 7;
    Angle = Math.random()*5*Math.PI;
    myColor =  color((int)(Math.random()*220), (int)(Math.random()*245), 260);
  }
  void show(){ 
  fill(myColor);
  stroke(myColor);
  ellipse((float)myX, (float)myY, 10, 10);
}
  
  void move() {
    myX = myX + (double)Math.cos(Angle) * mySpeed;
    myY = myY + (double)Math.sin(Angle) * mySpeed;
    
    if(mousePressed) {
      myX = mouseX;
      myY = mouseY;
    }
}
}

class Oddball extends Particle {
  Oddball() {
    myColor = color(193, 255, 210); 
    myX = mouseX;
    myY = mouseY;
    mySpeed = Math.random()* 5;
    Angle = Math.random()*10*Math.PI;
  }
  void move() {
    myX = myX + (double)Math.cos(Angle) * mySpeed;
    myY = myY + (double)Math.sin(Angle) * mySpeed;
    
    if(mousePressed) {
      myX = mouseX;
      myY = mouseY;
    }
  }

    void show() {
      fill(myColor);
      stroke(myColor);
      rect((float)myX, (float)myY, 30, 30);
    }
}
