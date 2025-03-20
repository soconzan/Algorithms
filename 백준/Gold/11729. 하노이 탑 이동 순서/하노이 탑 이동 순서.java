import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Scanner;

import static java.lang.Math.pow;

public class Main {
    public static void main(String[] args) throws IOException
    {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        sc.close();

        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out)) ;
        System.out.print((long) pow(2, n) - 1);

        hanoi(n, 1, 3, 2, bw);

        bw.flush();
        bw.close();
    }

    public static void hanoi(int n, int from, int to, int via, BufferedWriter bw) throws IOException
    {
        if (n == 1)
        {
            bw.newLine();
            bw.write(from + " " + to) ;
        }
        else
        {
            hanoi(n - 1, from, via, to, bw) ;
            bw.newLine();
            bw.write(from + " " + to) ;
            hanoi(n - 1, via, to, from, bw) ;
        }
    }
}