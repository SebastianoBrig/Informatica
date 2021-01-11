public class Snake{                        //variabili necessarie per definire lo snake
 private float dim;
private static final float DIM_DEFAULT = 20;
private float cordX;
private float cordY;
private color colore;


public Snake(){                          
dim = DIM_DEFAULT;
cordX = width / 2;
cordY = height / 2;
colore = color(0,0,255);
}

public void show(){       //funzione per far apparire lo snake sul campo di gioco
fill(colore);             //colorarlo del colore definito nel costruttore
rect(cordX, cordY, dim, dim); //far apparire lo snake alle cordinate definite nel costruttore
}

public void setDim(float dim){    //funzioni varie per settare e gettare le variabili dello snake
  if(dim >= 0) this.dim = dim;
}

public float getDim(){return dim;}

public void setCordX(float x){
cordX = x;
}
public float getCordX(){
return cordX;
}

public void setCordY(float y){
cordY = y;
}
public float getCordY(){
return cordY;
}

public void setColore(color colore){
this.colore = color(colore);
}
public color getColore(){
return colore;
}


}
