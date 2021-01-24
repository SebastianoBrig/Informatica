public class Classe {
    private int studenti;

    public Classe() {
       this.studenti= (int)(Math.random()*((30-15)+1))+15;
    }

    public void setStudenti(int studenti) {
        this.studenti = studenti;
    }

    public int getStudenti() {
        return studenti;
    }
}
