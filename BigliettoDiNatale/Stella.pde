class Stella {
  private float h;
  private float w;
  private float x;
  private float y;
  public static final color COLORE_STELLA = #FFFF00;
  Stella(float x, float y, float w, float h){
    this.h = h;
    this.w = w;
    this.x = x;
    this.y = y;
  }
  public void show(){ //funzione per disegnare una stella
    fill(COLORE_STELLA);
    triangle(x-w/2,y+(3*h/4),x-(1*w/4),y,x,y+(3*h/4));
    triangle(x-w/2,y+1*h/4,x-(1*w/4),y+h,x,y+(1*h/4));
    triangle(x-w,y+(3*h/4),x-w,y+(1*h/4),x-(0.43*w),y+(h/2));
  }
  public void move(){ //funzione per disegnare una stella
    if ((x-w)<width){
      setCordX(getCordX() + width/500);
    }
  }
  
 public void setCordX(float x){this.x = x;}
public float getCordX(){return x;}

public void setCordY(float y){this.y = y;}
public float getCordY(){return y;}
}
