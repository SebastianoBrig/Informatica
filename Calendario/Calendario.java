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
    public int getGiorni(int mese) {//funzione per ottenere il numero di giorni di un mese
        int g=0;
        switch(mese){
            case 1:
                g = 31;
                break;
            case 2:
                g = 28;
                break;
            case 3:
                g = 31;
                break;
            case 4:
                g = 30;
                break;
            case 5:
                g = 31;
                break;
            case 6:
                g = 30;
                break;
            case 7:
                g = 31;
                break;
            case 8:
                g = 31;
                break;
            case 9:
                g = 30;
                break;
            case 10:
                g = 31;
                break;
            case 11:
                g = 30;
                break;
            case 12:
                g = 31;
                break;
        }
        return g;

    }
    public void sommaGiorni(int giorni){ //funzione per sommare n giorni ad una data
        while (giorni > 0){
            int ng = getGiorni(this.mese);
            int a = ng - this.giorno;
            if (giorni>a){
                giorni = giorni - a;
                this.giorno=0;
                if (mese<12) {
                    this.mese++;
                }
                else {
                    this.anno++;
                    this.mese=1;
                }
            }
            else {
                this.giorno=giorni;
                giorni=0;
            }
        }
        System.out.println("data 1 + n giorni = "+this.giorno+"/"+this.mese+"/"+this.anno);
    }

}
