public class Principale {
    private CLInput cli;
    private Calendario c1;
    private Calendario c2;
    private int n;

    public Principale(){
        this.cli=new CLInput();
        this.leggi1();
        this.leggi2();

    }
    public void leggi1(){     //input per la data 1
        int g, m, a;
        System.out.println("data 1:");
        do {
            g = cli.readInt("inserisci il giorno ");
            m = cli.readInt("inserisci il mese ");
            a = cli.readInt("inserisci l'anno ");
            try {
                this.c1 = new Calendario(g, m, a);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }while (this.c1==null);
        do {
            this.n = cli.readInt("inserisci il nomero di giorni da aggiungere a data 1 "); //input per il numero di giorni da aggiungere a data 1
        }while(n<=0);
    }
    public void leggi2(){     //input per la data 2
        int g, m, a;
        System.out.println("anno 2:");
        do {
            g = cli.readInt("inserisci il giorno ");
            m = cli.readInt("inserisci il mese ");
            a = cli.readInt("inserisci l'anno ");
            try {
                this.c2 = new Calendario(g, m, a);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }while (this.c2==null);
    }


    public static void main(String []args ){           //main
        Principale p=new Principale();
        p.svolgi();
    }

    public void svolgi(){   //funzione per svolgere il programma
        c1.sommaGiorni(this.n);
    }
}
