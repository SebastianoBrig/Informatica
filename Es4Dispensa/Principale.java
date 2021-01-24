public class Principale {
    private Valore v;
    private CLInput cli;

    public Principale(){
       this.cli = new CLInput();
       this.leggi();
    }

    public void leggi(){
        int val;
        do {
            val = cli.readInt("inserisci il valore: ");
            try {
                this.v = new Valore(val);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }while(this.v==null);
    }

    public void svolgi(){
        this.v.messaggio();
    }

    public static void main(String []args ){
        Principale p=new Principale();
        p.svolgi();
    }
}
