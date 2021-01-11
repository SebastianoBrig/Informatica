Food f;
Snake s;
SnakeDinamico sd;
int e=0;
boolean d = false;
int m=0;
int score=0;
int highscore=0;
public void settings(){
  size (600,600);
}

public void setup(){
  background(0,0,0);
  f = new Food();
  s = new Snake();
  sd = new SnakeDinamico();
}

public void checkeat(){                            //funzione per controllare se il cibo viene mangiato
  float lx=(sd.getCordX()+10)-(f.getCordX()+7.5);  //distanza tra le coordinate x dello snake e quelle del cibo
  float ly=(sd.getCordY()+10)-(f.getCordY()+7.5);  //distanza tra le coordinate y dello snake e quelle del cibo
  if ((lx < 7 && lx > -7) && (ly < 7 && ly > -7)) {  //se le cordinate dello snake sono molto vicine a quelle del cibo 
    f.setK(0);    //settare la variabile di controllo k a 0
    score++;      //aggiornare lo score
  }
}
  public void checkdead(){                        //funzione per controllare se lo snake tocca i bordi
   if ((sd.getCordX()+20)>600 || sd.getCordX()<0 || (sd.getCordY()+20)>600 || sd.getCordY() < 0){  //se le coordinate dello snake sono al di fuori del campo da gioco
    d=true;      //impostare la variabile di controllo d a true
   }
  }
  
  public void restart(){                         //funzione per riavviare il gioco 
    score=0;                                     //settare lo score a 0
    sd.setCordX(width/2);                        //posizionare lo snake al centro del campo di gioco
    sd.setCordY(height/2);
  }
public void draw(){
  background(0,0,0);                             //aggiornare continuamente il background in modo da cancellare le precedenti posizioni dello snake e del cibo
  textSize(26);                                  //scritte varie da visualizzare 
  fill(0,255,0);
  text("Score:",130,50);
  text(score,215,50);
  text("High score:",300,50);
  if (score>highscore){                        //aggiornare l'high score
    highscore=score;
  }
  text(highscore,450,50);
  f.spawn();                                  //funzione per far apparire il cibo
  sd.show();                                  //funzione per far apparire lo snake
  checkeat();                                 //funzioni di controllo
  checkdead();
  if (d==true){                               //se la variabile di controllo d è vera, e quindi lo snake è uscito dal campo di gioco
    delay(1500);
    restart();                                //riavviare il gioco
    d=false;
  }
}
