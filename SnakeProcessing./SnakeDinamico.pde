public class SnakeDinamico extends Snake {      //variabili varie per definire il movimento dello snake
  private int c = 0;
  private int up = 0;
  private int down = 0;
  private int right = 0;
  private int left=0;
  private float speedX;    //velocità in orizzontale
  private float speedY;    //velocità in veritcale
  private final float DEFAULT_VET = 2;
  
  public SnakeDinamico(){                  //costruttore
    super();                        
    speedX = DEFAULT_VET;
    speedY = DEFAULT_VET;
  }
  
  void keyPressed(){                      //funzione per prendere in input un tasto premuto
    if (keyCode == UP && down==0)         //se il tasto premuto è la freccina in su e lo snake non si sta muovendo in giù
    {
      up=1;                               //impostare la variabile di movimento corrispondente a 1 e le altre a 0
      down=0;
      right=0;
      left=0;
    }
    if (keyCode == DOWN && up==0)        //se il tasto premuto è la freccina in giù e lo snake non si sta muovendo in su
    {
      up=0;                              //impostare la variabile di movimento corrispondente a 1 e le altre a 0
      down=1;
      right=0;
      left=0;
    }
    if (keyCode == LEFT && right==0)    //se il tasto premuto è la freccina sinistra e lo snake non si sta muovendo a destra
    {
      up=0;                              //impostare la variabile di movimento corrispondente a 1 e le altre a 0
      down=0;
      right=0;
      left=1;
    }
    if (keyCode == RIGHT && left==0)  //se il tasto premuto è la freccina destra e lo snake non si sta muovendo a sinistra
    {
      up=0;                              //impostare la variabile di movimento corrispondente a 1 e le altre a 0
      down=0;
      right=1;
      left=0;
    }
  }  
  public void move(){                //funzione per far muovere lo snake
    if (left==1){                    //se la variante di movimento left è a 1 
      speedX = -2;                   //la velocita X viene settata a -2
      c = 1;
    }
    if (right==1){                   //se la variante di movimento right è a 1 
      speedX = 2;                    //la velocita X viene settata a 2
      c = 1;
    }
    if (down==1){                   //se la variante di movimento left è a 1 
      speedY = 2;                   //la velocita Y viene settata a 2
      c = 2;
    }
    if (up==1) {                    //se la variante di movimento left è a 1 
      speedY = -2;                  //la velocita Y viene settata a -2
      c = 2;
    }
      if (c==1){                    //se la variabile c è uguale a 1, e quindi il movimento avviene sull'asese X
      setCordX( getCordX() + speedX); //si settano le cordinate X dello snake a quelle attuali+velocità X
      }
      if (c==2){                    //se la variabile c è uguale a 1, e quindi il movimento avviene sull'asse Y
      setCordY (getCordY() + speedY); //si settano le cordinate Y dello snake a quelle attuali+velocità Y
    }
  }   
    public void show(){             //funzione che permette quando richiamata nello sketch permette allo snake di muoversi
        keyPressed();            
        move();
        super.show();              //quando questa funzione viene chiamata viene eseguita anche la funzione show della classe Snake
    }

    public void setSpeedX(float vel){  //funzioni varie per settare e gettare le variabili dello snake dinamico
        this.speedX = vel;
    }

    public void setSpeedY(float vel){
        this.speedY = vel;
    }

    public float getSpeedX(){
        return this.speedX;
    }
    public float getSpeedY(){
        return this.speedY;
    }
}
