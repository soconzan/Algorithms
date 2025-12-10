#include <iostream>
#include <cmath>

using namespace std ;

int main()
{
    int N ;
    cin >> N ;
    
    int arr[N] ;
    for (int i = 0 ; i < N ; ++i)
        cin >> arr[i] ;

    int left = 0, right = N - 1 ;
    int min = arr[left], max = arr[right] ;

    while ( left < right )
    {
        int tmp = arr[left] + arr[right] ;

        if ( abs(tmp) < abs(min + max) )
        {
            min = arr[left] ;
            max = arr[right] ;
        }

        if ( tmp < 0 )
            left++ ;
        else
            right-- ;
    }
    
    cout << min << " " << max ;

    return 0 ;
}