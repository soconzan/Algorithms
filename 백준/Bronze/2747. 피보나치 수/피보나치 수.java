import java.util.Scanner;

public class Main
{

    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt() ;

        System.out.println(fibonacciLoop(n));
    }

    public static int fibonacciLoop(int n)
    {
        int prev = 1 ;
        int prevPrev = 0 ;
        int tmp;

        for (int i = 2 ; i <= n ; i++)
        {
            tmp = prev;
            prev += prevPrev;
            prevPrev = tmp;
        }

        return prev;
    }

}