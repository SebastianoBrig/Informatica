class Albero {
  private float h;
  private float w;
  private float x;
  private float y;
  public static final color COLORE_FOGLIE = #00FF00;
  public static final color COLORE_TRONCO = #964B00;
  Albero(float x, float y, float w, float h){
    this.h = h;
    this.w = w;
    this.x = x;
    this.y = y;
  }
  public void show(){ //funzione per disegnare un albero
    fill(COLORE_FOGLIE);
    triangle(x-w/2,y-(1*h/5), x, y-h, x+w/2,y-(1*h/5));
    fill(COLORE_TRONCO);
    rect(x-w/6,y-(1*h/5),w/3,1*h/5);
  }
}
