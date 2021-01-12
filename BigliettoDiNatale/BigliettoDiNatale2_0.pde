Albero[] alberi;
Stella s;
public static final int N_ALBERI = 6;
public void setup(){
  size(1000,500);
  alberi = new Albero[N_ALBERI];
  for(int a=0; a<N_ALBERI; a++){
    alberi[a] = new Albero(random(0,width), height, width/8, 2*height/3);
  }
  s  = new Stella(1*width/4,1*height/20,14*width/100,1*height/8);
  background(251,221,160);
}

public void draw(){
  background(251,221,160);
  for (int b=0; b<N_ALBERI; b++){
    alberi[b].show();
  }
  s.show();
  s.move();
}
