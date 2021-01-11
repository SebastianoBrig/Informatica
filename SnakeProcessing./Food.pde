public class Food{                       //variabili neccessarie per definire lo snake
  private int k = 0;
  private float cordX;
  private float cordY;
  private static final int DIM_DEFAULT = 10;
  private color colore;
  private int dim;
  
  public Food(){                        //costruttore           
    dim = DIM_DEFAULT;
    cordX = width / 2;
    cordY = height / 2;
    colore = color(255,0,0);
  }
  
  public void spawn(){                   //funzione per far apparire in un punto qualsiasi del campo da gioco il cibo
    if (k==0){                           //se la variabile di controllo k è a 0
    cordX = int(random(580));            //impostare la cordinata x del cibo a un numero qualsiasi tra 0 e 580
    cordY = int(random(580));            //impostare la cordinata y del cibo a un numero qualsiasi tra 0 e 580
    k=1;                                    
    }
    fill(colore);                       //colorare il cibo
    rect(cordX,cordY,15,15);            //far apparire sul campo di gioco il cibo 
  }
public void setCordX(float x){          //funzioni varie per settare e gettare le variabili del cibo
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
public void setK(int x){
k = x;
}
  
}
