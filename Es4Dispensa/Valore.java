public class Valore {
    private int v;

    public Valore(int v) throws Exception {
        setV(v);
    }

    public void messaggio(){
        if (v>=700){
            System.out.println("Montagna");
        }
        if (v>=300 && v<700){
            System.out.println("Collina");
        }
        if (v<300 && v>0){
            System.out.println("Pianura");
        }
    }

    public int getV() {
        return v;
    }

    public void setV(int v) throws Exception {
        if (v<=0){
            throw new Exception("input non valido");
        }
        this.v = v;
    }
}
