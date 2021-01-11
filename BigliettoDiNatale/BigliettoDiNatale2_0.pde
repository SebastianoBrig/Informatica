Albero a1, a2;
Stella s;

public void setup(){
  size(1000,500);
  a1 = new Albero(width/4, height, width/8, 2*height/3);
  a2 = new Albero(3*width/4, height, width/8, 2*height/3);
  s  = new Stella(1*width/4,1*height/20,14*width/100,1*height/8);
  background(251,221,160);
}

public void draw(){
  background(251,221,160);
  a1.show();
  a2.show();
  s.show();
  s.move();
}
