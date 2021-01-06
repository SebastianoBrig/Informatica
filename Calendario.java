public class Calendario {       //dichiarazione variabili per definire una data
    private int giorno;
    private int mese;
    private int anno;

    public Calendario (int giorno, int mese, int anno) throws Exception {   //costruttore
        this.setGiorno(giorno);
        this.setMese(mese);
        this.setAnno(anno);
    }

    public void setGiorno(int giorno) throws Exception {
        if (giorno<= 0 || giorno >31){                     //controllo sulla validità del giorno inserito
            throw new Exception("giorno non valido");
        }
        this.giorno = giorno;
    }

    public void setMese(int mese) throws Exception {
        if (mese<=0 || mese>12){                           //controlli sulla validità del mese inserito basandosi sul giorno precedentemente inserito
            throw new Exception("mese non valido");
        }
        if (mese==2 && this.giorno>29){
                throw new Exception("mese non valido");
            }
        if ((mese==4 || mese==6 || mese==9 || mese==11) && this.giorno>30 ){
            throw new Exception("mese non valido");
        }
        this.mese = mese;
    }

    public void setAnno(int anno) throws Exception {
        boolean bis;
        if (anno % 400==0){                         //controllo per definire se l'anno è bisestile
            bis = true;
        }
        else if(anno % 4==0 && !(anno % 100==0)){
            bis = true;
        }
        else {
           bis = false;
        }
        if (anno<=0){                               //controlli per definire la validità dell'anno inserito basandosi sul giorno
            throw new Exception("anno non valido");
        }
        if (this.giorno == 29 && bis==false){
            throw new Exception("anno non valido");
        }
        this.anno = anno;
    }

    public int getGiorno() {
        return giorno;
    }

    public int getMese() {
        return mese;
    }

    public int getAnno() {
        return anno;
    }
    public int getGiorni() {             //funzione per trasformare una data in un numero di giorni
        int giorni = (this.anno*365)+((this.mese-1)*30)+(this.giorno);
        return giorni;
    }
    public void getData(int giorni,int n){ //funzione per trasformare un numero di giorni + n giorni in una data
         giorni = giorni + n;
        int a = giorni / 365;
        int b = ((giorni % 365)/30)+1;
        int c = ((giorni % 365) % 30);
        this.anno=a;
        this.mese=b;
        this.giorno=c;
        System.out.println("data 1 + "+n+" giorni : "+this.giorno+"/"+this.mese+"/"+this.anno);
    }

}
