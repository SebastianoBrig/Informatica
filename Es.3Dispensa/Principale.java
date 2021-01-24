public class Principale {
    private Scuola scuola;
    private CLInput cli;

    public Principale(){
        this.cli = new CLInput();
        this.leggi();
    }

    public void leggi(){
        int n;
        do {
            n = cli.readInt("inserisci il numero di classi: ");
            try {
                this.scuola = new Scuola(n);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }while (scuola==null);
    }

    public void svolgi(){
        System.out.println(scuola.toString());
    }

    public static void main(String []args ){
        Principale p=new Principale();
        p.svolgi();
    }
}
