#include <iostream>

using namespace std ;

int main()
{
    long long n ;
    cin >> n ;

    n %= 15 * 100000 ; /* n > 2라면, k(10^n) = 15×10^(n-1) */

    int prev, curr, tmp ;
    prev = 0 ;
    curr = 1 ;

    for (int i = 0 ; i < n - 1 ; ++i)
    {
        tmp = prev ;
        prev = curr ;
        curr = (curr + tmp) % 1000000 ;
    }

    cout << curr ; 

    return 0 ;
}