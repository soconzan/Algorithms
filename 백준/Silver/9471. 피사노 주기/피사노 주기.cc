#include <iostream>

using namespace std ;

long long pisano(long long m)
{
    long long prev, curr, tmp ;
    prev = 0 ;
    curr = 1 ;

    for (int i = 0 ; i < m * m ; ++i)
    {
        tmp = prev ;
        prev = curr ;
        curr = (curr + tmp) % m ;

        if ( prev == 0 && curr == 1 )
            return i + 1 ;
    }

    return tmp ;
}

int main()
{
    int p ;
    cin >> p ;

    while ( p-- )
    {
        int n, m ;
        cin >> n >> m ;
        cout << n << " " << pisano(m) << "\n" ;
    }
    
    return 0 ;
}