public class Scuola {
    private Classe[] scuola;

    public Scuola(int n) throws Exception {
        if (n<=0){
            throw new Exception("input non valido");
        }
        this.scuola = new Classe[n];
        for (int i=0; i<n; i++){
            scuola[i] = new Classe();
        }
    }

    public int getTot(){
        int tot=0;
        for (int i=0; i<scuola.length; i++){
            tot = tot + scuola[i].getStudenti();
        }
        return tot;
    }

    public float getMedia(){
        int tot=0;
        for (int i=0; i<scuola.length; i++){
            tot = tot + scuola[i].getStudenti();
        }
        float media=tot/ scuola.length;
        return media;
    }

    public int getMax(){
        int max=0;
        for (int i=0; i< scuola.length; i++){
            if (scuola[i].getStudenti()>max){
                max=scuola[i].getStudenti();
            }
        }
        return max;
    }

    public int getMin(){
        int min=100;
        for (int i=0; i< scuola.length; i++){
            if (scuola[i].getStudenti()<min){
                min=scuola[i].getStudenti();
            }
        }
        return min;

    }

    public String toString(){
        return ("studenti totali: "+ getTot()+" media studenti per ogni classe: "+ getMedia()+" numero max di studenti: "+getMax()+" numero min di studenti: "+getMin());
    }
}
